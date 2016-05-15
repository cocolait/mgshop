<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>后台管理系统</title>
<link rel="stylesheet" href="{{__PUBLIC__}}/Admin/css/bootstrap.css">
<link rel="stylesheet" href="{{__PUBLIC__}}/Admin/css/style.css">
<link rel="stylesheet" href="{{__PUBLIC__}}/Admin/css/node.css" />


<link rel="stylesheet" href="{{__PUBLIC__}}/hdjs/hdjs.css">

<link rel="stylesheet" href="{{__PUBLIC__}}/Admin/css/bootstrap-responsive.css">
<link rel="stylesheet" href="{{__PUBLIC__}}/Admin/css/uniform.default.css">
<link rel="stylesheet" href="{{__PUBLIC__}}/Admin/css/jquery.fancybox.css">

<link rel="stylesheet" type="text/css" href="{{__PUBLIC__}}/Uploadify/uploadify.css">

<!-- 载入文本编译器 -->
<script type="text/javascript" charset="utf-8" src="{{__PUBLIC__}}/ueditor1_4_3/ueditor.config.js"></script>
<script type="text/javascript" charset="utf-8" src="{{__PUBLIC__}}/ueditor1_4_3/ueditor.all.min.js"> </script>
<script type="text/javascript" charset="utf-8" src="{{__PUBLIC__}}/ueditor1_4_3/lang/zh-cn/zh-cn.js"></script>

<script type="text/javascript">
	var Public = "{{__PUBLIC__}}";
	var Root = "{{__ROOT__}}";
	var picUploadUrl = "{{U('Lists/picUploads')}}";
	var MiniUploadUrl = "{{U('Lists/MiniUploads')}}";
	var sname = "<?php echo session_name();?>";
	var sid = "<?php echo session_id();?>";
	var FaceUrl = "{{U('System/face')}}";
	var imgsGoodsUrl = "{{U('Goods/imgsGoods')}}";
	var CateMiniUrl = "{{U('Lists/CateMiniUp')}}";
	var CateMaxUrl = "{{U('Lists/CateMaxUpOne')}}";
	var CateMaxtwoUrl = "{{U('Lists/CateMaxUpTwo')}}";
	var CateDelUrl = "{{U('Lists/CateAjaxDel')}}";
	var cateImgDelUrl = "{{U('Goods/cateImgDel')}}";
</script>

</head>
<body>
<div class="topbar clearfix">
	<div class="container-fluid">
		<a href="#" class='company'>MgShop后台管理系统</a>
		<ul class='mini'>
			<li>
				<a href="/" target="_blank">
					<img src="{{__PUBLIC__}}/Admin/img/icons/fugue/gear.png" alt="">
					查看网站
				</a>
			</li>		
					
			<li>
				<a href="{{U('System/systemSet')}}">
					<img src="{{__PUBLIC__}}/Admin/img/icons/fugue/gear.png" alt="">
					网站设置
				</a>
			</li>		
			<li>
				<a href="{{U('Login/loginOut')}}" id='loginOut'>
					<img src="{{__PUBLIC__}}/Admin/img/icons/fugue/control-power.png" alt="">
					退出系统
				</a>
			</li>
		</ul>
	</div>
</div>
<!--面包屑-->
<div class="breadcrumbs">
	<div class="container-fluid">
		<ul class="bread pull-left">
			<li>
				<a href="dashboard.html"><i class="icon-home icon-white"></i></a>
			</li>
			<li>
				<a href="dashboard.html">
					
				</a>
			</li>
		</ul>

	</div>
</div>
<!--面包屑结束-->