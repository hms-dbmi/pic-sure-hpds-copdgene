importScripts('/picsureui/webjars/underscorejs/1.8.3/underscore-min.js');
onmessage = function(event){
	var allConcepts = event.data[0];
	var tree = {
        text: "data",
        state: {
            open: true,
            disabled: true
        },
        children: []
    };
    Object.keys(allConcepts.results.phenotypes).forEach(function(concept) {
        var segments = concept.split("\\");
        var currentNode = tree;
        for (var x = 1; x < segments.length - 1; x++) {
            if (currentNode.children[_.findIndex(currentNode.children, function(child) {
                return child.text.includes(segments[x])
            })] === undefined) {
                var newNode = {
                    id: segments.slice(0, x + 1).join("\\") + "\\",
                    text: segments[x],
                    children: []
                };
                currentNode.children.push(newNode);
            }
            currentNode = currentNode.children[_.findIndex(currentNode.children, function(child) {
                return child.text.includes(segments[x])
            })];
        }
    });
    var cachedTree = JSON.parse(JSON.stringify(tree));
    postMessage(cachedTree);            
};