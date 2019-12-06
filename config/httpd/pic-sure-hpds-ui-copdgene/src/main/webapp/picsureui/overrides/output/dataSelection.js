define(["common/spinner", "backbone", "handlebars", "text!output/dataSelection.hbs", "jstree", "picSure/ontology", "picSure/queryCache", "text!../settings/settings.json" ], 
	function(spinner, BB, HBS, template, jstree, ontology, queryCache, settings){
		return BB.View.extend({
			template: HBS.compile(template),
			settings: JSON.parse(settings),
			initialize: function(opts){
				this.selectedFields = [];
				this.updateQuery(opts.query);
			},
			events:{
				"click #prepare-btn" : "prepare",
				"prepare" : "prepare",
				"click #copy-queryid-btn" : "copyQueryId"
			},
			updateQuery: function(query){
				this.query = query;
				this.selectedFields = _.uniq(this.selectedFields.concat(query.query.requiredFields)
					.concat(query.fields)
					.concat(_.keys(query.query.categoryFilters))
					.concat(_.keys(query.query.numericFilters)));
			},
			prepare: function(){
				$("#download-btn", this.$el).attr("href", "");
				$("#download-btn", this.$el).addClass('hidden');
				$("#download-btn", this.$el).off('click');
				$("#copy-queryid-btn", this.$el).addClass('hidden');
				var spinTrigger = $.Deferred();
				spinner.large(spinTrigger, "#download-spinner", "download-spinner");				

				var query = {};
				query = JSON.parse(JSON.stringify(this.query));
				query.query.fields = _.filter($('#concept-tree', this.$el).jstree().get_selected(), function(child){
					var children = $('#concept-tree', this.$el).jstree().get_node(child).children;
					return children == undefined || children.length === 0;
				}.bind(this))
				query.query.expectedResultType="DATAFRAME";

				var bbView = this;
				var queryUrlFragment = '';
				var interval = 0;
				(function updateStatus(){
					$.ajax({
						url: window.location.origin + "/picsure/query" + queryUrlFragment,
						type: 'POST',
						headers: {"Authorization": "Bearer " + JSON.parse(sessionStorage.getItem("session")).token},
						contentType: 'application/json',
						dataType: 'text',
						data: JSON.stringify(query),
						context: bbView,
						success: function(response){
							respJson = JSON.parse(response);
							//update UI elements
							$('#resource-id-display', this.$el).html("QueryId: <span id='queryid-span'>" + respJson.picsureResultId + "</span><br/>Status: " + respJson.status);

							// Break out of this process if there is no data, or the query is over
							status = respJson.status;
							if( !status || status == "ERROR") {
								spinTrigger.resolve();
								return;
							} else if ( status == "AVAILABLE" ){
								spinTrigger.resolve();
								$("#download-btn", this.$el).removeClass('hidden');
								$("#download-btn", this.$el).click(function(){this.downloadData(respJson.picsureResultId, query)}.bind(this));
								$("#copy-queryid-btn", this.$el).removeClass('hidden');
								return;
							}

							//check again, but back off at 2, 4, 6, 8... second intervals (30s max)
							interval = Math.min(interval + 2000, 30000);
							//hit the status endpoint after the first request
							queryUrlFragment = "/" + respJson.picsureResultId + "/status";
							setTimeout(updateStatus, interval);
						},
						error: function(response){
							$('#resource-id-display', this.$el).html("Error running query, Please see logs");
							console.log("error preparing async download: ");
							console.log(response);
						}
					});
				}());
			},
			downloadData: function(queryId, query){
				$.ajax({
					url: window.location.origin + "/picsure/query/" + queryId + "/result",
					type: 'POST',
					headers: {"Authorization": "Bearer " + JSON.parse(sessionStorage.getItem("session")).token},
					contentType: 'application/json',
					dataType: 'text',
					data: "{}",
					success: function(response){
						responseDataUrl = URL.createObjectURL(new Blob([response], {type: "octet/stream"}));
						$("#download-btn", this.$el).off('click');
						$("#download-btn", this.$el).attr("href", responseDataUrl);
						console.log("done preparing");
						//now the download button will return the data from memory; 
						// but we don't want to make the user click twice;  lets click for them!
						$("#download-btn", this.$el)[0].click();
					}.bind(this),
					error: function(response){
						console.log("error preparing download : ");
						console.log(response);
					}.bind(this)
				})
			}.bind(this),
			copyQueryId: function(){
				//this will copy the query ID to the user's clipboard
				var sel = getSelection();
				var range = document.createRange();

				// this is for supporting chrome, since chrome will look for value instead of textContent
				document.getElementById("queryid-span").value
					= document.getElementById("queryid-span").textContent;
				range.selectNode(document.getElementById("queryid-span"));
				sel.removeAllRanges();
				sel.addRange(range);
				document.execCommand("copy");
			},
			updateCounts: _.debounce(function(){
				$("#concept-tree", this.$el).on("before_open.jstree", function(event, data){
					var query = {};
					query = JSON.parse(JSON.stringify(this.query));
					query.query.expectedResultType="CROSS_COUNT";
					query.query.crossCountFields = _.filter(data.node.children, function(child){
						var children = $('#concept-tree', this.$el).jstree().get_node(child).children;
						return children == undefined || children.length === 0;
					}.bind(this));
					$.ajax({
						url: window.location.origin + "/picsure/query/sync",
						type: 'POST',
						headers: {"Authorization": "Bearer " + JSON.parse(sessionStorage.getItem("session")).token},
						contentType: 'application/json',
						data: JSON.stringify(query),
						success: function(crossCounts){
							_.each(query.query.crossCountFields, function(child){
								var childNode = $('#concept-tree', this.$el).jstree().get_node(child);
								childNode.text = childNode.text.replace(/<b\>.*<\/b>/,'') +  " <b>(" + crossCounts[child] + " observations in subset)</b>";
								$('#concept-tree', this.$el).jstree().redraw_node(child);
							}.bind(this));
						}.bind(this),
						error: console.log
					});
				}.bind(this));
				$("#concept-tree", this.$el).on("check_node.jstree", function(node, selected, event){
					this.selectedFields.push(node.id);
				}.bind(this));
				$("#concept-tree", this.$el).on("uncheck_node.jstree", function(node, selected, event){
					this.selectedFields = _.without(this.selectedFields(node.id));
				}.bind(this));
			}, 100),
			render: function(){
				this.$el.html(this.template());

				spinner.small(
					// ontology.tree builds a tree of json objects, and passes it to the innter function which is
					// responsible for rendering the elements.
					ontology.tree(function(tree){
						//order export tree according to settings category selections
						//look up the category indices once, so we don't spin through this array constantly.
						var catIndices = {};
						_.each(this.settings.categorySearchResultList, function(category, index){
							catIndices[category] = index;
						});
						tree.children = _.sortBy(tree.children, function(entry){
							//entry.id starts and ends with '\'
							entryId = entry.id.substr(1, entry.id.length - 2); 
							catIndex = catIndices[entryId];
							
							return (catIndex == undefined ? 999 : catIndex)  + entry.text;
						});
						var conceptTree = $("#concept-tree", this.$el).jstree({
							core:{
								data:tree,
							},
							"checkbox" : {
								"keep_selected_style" : false
							},
							"plugins":["checkbox"]
						});
							$("#concept-tree", this.$el).on("before_open.jstree", function(event, data){
								var query = {};
								query = JSON.parse(JSON.stringify(this.query));
								query.query.expectedResultType="CROSS_COUNT";
								query.query.crossCountFields = _.filter(data.node.children, function(child){
									var children = $('#concept-tree', this.$el).jstree().get_node(child).children;
									return children == undefined || children.length === 0;
								}.bind(this));
								$.ajax({
									url: window.location.origin + "/picsure/query/sync",
									type: 'POST',
									headers: {"Authorization": "Bearer " + JSON.parse(sessionStorage.getItem("session")).token},
									contentType: 'application/json',
									data: JSON.stringify(query),
									success: function(crossCounts){
										_.each(query.query.crossCountFields, function(child){
											var childNode = $('#concept-tree', this.$el).jstree().get_node(child);
											childNode.text = childNode.text.replace(/<b\>.*<\/b>/,'') +  " <b>(" + crossCounts[child] + " observations in subset)</b>";
											$('#concept-tree', this.$el).jstree().redraw_node(child);
										}.bind(this));
										$('#prepare-btn', this.$el).removeClass('hidden');
									}.bind(this),
									error: console.log
								});
							}.bind(this));
							$("#concept-tree", this.$el).on("check_node.jstree", function(node, selected, event){
								this.selectedFields.push(node.id);
							}.bind(this));
							$("#concept-tree", this.$el).on("uncheck_node.jstree", function(node, selected, event){
								this.selectedFields = _.without(this.selectedFields(node.id));
							}.bind(this));
							_.delay(function(){$('.jstree-node[aria-level=1] > .jstree-icon').click();}, 1000);
						}.bind(this))
					, "#select-spinner"
					, "select-spinner"
				);
			}
		});
});
