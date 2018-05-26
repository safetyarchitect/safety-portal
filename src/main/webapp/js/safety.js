var SS = SAFETY = {
	checkLogin : function(){
		var _ticket = $.cookie("SAN_SAFER");
		if(!_ticket){
			return ;
		}
		$.ajax({
			url : "http://localhost:8083/safety-sso/user/token/" + _ticket,
			dataType : "jsonp",
			type : "GET",
			success : function(data){
				if(data.status == 200){
					/*var username = data.data.username;*/
					var personName = data.data.personName;
					var html = personName + "，欢迎登录信息平台！<a href=" + "http://localhost:8083/safety-sso/user/logout/" + _ticket + ">[退出]</a>";
					$("#loginbar").html(html);
				}
			}
		});
	}
}

$(function(){
	// 查看是否已经登录，如果已经登录查询登录信息
	SS.checkLogin();
});