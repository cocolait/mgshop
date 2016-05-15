$(function(){
		//点击更换验证码
		var src  = $("#code-img").attr('src');
		$("#code-img").click(function(){
			 var newSrc = src + '&mt' + Math.random();
			 $("#code-img").attr('src',newSrc);
		});
		
		//注册表单
		$("#regForm").submit(function(){
			var account = $("input[name=account]").val();
			var password = $("input[name=password]").val();
			var pwd = $("input[name=pwd]").val();
			var code = $("input[name=code]").val();
			var nickname = $("input[name=nickname]").val();
			
			if (account == '') {
				$(".error_tip").show();
				$(".error_tip").html('邮箱不能为空^_^');
				return false;
			}else if (nickname == ''){
				$(".error_tip").show();
				$(".error_tip").html('昵称不能为空^_^');
				return false;
			}else if (!account.match(/^\w+((-\w+)|(\.\w+))*\@[A-Za-z0-9]+((\.|-)[A-Za-z0-9]+)*\.[A-Za-z0-9]+$/)) {
				$(".error_tip").show();
				$(".error_tip").html('请输出正确的邮箱地址^_^');
				return false;
			}else if (password == '') {
				$(".error_tip").show();
				$(".error_tip").html('密码不能为空^_^');
				return false;
			}else if(password.length < 6 || password.length > 20){
				$(".error_tip").show();
				$(".error_tip").html('密码长度必须在6-20位之间^_^');
				return false;
			}else if (pwd == ''){
				$(".error_tip").show();
				$(".error_tip").html('确认密码不能为空^_^');
				return false;
			}else if (pwd != password) {
				$(".error_tip").show();
				$(".error_tip").html('两次密码输入不一致^_^');
				return false;
			}else if (code =='') {
				$(".error_tip").show();
				$(".error_tip").html('验证码不能为空^_^');
				return false;
			}
			datainfo = {
					'account' : account,
					'code' : code,
					'password' : password,
					'nickname' : nickname
			}
			$.post(regUrl,datainfo,function(data){
					if (data.status) {
						$(".error_tip").hide();
						hd_alert({
				            message: data.msg,//显示内容
				            timeout: 1,//显示时间
				            success: function () {
				            	location.href=IndexUrl;
				            }
				      });
					}else{
						$(".error_tip").show();
						$(".error_tip").html(data.msg);
					}
			},'json');
			//阻止表单提交
			return false;
		});
		
		
		//登录表单
		$("#loginForm").submit(function(){
				var account = $("input[name=account]").val();
				var password = $("input[name=password]").val();
				var code = $("input[name=code]").val();
				var read = $("input[name=read]:checked").val();
				var status;
				if (read) {
					status =1;
				}else{
					status =0;
				}
				
				if (account == '') {
					$(".error_tip").show();
					$(".error_tip").html('用户邮箱不能为空^_^');
					return false;
				}else if (!account.match(/^\w+((-\w+)|(\.\w+))*\@[A-Za-z0-9]+((\.|-)[A-Za-z0-9]+)*\.[A-Za-z0-9]+$/)) {
					$(".error_tip").show();
					$(".error_tip").html('请输出正确的邮箱地址^_^');
					return false;
				}else if (password == '') {
					$(".error_tip").show();
					$(".error_tip").html('密码不能为空^_^');
					return false;
				}else if (code == '') {
					$(".error_tip").show();
					$(".error_tip").html('验证码不能为空^_^');
					return false;
				}
				var data = {
						'account' :account,
						'password' : password,
						'code' : code,
						'status' : status
				}
				$.post(logUrl,data,function(data){
					if (data.status) {
						$(".error_tip").hide();
						hd_alert({
				            message: data.msg,//显示内容
				            timeout: 1,//显示时间
				            success: function () {
				            		location.href=IndexUrl;
				            }
				      });
					}else{
						$(".error_tip").show();
						$(".error_tip").html(data.msg);
					}
				},"json");
				return false;
		});
});