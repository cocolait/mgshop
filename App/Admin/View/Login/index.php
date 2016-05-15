<!doctype html>
<html lang="zh-cn">
<head>
<meta charset="utf-8">
<title>后台管理系统</title>
<meta name="description" content="">

<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1">

<link rel="stylesheet" href="{{__PUBLIC__}}/Admin/css/bootstrap.css">
<link rel="stylesheet" href="{{__PUBLIC__}}/Admin/css/jquery.fancybox.css">
<link rel="stylesheet" href="{{__PUBLIC__}}/hdjs/hdjs.css">
<link rel="stylesheet" href="{{__PUBLIC__}}/Admin/css/login.css">
</head>
<script type="text/javascript">
		var loginUrl = "{{U('Login/login')}}";
		var IndexUrl = "{{U('Index/index')}}";
</script>
<body class='login_body'>
	<div class="wrap">
		<h2>后台管理系统</h2>
		<h4>Mushroom street mall, the login page</h4>
		<div class="alert alert-error" id="error" style="display:none;">
		</div>
		<div class="login">
			<div class="email">
				<label for="user">账号</label>
				<div class="email-input">
				<div class="control-group">
				<div class="input-prepend">
				<span class="add-on"><i class="icon-envelope"></i></span>
				<input type="text" id="user" name="uame" id="user" >				
				</div></div>
				<label for="user" generated="true" class="error"></label>
				</div>
			</div>
			<div class="pw">
				<label for="pw">密码</label><div class="pw-input"><div class="control-group"><div class="input-prepend"><span class="add-on"><i class="icon-lock"></i></span>
				<input type="password" id="pw" name="password" ></div>
				<label for="user" generated="true" class="error" id="pwError"></label></div></div>
			</div>
		</div>
		
		<div class="submit">
			<button class="btn btn-red5" id="login" type="button">登陆</button>
		</div>

		<div class="social-shadow-hider"></div>
		
	</div>

<script src="{{__PUBLIC__}}/Admin/js/jquery.js"></script>
<script src="{{__PUBLIC__}}/hdjs/hdjs.min.js"></script>
<script src="{{__PUBLIC__}}/Admin/js/login.js"></script>
</body>
</html>