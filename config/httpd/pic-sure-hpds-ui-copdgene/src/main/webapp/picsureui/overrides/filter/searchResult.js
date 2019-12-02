define(["common/spinner", "backbone", "handlebars", "text!filter/searchResult.hbs", "picSure/ontology"],
    function(spinner, BB, HBS, searchResultTemplate, ontology, dataTypeMapping){
        var searchResultModel = BB.Model.extend({

        });
        var template = HBS.compile(searchResultTemplate);
        var searchResultView = BB.View.extend({
            initialize: function(opts){
                this.filterView = opts.filterView;
                this.queryCallback = opts.queryCallback;
		this.updateAnyRecordFilter = this.updateAnyRecordFilter.bind(this);
            },
            tagName: "div",
            className: "picsure-border-frame",
            events: {
                "click .autocomplete-term" : "onClick",
                "click .pui-elipses" : "toggleTree",
            },
	    anyRecordSelect: function (event, data){
		//should probably start a spinner here
		
		// copy this code from the onClick(), as that does similar things; instead of just reading the required info
		// from the filter object, though we need to make a call to the back end to get a complete list of categories
		// and then add them in to the special 'anyRecordOf' filter.  Then we want to immediately run the query, as the
  		// user can't change or select the category values.
 
		console.log("Category Name clicked");
                this.filterView.reset();
                this.filterView.model.set("inclusive", $('.filter-qualifier-btn', this.filterView.$el).text().trim() === "Must Have");

                var value = $('.autocomplete-term', this.$el);
                if(value){
                    var searchValue = data.pui.join("\\") + "\\" + data.text.trim();

		    var deferredSearchResults = $.Deferred();
		    ontology.autocomplete(searchValue, deferredSearchResults.resolve);
		    $.when(deferredSearchResults).then(this.updateAnyRecordFilter);

		    var valueType = "ANYRECORDOF";
                    this.filterView.model.set("searchTerm", searchValue);
                    this.filterView.model.set("searchValue", searchValue);
                    this.filterView.model.set("category", this.model.get("category"));
                    this.filterView.model.set("valueType", valueType);
                }
		//we do not have any values to constrain. This is used later when building the query object
                this.filterView.model.attributes.constrainParams.attributes.constrainByValue=false;
	    },
	    updateAnyRecordFilter: function (result) {
		console.log("Update any record");
		this.filterView.model.set("anyRecordCategories", _.pluck(result.suggestions, "data"));
                this.filterView.render();
	
                    //adding 'saved' class swaps visibility of input field and output/edit buttons
                    this.filterView.$el.addClass("saved");
		  // clear any old filter data
                this.filterView.updateConstrainFilterMenu();	
                //fire off the filter's select logic immediately, because there are no constraints to configure for this filter.
                this.filterView.onSelect();
	    },
            toggleTree: function () {
                var puiSegments = this.model.get("tooltip").split("\\");
                var finalTree;
                var prevNode;
                for (var i = 0 ; i < puiSegments.length; i++){
                    var puiSegment = puiSegments[i];

                    if (puiSegment.length > 0) {
                        var currentNode = {};
                        currentNode['text'] = puiSegment;
                        currentNode['pui'] = puiSegments.slice(0, i);
                      
                        if (prevNode) {
                            prevNode['nodes'] = [currentNode];
                        } else {
			    finalTree = [currentNode];
			}
                   
                        prevNode = currentNode;
                    }
                }
                
		$('.node-tree-view', this.$el).treeview({
                    backColor: "#ffffff",
                    expandIcon: 'glyphicon glyphicon-chevron-down',
                    collapseIcon: 'glyphicon glyphicon-chevron-right',
                    data: finalTree
                });
                $('.node-tree-view', this.$el).treeview('expandAll');
                $('.node-tree-view', this.$el).on('nodeSelected', this.anyRecordSelect.bind(this));
                $('.node-tree-view', this.$el).toggle()
            },
            onClick : function(event, data){
                console.log("Search result clicked");
                this.filterView.reset();
                this.filterView.model.set("inclusive", $('.filter-qualifier-btn', this.filterView.$el).text().trim() === "Must Have");

                var value = $('.autocomplete-term', this.$el);
                if(value){
                    var pui = data ? data.pui : this.model.get("data");
                    var searchValue = data ? data.textValue : this.model.get("value");
                    if (this.model.get("metadata") != null) {
                        var dataType = this.model.get("columnDataType")==="CONTINUOUS"?"Float":"String";
                        this.filterView.model.set("metadata", this.model.get("metadata").ValueMetadata);
                    }

                    if(dataType) {
                        var valueType = this.getValueType(dataType)
                    } else {
                        var valueType = "NODATATYPE";
                    }

                    this.filterView.model.set("searchTerm", pui);
                    this.filterView.model.set("concept", this.model.attributes)
                    this.filterView.model.set("searchValue", searchValue);
                    this.filterView.model.set("category", this.model.get("category"));
                    this.filterView.model.set("valueType", valueType);

                    this.filterView.render();
                    this.filterView.$el.addClass("saved");
                }
                this.filterView.model.attributes.constrainParams.attributes.constrainByValue=true;
                this.filterView.updateConstrainFilterMenu();
//                if(this.model.attributes.columnDataType==="CATEGORICAL"){
//                    $('.constrain-apply-btn', this.filterView.$el).click();
//                }
            },
            getValueType : function(dataType)
            {
                var ValueTypes = {};
                /* Start Configuration. Note: be careful to keep trailing commas after each parameter */
                ValueTypes.type = {
                    "PosFloat": "NUMBER",
                    "PosInteger": "NUMBER",
                    "Float": "NUMBER",
                    "Integer": "NUMBER",
                    "String": "STR",
                    "largestring": "LRGSTR",
                    "Enum": "ENUM",
                    "DEFAULT": "NUMBER"
                }

                if(!ValueTypes.type.hasOwnProperty(dataType)) {
                    var valuetype = ValueTypes.type["DEFAULT"];
                } else {
                    var valueType = ValueTypes.type[dataType];
                }
                return valueType;
            },
            render: function(){
                this.$el.html(template(this.model.attributes));
            }
        });
        return {
            View : searchResultView,
            Model : searchResultModel
        };
    });
