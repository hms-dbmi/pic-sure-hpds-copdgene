define([],function(){
	require.config({
		paths: {
			/*
			 *  Any module in the app can be overridden here. Just add a path entry for
			 *  the desired module and point it at your new module.
			 *
			 *  This is used in the GRIN project to override the queryBuilder enabling
			 *  support for the gNOME PIC-SURE RI.
			 *
			 *  This must be a valid requirejs config call.
			 *
			 *  For example to override the queryBuilder and the login page:
			 *  
			 *  "picSure/queryBuilder" : "path/in/src/main/javascript/newQueryBuilder",
			 *  "common/login" : "path/in/src/main/javascript/newLogin"
			 */

			"header/header" : "overrides/floatheader/floatheader",
			"filter/constrainFilterMenu" : "overrides/filter/constrainFilterMenu",
			"filter/constrainFilterMenuCategories" : "overrides/filter/constrainFilterMenuCategories",
			"filter/filter" : "overrides/filter/filter",
			"filter/searchHelpTooltip" : "overrides/filter/searchHelpTooltip", 
			"filter/searchResult" : "overrides/filter/searchResult",
			"filter/searchResults" : "overrides/filter/searchResults",
			"filter/searchResultTabs" : "overrides/filter/searchResultTabs",
			"picSure/queryBuilder" : "overrides/query/queryBuilder",
			"picSure/ontology" : "overrides/picSure/ontology",
			"output/dataSelection" : "overrides/output/dataSelection",
			"output/outputPanel" : "overrides/output/outputPanel"
		}
	});
});
