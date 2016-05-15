<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>蘑菇街-个人中心-我的订单</title>
		<!--载入头部-->
		{{include file="VIEW_PATH/Common/header.php"}}
		<script type="text/javascript">
					var delOrderUrl = "{{U('Common/delOrder')}}";
					var confirmOrderUrl = "{{U('Common/confirmOrder')}}";
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
				<div class="mu_right_wrap">
					<!--我的订单 标题栏-->
					<div class="order-title">
					    <ul class="order-title-column">
					        <li class="goods">商品</li>
					        <li class="price">单价(元)</li>
					        <li class="quantity">数量</li>
					      	<li class="total">实付款(元)</li>
					        <li class="status">交易状态</li>
					        <li class="other">操作</li>
					    </ul>
					</div>
					<!--订单详情 开始-->
					{{if value="$orderData"}}
					<div class="order-list clearfloat">
						<div class="order-section">
							<!--循环层 开始-->
							{{foreach from="$orderData" value="$v"}}
							<table class="order-table" style="margin-bottom:20px; ">
								<tbody>
									<tr class="order-table-header">
										<td colspan="6">
											<div class="order-info">
												<span>订单编号：<span class="order_num">{{$v['number']}}</span></span>
												<span>成交时间：<span class="order_num">{{date('Y-m-d H:i:s',$v['time'])}}</span></span>
											</div>
										</td>
									</tr>
									
									<tr class="order-table-item">
										<td class="goods">
											<a class="pic" href="#" title="查看宝贝详情" hidefocus="true" target="_blank">
												<img src="{{__ROOT__}}/{{$v['pic']}}" alt="查看宝贝详情" width="70" height="70">
											</a>
											<div class="desc">
												<p>
													<a href="H_D_i_{{$v['goods_gid']}}.html" target="_blank">{{msubstr($v['gname'],0,14)}}</a>
													<!--订单快照-->
													<a class="snapshot" href="H_D_i_{{$v['goods_gid']}}.html" target="_blank">[交易快照]</a>
												</p>
												{{foreach from="$v['options']" key="$gtname" value="$vo"}}
												<p>{{$gtname}} ：{{$vo}}</p>
												{{endforeach}}
											</div>
										</td>
										<td class="price" style="text-align:center;">
            								<p class="price-old">￥{{$v['marketprice']}}</p>
                                    		<p>￥{{$v['shopprice']}}</p>
										</td>
										<td class="quantity">{{$v['quantity']}}</td>
										<td class="total" rowspan="1">
						                    <ul>
												<li>
													<p class="total-price">￥{{$v['subtotal']}}</p>
													<p>(包邮)</p>
													<p></p>
												</li>
											</ul>
										</td>
										<td class="status" rowspan="1">
											{{if value="$v['status'] eq 1"}}
						                    <p class="">待付款</p>
						                    {{elseif value="$v['status'] eq 2"}}
						                     <p class="">待发货</p>
						                     {{elseif value="$v['status'] eq 3"}}
						                     <p class="">已发货</p>
						                     {{else}}
						                      <p class="">已完成</p>
						                     {{endif}}
						                    <a class="order-link" target="_blank" href="H_U_odd_{{$v['oid']}}.html">订单详情</a>
										</td>
										<td class="other" rowspan="1">
                                           <ul>
												<li>
													{{if value="$v['status'] eq 1"}}
													<a class="order-link order-remove" href="javascript:;" oid="{{$v['oid']}}" glid="{{$v['glid']}}">取消订单</a>
													{{endif}}
													{{if value="$v['status'] eq 2"}}
													<a class="order-link order-remind" href="javascript:;" >提醒卖家发货</a>
													{{endif}}
													{{if value="$v['status'] eq 4"}}
													<a class="order-linkremind" href="javascript:;">完成交易</a>
													{{endif}}
													{{if value="$v['status'] eq 3"}}
													<a class="order-link order-confirm" href="javascript:;" oid="{{$v['oid']}}">确认收货</a>
													{{endif}}
													
												</li>
											</ul>
										</td>
									</tr>
									<tr style="height: 56px;">
            							<td  style="font-weight: 700;" {{if value="$v['status'] neq 1"}}colspan="3"{{else}}colspan="4"{{endif}}>
            									<span>总计：</span>
            									<span style="color: #f36;">￥{{$v['subtotal']}} </span>
            							</td>
            							{{if value="$v['status'] neq 1"}}
            							<td  style="font-weight: 700;">
            									{{if value="$v['paymethod'] eq 1"}}
            									<span>付款方式:</span>
            									<span>货到付款</span>
            									{{elseif value="$v['paymethod'] eq 2"}}
            									<span>付款方式:</span>
            									<span>余额支付</span>
            									{{endif}}
            							</td>
            							{{endif}}
										{{if value="$v['status'] eq 1"}}
										<td style="text-align: center;color: #666;font-weight: 700;">等待付款</td>
										{{elseif value="$v['status'] eq 2"}}
										<td style="text-align: center;color: #666;font-weight: 700;">等待卖家发货</td>
										 {{elseif value="$v['status'] eq 3"}}
										 <td style="text-align: center;color: #666;font-weight: 700;">卖家已发货</td>
										 {{else}}
										  <td style="text-align: center;color: #666;font-weight: 700;">订单交易完成</td>
										  {{endif}}
										<td style="text-align: center;">
											{{if value="$v['status'] eq 1"}}
											<a href="H_C_ali_{{$v['oid']}}.html" style="display: inline-block;background: #f36;color: #fff;padding: 3px 9px;min-width: 52px;border: 1px solid #f36;border-radius: 3px;font-weight: 700;">去付款</a>
											{{elseif value="$v['status'] eq 2 || $v['status'] eq 3"}}
											<a href="javascript:;" style="display: inline-block;background: #599EF4;;color: #fff;padding: 3px 9px;min-width: 52px;border: 1px solid #2982F1;border-radius: 3px;font-weight: 700;">已付款</a>
											{{else}}
											<a href="javascript:;" style="display: inline-block;background: #9C3CFF;color: #fff;padding: 3px 9px;min-width: 52px;border: 1px solid #9C3CFF;border-radius: 3px;font-weight: 700;">交易完成</a>
											{{endif}}
										</td>
									</tr>
								</tbody>
							</table>
							{{endforeach}}
							<!--循环层 结束-->
						</div>
					</div>
					
					<!--订单详情 结束-->
					{{else}}
					<!--没有订单的时候 开始-->
					<div class="order-list-empty clearfloat">
        				<div class="empty-icon fl"></div>
						<div class="empty-content fl">
				            <h5 class="empty-title">哎呀，此状态下没有对应的订单！</h5>
				            <ul class="empty-list">
				                <li>去 <a href="H_S.html?words=上衣">服饰</a> 看看大家都喜欢的商品</li>
				             </ul>
				        </div>
				    </div>
				    <div class="pagination"></div>
					<!--没有订单的时候 结束-->
					{{endif}}
				</div>
				<!--用户右侧个人信息  结束-->
			</div>
		</div>
		<!--主体内容 结束-->
		
		
		<!--底部公共部分   开始-->
		<!--载入尾部-->
		{{include file="VIEW_PATH/Common/floor.php"}}	