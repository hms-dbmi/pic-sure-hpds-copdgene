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
			"picSure/ontology" : "hpds/ontology",
			"filter/searchResult" : "hpds/searchResult",
			"filter/searchResults" : "hpds/searchResults",
			"filter/searchResultTabs" : "hpds/searchResultTabs",
			"output/outputPanel" : "hpds/outputPanel",
			"styles" : "hpds/styles",
			"filter/filter" : "hpds/filter",
			"common/startup" : "hpds/startup",
			"common/mainLayout" : "hpds/mainLayout",
			"picSure/queryBuilder" : "hpds/queryBuilder",
			"filter/filterList":"hpds/filterList",
			"filter/constrainFilterMenu":"hpds/constrainFilterMenu",
			"filter/constrainFilterMenuCategories":"hpds/constrainFilterMenuCategories",
			"filter/constrainFilterMenuGenetics":"hpds/constrainFilterMenuGenetics",
			"filter/constrainFilterMenuVariantInfo":"hpds/constrainFilterMenuVariantInfo",
			"jstree":"webjars/jstree/3.3.7/jstree",
//			"auth/login":"hpds/login"
		},
		shim: {
			"jstree": {
				deps: ["jquery"]
			}
		}
	});	
});
