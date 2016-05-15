<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>蘑菇街-购物车确认订单页面</title>
	</head>
	<link rel="stylesheet" type="text/css" href="{{__PUBLIC__}}/Home/css/common.css"/>
	<link rel="stylesheet" type="text/css" href="{{__PUBLIC__}}/Home/css/floor.css"/>
	
	<!-- 载入HDjs样式 -->
	<link rel="stylesheet" type="text/css" href="{{__PUBLIC__}}/hdjs/hdjs.css"/>
	<link rel="stylesheet" type="text/css" href="{{__PUBLIC__}}/Home/css/cart1.css"/>
	
	<script type="text/javascript">
			var Public = "{{__PUBLIC__}}";
			var Root = "{{__ROOT__}}";
			var sname = "<?php echo session_name();?>";
			var sid = "<?php echo session_id();?>";
			var userFaceUrl = "{{U('Userinfo/face')}}";
			var siteUrl = "{{U('Common/site')}}";
			var words = "{{isset($oldSiteData['location'])?$oldSiteData['location']:''}}";
			var defaultUrl = "{{U('Common/siteDefault')}}";
			var delSiteUrl = "{{U('Common/delSite')}}";
			var orderUrl = "{{U('Common/order')}}";
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
						
						<!--购物车隐藏盒子 结束-->
					</li>
				</ul>
				
			</div>
		</div>
		<!--头部 结束-->
		
		<!--购物车 开始-->
		<div class="g-warp g-header">
			<!--购物车下单 头部 开始-->
			<div class="g-header clearfloat">
				<a href="" class="g-lf"></a>
				<div class="g-rg">
					<div class="md_process_wrap md_process_step2_5">
        				<div class="md_process_sd"></div>
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
			
			
			
			<!--购物车 内容区域 开始-->
			<div class="g-conW clearfloat">
				<div class="cart-warp">
					<!--页面内容 开始-->
					<div class="cart_page_wrap pt0">
						<h2 class="cart_stit">选择收货地址</h2>
						<div class="cart_address_wrap" id="cartAddress">
							
                    		<!--填写地址-->
                    			<div class="addr-edit clearfloat">
									<div class="add_new_addr">
										<span id="J_saddAddress">+使用新地址</span>
									</div>
									
									<!--隐藏地址栏区域 开始-->
									
									<form action="" method="post" id="siteDataFrom">
									<div  id="addressbox_warp" {{if value="$_GET['sid']"}}class="addressbox_warp"{{else}}class="addressbox_warp hidden"{{endif}}>
										<div class="addressbox">
											<div class="address-pop-area">
												<table class="hd-table hd-table-form hd-form">
													<tbody>
														<tr>
															<th width="100">省:&nbsp<span class="red">*</span></th>
															<td>
																<select name="province" id="province">
    				                								<option value="">请选择</option>
    															</select>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            					<select name="city" id="city">
                                                      				<option value="">请选择</option>
                                              					</select>
															</td>
														</tr>
														<tr>
															<th>邮政编码:&nbsp<span class="red">*</span></th>
															<td>
																<input type="text" class="input r3" name="postalcode" value="{{isset($oldSiteData['postalcode'])?$oldSiteData['postalcode']:''}}">
															</td>
														</tr>
														<tr>
															<th>详细地址:&nbsp<span class="red">*</span></th>
															<td>
																<textarea name="street"  rows="10" id="text-area" placeholder="请填写详细的街道地址，最少5个字，最多不能超过100个字^_^">{{isset($oldSiteData['street'])?$oldSiteData['street']:''}}</textarea>
															</td>
														</tr>
														<tr>
															<th>收货人姓名:&nbsp<span class="red">*</span></th>
															<td>
																<input type="text" class="input r3" name="consignee" value="{{isset($oldSiteData['consignee'])?$oldSiteData['consignee']:''}}">
															</td>
														</tr>
														<tr>
															<th>手机:&nbsp<span class="red">*</span></th>
															<td>
																<input type="text" class="input r3" name="phone" value="{{isset($oldSiteData['phone'])?$oldSiteData['phone']:''}}">
															</td>
														</tr>
													</tbody>
												</table>
											</div>
											<!--基本资料 结束-->
											<div class="last-area" style="padding-left:123px ;">
												<input type="hidden" name="sid" value="{{isset($oldSiteData['sid'])?$oldSiteData['sid']:''}}"/>
												<button class="hd-btn hd-btn-danger" type="submit">确认</button>
												<button class="hd-btn hd-btn-default" id="hd-del-s" type="button">取消</button>
											</div>
										</div>
									</div>
									</form>
									
									<!--隐藏地址栏区域 结束-->
								</div>
								{{if value="$siteData"}}
								{{foreach from="$siteData" value="$v"}}
								<!--显示地址 开始-->
								<div style="margin-bottom:5px;"{{if value="$v['status']"}}class="addr_section addr-section-cur clearfloat"{{else}}class="addr_section clearfloat"{{endif}}>
									<i class="section-cur-g"></i>
									<ul class="clearfloat">
					                    <li class="name">{{$v['consignee']}}</li>
					                    <li class="addr">{{$v['location']}}&nbsp{{$v['street']}}</li>
					                    <li class="zcode">{{$v['postalcode']}}</li>
					                    <li class="mobile">{{$v['phone']}}</li>
					                    <li class="oper">
					                        <a href="javascript:;" sid="{{$v['sid']}}" status="{{$v['status']}}" {{if value="$v['status']"}}class="J_default J-default-a"{{else}}class="J_default"{{endif}}>{{if value="$v['status']"}}已为默认{{else}}设为默认{{endif}}</a>
					                        <a href="H_C_a_{{$v['sid']}}.html" class="edit cur">编辑</a>
					                        <a href="javascript:;" class="del nobd del-cur" sid="{{$v['sid']}}">删除</a>
					                    </li>
					                    <li class="enaddr"></li>
			           				</ul>
			           			</div>
			           			{{endforeach}}
			           			<!--显示地址 结束-->
			           			{{endif}}
							<!--填写地址结束-->
							
							<h2 class="cart_stit pt10">确认商品信息</h2>
							<!--收货信息 开始-->
							<form action="" method="post">
								<table id="orderTable" class="cart_table">
								<thead>
									<tr>
									    <th class="cart_table_goods_wrap">商品</th>
									    <th class="cart_table_goodsinfo_wrap">商品信息</th>
									    <th width="80">单价(元)</th>
									    <th width="80">数量</th>
									   	<th class="cart_table_goodsctrl_wrap">小计(元)</th>
									</tr>
								</thead>
								<tbody>
									{{foreach from="$_SESSION['goods']" key="$k" value="$v"}}
									<tr>
									    <td class="cart_table_goods_wrap">
									    	<a href="" class="cart_goods_img"><img src="{{__ROOT__}}/{{$v['pic']}}" width="78" height="78"></a>
									    	<a href="" class="cart_goods_t cart_hoverline" style="padding-top: 30px;">{{$v['gname']}}</a>
									    </td>
									    <td class="cart_table_goodsinfo_wrap">
									    	{{foreach from="$v['options']" key="$gtname" value="$vo"}}
									    	<p class="cart_lh20">{{$gtname}}：{{$vo}}</p>
									    	{{endforeach}}
									    </td>
									    <td>
									    	<p style="text-decoration: line-through;">￥{{$v['marketprice']}}</p>
									    	<p>￥{{$v['shopprice']}}</p>
									    </td>
									    <td>
									    	<div class="goods-num-lf">
										    	<div class="goods-num">
													{{$v['num']}}
												</div>
											</div>
									    </td>
									   	<td class="cart_table_goodsctrl_wrap">
									   		<p class="cart_deep_red" style="color: #ff4f7c;font-weight: 700;">¥ {{$v['price']}}</p>
									   	</td>
									   	
									</tr>
									{{endforeach}}
									
								</tbody>
							</table>
								
								<div class="cart_paybar clearfloat">
									<a href="javascript:;" class="cart_surebtn" id="cart-surebtn">去付款</a>
									<span class="cart-pr">¥ {{$sum}}</span>
                                    <div class="cart-paybar-info">
                						共有 <span class="cart-red goodsNum">{{$_SESSION['tatol']}}</span> 件商品，总计：
            						</div>
            						<a href="H_C_i.html" class="cart-back">返回购物车</a>
        						</div>
        						
							</form>
							<!--收货信息 结束-->
						</div>
					</div>
					<!--页面内容 结束-->
				</div>
			</div>
			<!--购物车 内容区域 结束-->
		</div>
		<!--购物车 结束-->
		
		<!--底部公共部分   开始-->
		<!--载入尾部-->
		{{include file="VIEW_PATH/Common/floor.php"}}	