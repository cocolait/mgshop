$("body").keyup(function(e){
	var ev=e || window.event;
	if(ev.keyCode==13){
		$("#login").trigger('click');
	}
});

$("#login").click(function(){
		var uname=$.trim($("#user").val());
		var password=$.trim($("#pw").val());
		if(uname == ''){
			$("#error").show();
			$("#error").html('请您填写账号哦 ^_^');
			return false;
		}
		if(password == ''){
			$("#error").show();
			$("#error").html('请您填写密码哦 ^_^');
			return false;
		}
		var data = {
				'uname':uname,
				'password':password
		}
		//异步处理登录
		$.post(loginUrl,data,function(data){
				if (data.status) {
						$("#error").hide();
						hd_alert({
					            message: data.msg,//显示内容
					            timeout: 1,//显示时间
					            success: function () {
					            		location.href=IndexUrl;
					            }
					      });
				}else{
						$("#error").show();
						$("#error").html(data.msg);
				}
		},'json');
});