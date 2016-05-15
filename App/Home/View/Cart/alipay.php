<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>蘑菇街-支付页</title>
	</head>
	<link rel="stylesheet" type="text/css" href="{{__PUBLIC__}}/Home/css/common.css"/>
		<link rel="stylesheet" type="text/css" href="{{__PUBLIC__}}/Home/css/floor.css"/>
		
		<!-- 载入HDjs样式 -->
		<link rel="stylesheet" type="text/css" href="{{__PUBLIC__}}/hdjs/hdjs.css"/>
		<link rel="stylesheet" type="text/css" href="{{__PUBLIC__}}/Home/css/cart.css"/>
		<script type="text/javascript">
				var Root = "{{__ROOT__}}";
				var payAjaxUrl = "{{U('Common/payAjax')}}";
				
		</script>
	<body>
		<!--头部 开始-->
		<div class="header-area hea-cart">
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
	                        <li class="s2"><a target="_blank" href="{{U('Userinfo/userinfo')}}">个人设置</a></li>
	                        <li class="s2"><a target="_blank" href="{{U('Userinfo/userinfo')}}">账号绑定</a></li>
	                        <li class="s2"><a rel="nofollow" href="{{U('Login/LoginOut')}}">退出</a></li>
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
		
		<!--购物车 开始-->
		<div class="g-warp">
			<!--购物车下单 头部 开始-->
			<div class="g-header">
				<a href="" class="g-lf g-lf-pay"></a>
				<div class="g-rg">
					<div class="md_process_wrap md_process_step2_5">
        				<div class="md_process_pay"></div>
                    	<i class="md_process_i md_process_i1">
                			1<span class="md_process_tip">购物车</span>
            			</i>
                    	<i class="md_process_i md_process_i2">
			                2<span class="md_process_tip">确认订单</span>
			            </i>
                    	<i class="md_process_i md_process_i3">
                			3<span class="md_process_tip">支付</span>
            			</i>
                    	<i class="md_process_i md_process_i4">
                            <img src="{{__PUBLIC__}}/Home/images/right.png" alt="" height="23" width="23">
                            <span class="md_process_tip">完成</span>
            			</i>
            		</div>
				</div>
			</div>
			<!--购物车下单 头部 结束-->
			
			<!--购物横线-->
			<div class="h-line clearfloat"></div>
			
			<!--支付信息 中间的页面-->
			<div class="pay-area">
				<div class="md-order-head clearfloat">
					<h2 class="tit">
						<span>订单提交成功</span>
					</h2>
					<span class="mon">
        				<span>应付金额：</span>
        				<span class="mon-num">
            				<span>¥</span> <span>{{$totalPrice}}</span>
        				</span>
    				</span>
				</div>
				
				<div class="md-discount clearfloat">
					<div class="banklist-btm">
						<div class="banklist-item">
							<i class="product-icon icon-overage"></i>
							<span class="earnname">货到付款</span>
							<span class="earntip"><input type="radio" name="paymethod"  value="1"/>&nbsp是&nbsp&nbsp<input type="radio" name="paymethod" value="0"  checked="checked"/>&nbsp否</span>
						</div>
					</div>
					
					<div class="banklist-btm">
						<div class="banklist-item">
							<i class="product-icon icon-overages"></i>
							<span class="earnname">余额</span>
							<span class="earntip" id="J_Num">可用余额<span style="color:#F36;font-weight: 700;padding: 0px 2px;">￥</span><span class="num" style="color:#F36;padding: 0px 0px;">{{$pay}}</span>元</span>
						</div>
					</div>
					
				</div>
				
				<div class="md-order-foot2 clearfloat">
					<input type="hidden" name="oid" value="{{$_GET['oid']}}" id="J_Oid">
					<a href="javascript:;" class="J_payOrder">确认并付款</a>
					<span class="mon2">
    					<span>实付金额：</span>
    					<span id="mon-num2">
      						<span style="color: #F36; font-size: 14px;font-weight: 700;">¥</span>
  							<span style="color: #F36;font-size: 14px;font-weight: 700;" id="J_Goods_num">{{$totalPrice}}</span>
						</span>
  					</span>
				</div>
				
			</div>
			<!--支付信息 中间的页面 结束-->
			
		</div>	
		
		<!--底部公共部分   开始-->
		<!--载入尾部-->
		{{include file="VIEW_PATH/Common/floor.php"}}
		