<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>蘑菇街-我的购物车</title>
	</head>
		<link rel="stylesheet" type="text/css" href="{{__PUBLIC__}}/Home/css/common.css"/>
		<link rel="stylesheet" type="text/css" href="{{__PUBLIC__}}/Home/css/floor.css"/>
		
		<!-- 载入HDjs样式 -->
		<link rel="stylesheet" type="text/css" href="{{__PUBLIC__}}/hdjs/hdjs.css"/>
		<link rel="stylesheet" type="text/css" href="{{__PUBLIC__}}/Home/css/cart.css"/>
		
		<script type="text/javascript">
				var AddnumUrl = "{{U('Common/Addnum')}}";
				var desNumUrl = "{{U('Common/desNum')}}";
				var delNumUrl = "{{U('Common/delNum')}}";
				var Root = "{{__ROOT__}}";
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
				<a href="" class="g-lf"></a>
				<div class="g-rg">
					<div class="md_process_wrap md_process_step2_5">
        				<div class="md_process_myW"></div>
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
			
			<!--我的购物车 中间的页面-->
			<div class="g-conW clearfloat">
				{{if value="isset($_SESSION['goods'])?$_SESSION['goods']:'' "}}
				<!--有物品的时候 购物车-->
				<div class="g-wp">
					<div class="cart_slide">
						<a href="" class="cart-A">全部商品（<span class="goodsNum">{{$_SESSION['tatol']}}</span>）</a>
						<!--购物车信息 开始-->
						<div class="clearfloat" style="margin-top:20px;background: white;">
						<form action="" method="post">
							<table id="orderTable" class="cart_table">
								<thead>
									<tr>
									    <th class="cart_table_goods_wrap">商品</th>
									    <th class="cart_table_goodsinfo_wrap">商品信息</th>
									    <th width="80">单价(元)</th>
									    <th width="80">数量</th>
									   	<th class="cart_table_goodsctrl_wrap">小计(元)</th>
									   	<th class="cart_table_goodsctrl_wrap">操作</th>
									</tr>
								</thead>
								<tbody>
									{{foreach from="$_SESSION['goods']" key="$k" value="$v"}}
									<tr style="background: white;" class="totalPr">
									    <td class="cart_table_goods_wrap">
									    	<a href="H_D_i_{{$v['gid']}}.html" class="cart_goods_img"><img src="{{__ROOT__}}/{{$v['pic']}}" width="78" height="78"/></a>
									    	<a href="H_D_i_{{$v['gid']}}.html" class="cart_goods_t cart_hoverline" style="padding-top: 30px;">{{msubstr($v['gname'],0,14)}} </a>
									    </td>
									    <td class="cart_table_goodsinfo_wrap" id="hide-cart-table">
									    	{{foreach from="$v['options']" key="$gtname" value="$vo"}}
									    	<p class="cart_lh20">{{$gtname}}：{{$vo}}</p>
									    	{{endforeach}}
									    	
									    </td>
									    <td >
									    	<p class="cart_lightgray">￥{{$v['marketprice']}}</p>
									    	<p class="cart_data_sprice">￥{{$v['shopprice']}}</p>
									    </td>
									    <td>
									    	<div class="goods-num-lf">
										    	<div class="goods-num">
													<span class="num-reduce num-disable num-disable-lf num-reduces" price="{{$v['shopprice']}}" glid="{{$v['glid']}}" inventory="{{$v['inventory']}}"></span>
													<input class="num-input" value="{{$v['num']}}" type="text" disabled="disabled">
													<span class="num-add num-adds" price="{{$v['shopprice']}}" glid="{{$v['glid']}}" inventory="{{$v['inventory']}}"></span>
												</div>
											</div>
									    </td>
									   	<td class="cart_table_goodsctrl_wrap">
									   		<p class="cart_deep_red">¥ {{$v['price']}}</p>
									   	</td>
									   	<td><a href="javascript:;" class="delete" mgprice="{{$v['price']}}" glid="{{$v['glid']}}">删除</a></td>
									</tr>
									{{endforeach}}
								</tbody>
							</table>
							
							<div class="cart_paybar clearfloat">
								<a href="javascript:;" {{if value="isset($_SESSION['uid'])?$_SESSION['uid']:0"}}class="cart_surebtn cart_surebtn-a cart_surebtn-b"{{else}}class="cart_surebtn cart_surebtn-a"{{endif}} uid="{{isset($_SESSION['uid'])?$_SESSION['uid']:0}}" id="settleUrl">去付款</a>
								<span class="cart-pr cart-rd">¥ <span id="totalPrice">{{$sum}}</span></span>
                                <div class="cart-paybar-info">
            						共有 <span class="cart-red goodsNum">{{$_SESSION['tatol']}}</span> 件商品，总计：
        						</div>
    						</div>
    						
						</form>
						</div>
						<!--购物车信息 结束-->
							
							
					</div>
                        
				</div>
				<!--有物品的时候 购物车-->
				{{else}}
				<div class="cart-wrap " style="background: white;">
					<div class="cart_page_wrap">
						<!--购物车内容  开始 没有内容的时候-->
						<div class="cart_empty">
							<div class="cart_empty_icon"></div>
							<h5 class="mb20">您的购物车还是空的，赶快去挑选商品吧！</h5>
							<ul class="cart_empty_list">
						        <li>去看看大家都喜欢的<a href="{{__ROOT__}}" class="cart_red cart_uline">潮流单品</a></li>
						    </ul>
						</div>
						<!--购物车内容  结束-->
					</div>
				</div>
				{{endif}}
				
			</div>
			<!--我的购物车 中间的页面 结束-->
			
			
		<!--底部公共部分   开始-->
		<!--载入尾部-->
		{{include file="VIEW_PATH/Common/floor.php"}}	
