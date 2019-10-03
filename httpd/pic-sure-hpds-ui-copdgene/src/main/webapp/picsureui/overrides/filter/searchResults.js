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
		var compiledSubCategoryTemplate = this.searchSubCategories;
		$('.search-tabs', filterView.$el).append(this.searchResultTabs(keys));
		keys.forEach((key) => {
			var subCategories = [];
			var categorySearchResultViews = [];
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
					subCategoryName = valuePath[1];
					if(subCategories[subCategoryName] ){
						subCategories[subCategoryName] = subCategories[subCategoryName] + 1;
					} else {
						subCategories[subCategoryName] = 1;
					}
				}
				
				categorySearchResultViews.push(newSearchResultRow);
			});
			console.log("subCategories: " + subCategories);
			data[key] = undefined;

			//save this tab object so we don't keep looking it up
			var tabPane = $('#'+key+'.tab-pane', filterView.$el)

			if(_.keys(subCategories).length > 1){
				$(".result-subcategories-div", tabPane).append(compiledSubCategoryTemplate(_.keys(subCategories)));
				//bootstap.js is used for the top-level category pills; here we are keeping a bit of the naming scheme
				// need to roll our own logic so that the 'all results' sub-category tab works as expected
				$(".sub-nav-pills li", tabPane).click(function(event){
					event.preventDefault();
					$(event.target.parentElement).addClass("active")
					$(event.target.parentElement).siblings().removeClass("active");
					
					if(event.target.text == "All Results"){
						_.each(categorySearchResultViews, function(result){
							result.$el.show();
						});
					} else {
						_.each(categorySearchResultViews, function(result){
							if(result.model.attributes.parent == event.target.text){
								result.$el.show();
							} else {
								result.$el.hide();
							}
						});
					}
				});
			}


			$(".search-result-list", tabPane).append(_.pluck(categorySearchResultViews, "$el"));

			

		});

		$("#"+_.first(keys)).addClass("active");
		$(".nav-pills li:first-child").addClass("active");

	}.bind(searchResults);

	return searchResults;
});
