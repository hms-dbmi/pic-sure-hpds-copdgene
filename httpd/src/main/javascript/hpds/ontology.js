define(["underscore", "text!../settings/settings.json", "picSure/resourceMeta"], function(_, settings, resourceMeta){
	/*
	 * A function that takes a PUI that is already split on forward slash and returns
	 * the category value for that PUI.
	 */
	var extractCategoryFromPui = function(puiSegments){
		return puiSegments[0];
	};

	/*
	 * A function that takes a PUI that is already split on forward slash and returns
	 * the parent value for that PUI.
	 */
	var extractParentFromPui = function(puiSegments){
		return puiSegments[puiSegments.length - 2];
	};

	var mapResponseToResult = function(query, response){
		var result = {};
		console.log(response);
		result.suggestions = [];
		result.suggestions = result.suggestions.concat(_.map(response.phenotypes, entry => {
			var puiSegments = entry.name.split("\\").filter(function(seg){return seg.length > 0;});
			return {
				value : puiSegments[puiSegments.length - 1],
				data : entry.name,
				category : extractCategoryFromPui(puiSegments).replace(/[\W_]+/g,"_"),
				tooltip : entry.name,
				columnDataType : entry.categorical ? "CATEGORICAL" : "CONTINUOUS",
						metadata:  entry,
						parent : extractParentFromPui(puiSegments)
			};
		}).sort(function(a, b){
                        var indexOfTerm = a.value.toLowerCase().indexOf(query) - b.value.toLowerCase().indexOf(query);
                        var differenceInLength = a.value.length - b.value.length;
//                      return indexOfTerm == 0 ? indexOfTerm + differenceInLength : indexOfTerm;
                        return (indexOfTerm*1000) + differenceInLength;
                }).concat(_.map(response.genes, entry => {
                        var puiSegments = ["Genes", entry.name];//entry.name.split("\\").filter(function(seg){return seg.length > 0;});
                        return {
                                value : entry.name,
                                data : entry.name,
                                category : "Genes",
                                tooltip : entry.name,
                                columnDataType : "VARIANT",
                                                metadata:  entry,
                                                parent : "Chromosome " + entry.chr
                        };
                }).sort(function(a, b){
			var indexOfTerm = a.value.toLowerCase().indexOf(query) - b.value.toLowerCase().indexOf(query);
			var differenceInLength = a.value.length - b.value.length;
//			return indexOfTerm == 0 ? indexOfTerm + differenceInLength : indexOfTerm;
			return (indexOfTerm*1000) + differenceInLength;
		})).concat(_.map(_.keys(response.info), key => {
						var entry = response.info[key];
                        return {
                                value : entry.description,
                                data : entry.description,
                                category : key,
                                tooltip : entry.description,
                                columnDataType : "INFO",
                                                metadata:  entry,
                                                parent : "Variant Info"
                        };
                }).sort(function(a, b){
			var indexOfTerm = a.value.toLowerCase().indexOf(query) - b.value.toLowerCase().indexOf(query);
			var differenceInLength = a.value.length - b.value.length;
//			return indexOfTerm == 0 ? indexOfTerm + differenceInLength : indexOfTerm;
			return (indexOfTerm*1000) + differenceInLength;
		})));
		if(result.length > 1000){
			result = result.slice(0,999);
		}
		return result;
	};

	var searchCache = {};

	var dictionary = function(query, success, error){
		 return $.ajax({
		 	url: window.location.origin + '/picsure/search/' + JSON.parse(settings).picSureResourceId,
		 	data: JSON.stringify({"query":query}),
		 	headers: {"Authorization": "Bearer " + JSON.parse(sessionStorage.getItem("session")).token},
		 	contentType: 'application/json',
		 	type:'POST',
		 	success: success,
		 	error: error,
		 	dataType: "json"
		 });
	};

	var autocomplete = function(query, done){
		return dictionary(
				query,
				function(response){
					var result = mapResponseToResult(query, response.results);
					searchCache[query.toLowerCase()]=result;
					done(result);
				}.bind({done:done}),
				function(response){
					if(response.status===401){
						localStorage.clear();
						window.location = "/";
					}else{
						searchCache[query.toLowerCase()]=[];
						done({suggestions:[]});
					}
				})
	}.bind({resourceMeta:resourceMeta});

	var tree = function(consumer, crossCounts){
		dictionary("\\", function(allConcepts){
			var tree = {
					text:"data",
					state:{
						open:true,
						disabled:true
					},
					children:[]
			};
			_.each(_.keys(allConcepts.results.phenotypes), function(concept){
				var segments = concept.split("\\");
				var currentNode = tree;
				for(var x = 1;x<segments.length - 1;x++){
					if(currentNode.children[_.findIndex(currentNode.children, function(child){return child.text.includes(segments[x])})] === undefined){
						var newNode = {
								id:segments.slice(0,x+1).join("\\") + "\\",
								text:segments[x],
								children: []
						};
						currentNode.children.push(newNode);
					}
					currentNode = currentNode.children[_.findIndex(currentNode.children, function(child){return child.text.includes(segments[x])})];
				}
			});

			var counts = function(tree){
				var total = 0;
				var folderCount = 0;
				_.each(tree.children, function(child){
					var count = counts(child);
					if(count>0){
						folderCount++;
					}
					total += count;
					if(count==0){
//						if(crossCounts !== undefined){
//							child.text += " (" + crossCounts[child.id] + " observations in subset)";								
//						}else{
//							child.text += " (" + allConcepts.results[child.id].observationCount + " observations)";
//						}
					}else{
						child.text += " (" + (count == 0 ? 1 + " concept)": count + " concepts)") ;						
					}
				});
				return total + tree.children.length - folderCount;
			}
			counts(tree);
			consumer(tree);
		});
	};

	var verifyPathsExist = function(paths, targetResource, done){
		if(!localStorage.getItem("id_token")){
			done(false);
			var resolved = $.Deferred();
			resolved.resolve();
			return resolved;
		}
		return $.ajax({
		 	url: window.location.origin + '/picsure/search/' + JSON.parse(settings).picSureResourceId,
		 	headers: {"Authorization": "Bearer " + JSON.parse(sessionStorage.getItem("session")).token},
			type: 'POST',
			contentType: 'application/json',
			data: JSON.stringify({"query":paths[0]}),
			success: function(response){
				done(true);
			},
			error: function(response){
				done(false);
			}
		});
	};

	return {
		dictionary: dictionary,
		tree: tree,
		autocomplete: autocomplete,
		verifyPathsExist: verifyPathsExist
	};
});
