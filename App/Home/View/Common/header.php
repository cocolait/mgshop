		<link rel="stylesheet" type="text/css" href="{{__PUBLIC__}}/Home/css/common.css"/>
		<link rel="stylesheet" type="text/css" href="{{__PUBLIC__}}/Home/css/floor.css"/>
		
		<!-- 载入HDjs样式 -->
		<link rel="stylesheet" type="text/css" href="{{__PUBLIC__}}/hdjs/hdjs.css"/>
		<!-- 首页样式只有首页有 -->
		{{if value=" 'CONTROLLER' eq 'Index' && 'ACTION' eq 'index' "}}
		<link rel="stylesheet" type="text/css" href="{{__PUBLIC__}}/Home/css/index.css"/>
		{{endif}}
		
		{{if value=" 'CONTROLLER' eq 'Userinfo' "}}
		<link rel="stylesheet" type="text/css" href="{{__PUBLIC__}}/Home/css/userinfo.css"/>
		{{endif}}
		
		{{if value=" 'CONTROLLER' eq 'Lists' "}}
		<!-- 列表页样式  -->
		<link rel="stylesheet" type="text/css" href="{{__PUBLIC__}}/Home/css/lists.css"/>
		{{endif}}
		
		{{if value=" 'CONTROLLER' eq 'Details' "}}
		<!-- 详情页 样式 -->
		<link rel="stylesheet" type="text/css" href="{{__PUBLIC__}}/Home/css/details.css"/>
		{{endif}}
		
		<!-- 购物车样式 -->
		{{if value=" 'CONTROLLER' eq 'Cart' "}}
		<link rel="stylesheet" type="text/css" href="{{__PUBLIC__}}/Home/css/cart.css"/>
		{{endif}}
		
		{{if value=" 'CONTROLLER' eq 'Userinfo' && 'ACTION' eq 'orderdetail' "}}
		<link rel="stylesheet" type="text/css" href="{{__PUBLIC__}}/Home/css/indent.css"/>
		{{endif}}
		
		<!-- 搜索页样式 -->
		{{if value=" 'CONTROLLER' eq 'Search' "}}
		<link rel="stylesheet" type="text/css" href="{{__PUBLIC__}}/Home/css/seek.css" />
		{{endif}}
		
		<!-- 载入上传Uploadify样式 -->
		<link rel="stylesheet" type="text/css" href="{{__PUBLIC__}}/Uploadify/uploadify.css">
		
		<script type="text/javascript">
				var Public = "{{__PUBLIC__}}";
				var Root = "{{__ROOT__}}";
				var sname = "<?php echo session_name();?>";
				var sid = "<?php echo session_id();?>";
				var userFaceUrl = "{{U('Userinfo/face')}}";
				var payValueUrl = "{{U('Common/payValue')}}";
		</script>
		
		
	</head>
	<body>
		<!-- HD模态框  开始 -->
		<div id="hd-modal-bg" style="opacity:0.7;filter:alpha(opacity=7);display:none;">背景遮罩</div>
		<div id="hd-modal" style="width:300px;height:180px;margin-left:-180px; display:none;">        
				<div class="hd-modal-wrap" style="height:180px">            
						 <div class="hd-modal-header">                
							<span class="hd-modal-title">余额充值</span>               
						 	<span class="hd-modal-close hd-clone-modal"></span>            
						  </div>            
				 		  <div class="hd-modal-message">
				 		  		<textarea name="pay" rows="4" id="text-area"  style="width:280px;" class="text-pay-value"></textarea>
				 		  </div>           
						  <div class="hd-modal-btn">                
							  <a class="hd-btn hd-btn-success hd-success-modal" href="javascript:;">确认充值</a>&nbsp;                
							  <a class="hd-btn hd-clone-modal" href="javascript:;">关闭</a>           
						   </div>        
				</div>    
		</div>
		<!-- HD模态框  结束 -->
		
		<!--公共头部样式 开始-->
		<!--头部 开始-->
		<div class="header-area">
			<div class="header">
				<a href="{{__ROOT__}}" class="home">蘑菇街首页</a>
				<ul class="header-top">
					<!--用户名登录后 的div-->
					{{if value="isset($_SESSION['uid'])?$_SESSION['uid']:0"}}
					<li class="t1 has_icon user_meta" id="user_meta">
	                    <a href="javascript:;">很纯很暧昧777</a>
	                    <a href="" target="_blank"><span class="user-level user-level0">&nbsp;</span></a>
	                    <i class="icon_delta"></i>
	                    <ol class="ext_mode" id="menu_personal" style="display: none;">
	                        <li class="s2"><a target="_blank" href="H_U.html">个人设置</a></li>
	                        <li class="s2"><a target="_blank" href="H_U.html">账号绑定</a></li>
	                        <li class="s2"><a rel="nofollow" href="H_logout.html">退出</a></li>
	                    </ol>
                	</li>
                	<!--用户名登录后 的div 结束-->
                	{{else}}
                	<!--没登录状态-->
					<li class="t1"><a href="H_reg.html">注册</a></li>
					<li class="t1"><a href="H_log.html">登录</a></li>
					<!--没登录状态 结束-->
					{{endif}}
					<li class="t1 myorder t1-line" id="J-order" uid="{{isset($_SESSION['uid'])?$_SESSION['uid']:0}}"><a href="javascript:;">我的订单</a></li>
					<li class="t1 myorder t1-cate" id="t1-cate">
						<a href="H_C_i.html">购物车
							{{if value="isset($_SESSION['goods'])?$_SESSION['goods']:'' "}}
							<span class="floorNum" style="color: #f36;padding: 0px;font-weight: 400;">{{$_SESSION['tatol']}}</span>
							<span>件</span>
							{{endif}}
						</a>
						<!--购物车隐藏盒子 开始-->
						
						{{if value="isset($_SESSION['goods'])?$_SESSION['goods']:'' "}}
						<!--有商品的时候-->
						<div class="cate-hide cate-info" style="display: none;">
							<ul>
								{{foreach from="$_SESSION['goods']" value="$v"}}
	                            <li>
									<a href="H_D_i_{{$v['gid']}}.html" target="_blank" class="imgbox">
										<img src="{{__ROOT__}}/{{$v['pic']}}"  width="45" height="45">
									</a>
									<a href="H_D_i_{{$v['gid']}}.html" target="_blank" class="title">{{$v['gname']}}</a>
									<span class="info">
											{{foreach from="$v['options']" key="$gtname" value="$vo"}}
									    	<span>{{$gtname}}：{{$vo}}</span>
									    	{{endforeach}}
									</span>
									<span class="price">￥{{$v['shopprice']}}</span>
									<a href="javascript:;" class="del delete" mgprice="{{$v['price']}}" glid="{{$v['glid']}}">删除</a>
								</li>
								{{endforeach}}
								
							</ul>
							<div class="subbox">
                    			<div class="fr">
                				<a href="H_C_i.html" target="_blank" class="goel">查看购物车</a>
            					</div>
        					</div>
						</div>
						<!--购物车隐藏盒子 结束-->
						{{else}}
						<!--没有商品的时候-->
						<div class="cate-hide empty_cart" style="display: none;">
							购物车里没有商品！
						</div>
						<!--没有商品的时候 结束-->
						{{endif}}
					</li>
				</ul>
				
			</div>
		</div>
		<!--头部 结束-->
		
		<!--搜索区域   开始-->
		<div class="search-warp">
			<div class="search-area">
			<div class="logo">
				<a href="{{__ROOT__}}" title="蘑菇街首页"></a>
			</div>
			
			<!--搜索框 区域-->
			<div class="search">
				<div class="search-box">
					<div class="selectbox">
                		<span class="selected">搜商品</span>
               		</div>
               		<!--form 表单 开始-->
               		<form action="H_S.html" method="get" id="sea-form">
               			<input type="text" value="{{isset($_GET['words'])?$_GET['words']:'上衣'}}" class="ts-txt" name="words"/>
               			<input type="submit" value="搜  索" class="ts-btn"/>
               		</form>
               		<!--form 表单 结束-->
               	</div>
               	
               	<!--栏目列表  开始-->
               	<div class="cate-list">
               		{{foreach from="$cateData_cache" value="$v"}}
               		<a href="H_S.html?words={{$v['cname']}}">{{$v['cname']}}</a>
               		{{endforeach}}
               	</div>
               	<!--栏目列表 结束-->
				
			</div>
			<!--搜索框 结束-->
			
			<!--二维码 开始-->
	       		<!-- <div class="e-qrcode">
	                <img src="{{__PUBLIC__}}/Home/images/ecode.png" alt="蘑菇街客户端下载" height="70" width="70">
	                <p>蘑菇街客户端</p>
	            </div> -->
       		<!--结束-->
		</div>
		</div>
		<!--搜索区域   结束-->
		
		{{if value=" 'CONTROLLER' eq 'Index' && 'ACTION' eq 'index' "}}
		<!--菜单列表 开始-->
		<div class="menu-area">
			<div class="menu">
				<ul class="menu-list">
					<li class="home">全部商品</li>
					{{cate pid="0"}}
					<li><a href="{{$field['url']}}">{{$field['cname']}}</a></li>
					{{endcate}}
				</ul>
			</div>
		</div>
		<!--菜单列表 结束-->
		{{endif}}
		
		<!--公共头部样式 结束-->