define(["filter/filterList", "header/header", "footer/footer", "text!../settings/settings.json", "output/outputPanel", "picSure/resourceMeta", "jquery", "auth/login", "handlebars", "text!common/mainLayout.hbs", "treeview", "common/styles"],
		function(filterList, header, footer, settings, output, resourceMeta, $, login, HBS, layoutTemplate){
	return function(){
		$.ajax({
                        url: window.location.origin + '/picsure/search/' + JSON.parse(settings).picSureResourceId,
                        data: JSON.stringify({"query":"foobar"}),
                        headers: {"Authorization": "Bearer " + JSON.parse(sessionStorage.getItem("session")).token},
                        contentType: 'application/json',
                        type:'POST',
                        success: function(){
				console.log("login successful");
				$.ajaxSetup({
					error: function(event, jqxhr){
						console.log(jqxhr);
					}
				});
				$('body').append(HBS.compile(layoutTemplate)(JSON.parse(settings)));
				var headerView = header.View;
				headerView.render();
				$('#header-content').append(headerView.$el);
				var footerView = footer.View;
				footerView.render();
				$('#footer-content').append(footerView.$el);
				filterList.init();
				var outputPanel = output.View;
				outputPanel.render();
				$('#query-results').append(outputPanel.$el);
			},
                        error: function(){
				login.showLoginPage();
			},
                        dataType: "json"
                 });
	}
});
