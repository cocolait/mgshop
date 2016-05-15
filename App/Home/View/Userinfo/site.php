<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>蘑菇街-个人中心-地址管理</title>
		<!--载入头部-->
		{{include file="VIEW_PATH/Common/header.php"}}
		<script type="text/javascript">
			var siteUrl = "{{U('Common/site')}}";
			var words = "{{isset($oldSiteData['location'])?$oldSiteData['location']:''}}";
			var defaultUrl = "{{U('Common/siteDefault')}}";
			var delSiteUrl = "{{U('Common/delSite')}}";
		</script>
		
		<!--下滑线2px-->
		<div class="overstriking"></div>
		
		<!--公共头部样式 结束-->
		
		<!--主体内容 开始-->
		<div class="fm1200 clearfloat">
			<div class="meu-warp">
				<!--用户信息 左侧 开始-->
				{{include file="VIEW_PATH/Common/userLeft.php"}}
				<!--用户信息 左侧 结束-->
				
				<!--用户右侧个人信息  开始-->
				<div class="mu_location_wrap">
					<h2 class="lt-title">地址管理</h2>
					<div class="addr-edit clearfloat">
						<div class="add_new_addr">
							<span id="J_saddAddress">+添加地址</span>
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
												<button class="hd-btn hd-btn-danger" type="submit" live="1" id="siteLive">确认</button>
												<button class="hd-btn hd-btn-default" id="hd-del" type="button">取消</button>
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
		                        <a href="H_U_site_{{$v['sid']}}.html" class="edit cur">编辑</a>
		                        <a href="javascript:;" class="del nobd del-cur" sid="{{$v['sid']}}">删除</a>
		                    </li>
		                    <li class="enaddr"></li>
           				</ul>
           			</div>
           			{{endforeach}}
           			<!--显示地址 结束-->
           			{{endif}}
				</div>
				<!--用户右侧个人信息  结束-->
			</div>
		</div>
		<!--主体内容 结束-->
		
		
		<!--底部公共部分   开始-->
		<!--载入尾部-->
		{{include file="VIEW_PATH/Common/floor.php"}}
