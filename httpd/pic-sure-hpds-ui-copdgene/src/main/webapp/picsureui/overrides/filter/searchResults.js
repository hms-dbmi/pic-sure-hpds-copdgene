define(["output/outputPanel","picSure/queryBuilder", "filter/searchResult", "handlebars", "text!filter/searchResultTabs.hbs", "text!filter/searchResultSubCategories.hbs"],
		function(outputPanel, queryBuilder, searchResult, HBS, searchResultTabsTemplate, searchSubCatTemplate){
	var searchResults = {
			init : function(data, view, callback){
				this.searchResultTabs = HBS.compile(searchResultTabsTemplate);
				this.searchSubCategories = HBS.compile(searchSubCatTemplate);
				this.addSearchResultRows(data, view, callback);
			}
	};
	searchResults.addSearchResultRows = function(data, filterView, queryCallback){
		var keys = _.keys(data);
		$('.search-tabs', filterView.$el).append(this.searchResultTabs(keys));
		keys.forEach((key) => {
			var subCategoryNames = [];
			var categorySearchResultViews = [];
			$('a[data-toggle="tab"]').on('shown.bs.tab', function (e) {
				if(data[key]){
					_.each(data[key], function(value){
						var newSearchResultRow = new searchResult.View({
							queryCallback : queryCallback,
							model : new searchResult.Model(value),
							filterView: filterView
						});
						newSearchResultRow.render();
						// identify any sub categories, and save them

						//trim off leading and trailing slashes.  !! Assume all data starts and ends with '\' !!
						valuePath = value.data.substr(1, value.data.length-2).split('\\');;
						// do not add a sub category for leaf nodes.  
						if(valuePath.length > 2){
							//console.log('subcategory : ' + valuePath[1]);
							subCategoryNames.push(valuePath[1]);
						} else {
							//console.log("Leaf : " + value.data);
						}
						
						categorySearchResultViews.push(newSearchResultRow);
					});
					console.log("subCategories: " + subCategoryNames);
					data[key] = undefined;

			#		if(subCategoryNames.length > 1){
			#			$('#'+key+'.tab-pane', filterView.$el).append(this.searchSubCategories(subCategoryNames));
			#		}

					$('#'+key+'.tab-pane', filterView.$el).append(_.pluck(categorySearchResultViews, "$el"));
				}
			});

		});

		$("#"+_.first(keys)).addClass("active");
		$(".nav-pills li:first-child").addClass("active");
		$('a[data-label="'+_.first(keys)+'"]').trigger('shown.bs.tab')

	}.bind(searchResults);

	return searchResults;
});
