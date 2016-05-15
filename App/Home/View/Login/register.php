<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>蘑菇街-注册</title>
	</head>
	<script type="text/javascript" src="{{__PUBLIC__}}/Home/js/jquery-1.8.3.min.js" ></script>
	<script type="text/javascript" src="{{__PUBLIC__}}/hdjs/hdjs.min.js" ></script>
	<script type="text/javascript" src="{{__PUBLIC__}}/Home/js/login.js" ></script>
	<link rel="stylesheet" type="text/css" href="{{__PUBLIC__}}/Home/css/login.css"/>
	<link rel="stylesheet" type="text/css" href="{{__PUBLIC__}}/hdjs/hdjs.css"/>
	<script type="text/javascript">
			var regUrl = "{{U('Login/reg')}}";
			var IndexUrl = "{{U('Index/index')}}";
			var LoginUrl = "{{U('Login/login')}}";
	</script>
	<body>
		<div class="logo-warp">
			<div class="logo">
        		<a title="蘑菇街" href="{{U('Index/index')}}" class="logo-img"></a>
    		</div>
    		<div class="content clearfloat">
    			<div class="lg_banner">
            		<a class="banner1">
            			<img src="{{__PUBLIC__}}/Home/images/logo-img.jpg"></a>
        		</div>
        		<!--右侧注册-->
        		<div class="rg_left" id="rg_content">
		            <div class="regist">
		                <h3>新用户注册</h3>
		            </div>
		            <form action="" method="post" id="regForm">
		            <div class="mod_box rg_mod_box">
		                <p class="error_tip" style="display:none;"></p>
		                <div class="rg_password mb">
		                    <input maxlength="32" class="text" name="account" placeholder="请输入邮箱" style="border-color: rgb(207, 207, 207); color: rgb(153, 153, 153);" type="text">
		                </div>
		                 <div class="rg_password mb">
		                    <input maxlength="32" class="text" name="nickname" placeholder="请输入昵称" style="border-color: rgb(207, 207, 207); color: rgb(153, 153, 153);" type="text">
		                </div>
		                <div class="rg_password mb">
		                    <input maxlength="32" class="text" name="password" placeholder="请输入密码(6-20位)" style="border-color: rgb(207, 207, 207); color: rgb(153, 153, 153);" type="password">
		                </div>
		                 <div class="rg_password mb">
		                    <input maxlength="32" class="text" name="pwd" placeholder="请输入确认密码(6-20位)" style="border-color: rgb(207, 207, 207); color: rgb(153, 153, 153);" type="password">
		                </div>
		                <div class="rg_password mb">
		                    <input maxlength="32" class="text" name="code" placeholder="请输入验证码" style="border-color: rgb(207, 207, 207); color: rgb(153, 153, 153);" type="text">
		                </div>
		                 <div class="rg_password mb">
		                   		<img src="{{U('Login/code')}}" width="284" height="50" style="border-img:none;" id="code-img"/>
		                </div>
		                <div class="rg_submit mb">
		                    <input value="注册" class="sub" type="submit">
		                </div>
		               <div class="rg_login">
		                    <a data-ptp-idx="5" href="{{U('login')}}">已有账号</a>
		                </div>
		            </div>
		            </form>
        		</div>
        		<!--右侧结束-->
    		</div>
    		
		</div>
	</body>
</html>
