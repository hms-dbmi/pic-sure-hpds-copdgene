define(["common/spinner", "backbone", "handlebars", "text!filter/searchResult.hbs", "picSure/ontology"],
    function(spinner, BB, HBS, searchResultTemplate, ontology, dataTypeMapping){
        var searchResultModel = BB.Model.extend({

        });
        var template = HBS.compile(searchResultTemplate);
        var searchResultView = BB.View.extend({
            initialize: function(opts){
                this.filterView = opts.filterView;
                this.queryCallback = opts.queryCallback;
		this.updateAnyValueFilter = this.updateAnyValueFilter.bind(this);
            },
            tagName: "div",
            className: "picsure-border-frame",
            events: {
                "click .autocomplete-term" : "onClick",
                "click .pui-elipses" : "toggleTree",
            },
	    anyValueSelect: function (event, data){
		//should probably start a spinner here

		console.log(event);
		console.log(data);
		
		// copy this code from the onClick(), as that does similar things; instead of just reading the required info
		// from the filter object, though we need to make a call to the back end to get a complete list of categories
		// and then add them in to the special 'anyValueOf' filter.  Then we want to immediately run the query, as the
  		// user can't change or select the ctegory values.

 
		console.log("Category Name clicked");
                this.filterView.reset();
                this.filterView.model.set("inclusive", $('.filter-qualifier-btn', this.filterView.$el).text().trim() === "Must Have");

                var value = $('.autocomplete-term', this.$el);
                if(value){
                    var searchValue = data.pui + "\\" + data.textValue;

		    var deferredSearchResults = $.Deferred();
		    ontology.autocomplete(searchValue, deferredSearchResults.resolve);
		    $.when(deferredSearchResults).then(this.updateAnyValueFilter);


		    var valueType = "ANYVALUEOF";
                    this.filterView.model.set("searchTerm", searchValue);
                    this.filterView.model.set("searchValue", "Any record with a value in the tree: " + searchValue);
                    this.filterView.model.set("category", this.model.get("category"));
                    this.filterView.model.set("valueType", valueType);
                }
                this.filterView.model.attributes.constrainParams.attributes.constrainByValue=true;
	    },
	    updateAnyValueFilter: function (result) {
		console.log("Update any value");
		this.filterView.model.set("anyValueCategories", _.pluck(result.suggestions, "data"));
                    this.filterView.render();
	
                    //adding 'saved' class swaps visibility of input field and output/edit buttons
                    this.filterView.$el.addClass("saved");
		  // clear any old filter data
                this.filterView.updateConstrainFilterMenu();	
	    },
            toggleTree: function () {
                var isNotStandardI2b2 = this.model.get("data").indexOf("~") == -1;
                var throwawaySegments = 0;
                var puiSegments = this.model.get("tooltip").split("\\");
                var dataPuiSegments = this.model.get("tooltip").split("\\");
                var j = dataPuiSegments.length;
                var finalTree = [];
                var lastNode;
                for (var i = puiSegments.length - 1; i >= throwawaySegments; i--){
                    var puiSegment = puiSegments[i];

                    if (puiSegment.length > 0) {
                        var currentNode = {};
                        currentNode['text'] = puiSegment;
                        currentNode['nodePui'] = dataPuiSegments.slice(0, j - 1).join('/');
                        var nodeArray = [];
                        if (lastNode) {
                            nodeArray.push(lastNode);
                        }
                        currentNode['nodes'] = nodeArray;
                        lastNode = currentNode;
                    }
                    j--;
                }
                finalTree.push(lastNode);
                $('.node-tree-view', this.$el).treeview({
                    backColor: "#ffffff",
                    expandIcon: 'glyphicon glyphicon-chevron-down',
                    collapseIcon: 'glyphicon glyphicon-chevron-right',
                    data: finalTree
                });
                $('.node-tree-view', this.$el).treeview('expandAll');
                $('.node-tree-view', this.$el).on('nodeSelected', function(event, data) {
                    var newData = {
                        pui: data.nodePui.replace("/","\\"),
                        textValue: data.text.trim()
                    }
                    this.anyValueSelect(event, newData);

                }.bind(this));
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
