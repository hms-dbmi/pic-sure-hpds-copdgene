define(["text!../settings/settings.json","common/spinner", "output/dataSelection", "text!output/outputPanel.hbs","picSure/resourceMeta", "picSure/queryCache", "backbone", "handlebars", "overrides/outputPanel"],
		function(settings, spinner, dataSelection, outputTemplate, resourceMeta, queryCache, BB, HBS, overrides){
	var outputModelDefaults = {
			totalPatients : 0,
			spinnerClasses: "spinner-medium spinner-medium-center ",
			spinning: false,
			resources : {}
	};
	_.each(resourceMeta, (resource) => {
		outputModelDefaults.resources[resource.id] = {
				id: resource.id,
				name: resource.name,
				patientCount: 0,
				spinnerClasses: "spinner-center ",
				spinning: false
		};
	});
	var outputModel = BB.Model.extend({
		defaults: outputModelDefaults,
		spinAll: function(){
			this.set('spinning', true);
			this.set('queryRan', false);
		}
	});

	var mapPuiForResource = (typeof overrides.mapPuiForResource == 'function') ?
			overrides.mapPuiForResource
			: function(pui, picsureInstance){
				return pui.replace(/(\/[\w-]+){4}/, picsureInstance.basePui);
			};

			var outputView = overrides.viewOverride ? overrides.viewOverride : BB.View.extend({
				initialize: function(){
					this.template = HBS.compile(outputTemplate);
					overrides.renderOverride ? this.render = overrides.renderOverride.bind(this) : undefined;
					overrides.update ? this.update = overrides.update.bind(this) : undefined;
					HBS.registerHelper("outputPanel_obfuscate", function(count){
						if(count < 10 && false){
							return "< 10";
						} else {
							return count;
						}
					});
				},
				totalCount: 0,
				tagName: "div",
				update: function(incomingQuery){
//					this.model.set("totalPatients",0);

					//this.model.spinAll();
					//this.render();

								
					//we will never resolve this 'Deferred'; but instead manually stop the spinner (we need to update the html for patient count anyway)		
					spinner.medium($.Deferred(), "#patient-count");
					
					// make a safe deep copy of the incoming query so we don't modify it
					var query = JSON.parse(JSON.stringify(incomingQuery));
					console.log(query);

					query.resourceUUID = JSON.parse(settings).picSureResourceId;
					query.resourceCredentials = {};
					query.query.expectedResultType="COUNT";
					this.model.set("query", query);

					var dataCallback = function(result){
						this.model.set("totalPatients", parseInt(result));
						$("#patient-count", this.$el).html(parseInt(result));
					}.bind(this);

					var errorCallback = function(message){
						this.model.set("spinning", false);
                                                this.model.set("queryRan", true);
						//re render here because we want to clear out any old data after an error
                                                this.render();
						$("#patient-count").html(message);
					}.bind(this);

					$.ajax({
					 	url: window.location.origin + "/picsure/query/sync",
					 	type: 'POST',
					 	headers: {"Authorization": "Bearer " + JSON.parse(sessionStorage.getItem("session")).token},
					 	contentType: 'application/json',
					 	data: JSON.stringify(query),
					 	success: function(response){
					 		dataCallback(response);
								if(!this.dataSelection){
									this.dataSelection = new dataSelection({query:query});
									$("#concept-tree-div",this.$el).append(this.dataSelection.$el);
								} else {
									this.dataSelection.updateQuery(query);
								}
								this.dataSelection.render();
						}.bind(this),
					 	error: function(response){
							if (response.status === 401) {
								localStorage.clear();
								window.location = "/";
							} else {
								response.responseText = "<h4>"
									+ overides.outputErrorMessage ? overides.outputErrorMessage : "There is something wrong when processing your query, please try it later, if this repeats, please contact admin."
									+ "</h4>";
						 		errorCallback(response.responseText);//console.log("error");console.log(response);
							}
						}
					});
				},
				render: function(){
					var context = this.model.toJSON();
					this.$el.html(this.template(Object.assign({},context , overrides)));
					if(this.dataSelection){
						this.dataSelection.setElement($("#concept-tree-div",this.$el));
						this.dataSelection.render();
					}
				}
			});
			return {
				View : new (overrides.viewOverride ? overrides.viewOverride : outputView)({
					model: new (overrides.modelOverride ? overrides.modelOverride : outputModel)()
				})
			}
});
