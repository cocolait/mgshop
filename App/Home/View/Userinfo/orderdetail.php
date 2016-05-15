<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>蘑菇街-订单详情</title>
		<!--载入头部-->
		{{include file="VIEW_PATH/Common/header.php"}}
		
		<!--下滑线2px-->
		<div class="overstriking"></div>
		
		<!--公共头部样式 结束-->
		
		<!--主体内容  订单 详情 开始-->
		
		<div class="muorder">
			<div class="mu-warp">
				<h2 class="mu-head">订单详情</h2>
				<!--订单时间 开始-->
				<div class="mu_d_lines">
		            <span class="mw">订单编号: {{$orderData['number']}}</span>
		            <span class="mw">当前状态: 
		            {{if value="$orderData['status'] eq 1"}}
		            <span class="cancel">等待付款</span>
		            {{elseif value="$orderData['status'] eq 2"}}
		             <span class="cancel">等待卖家发货</span>
		             {{elseif value="$orderData['status'] eq 3"}}
		              <span class="cancel">卖家已发货</span>
		              {{else}}
		               <span class="cancel">交易完成</span>
		               {{endif}}
		            </span>
        		</div>
				<!--订单时间 结束-->
				<!--订单进度 开始-->
				<div class="md_process">
					<div {{if value="$orderData['status'] eq 1"}}class="md_process_wrap md_process_step1" {{elseif value="$orderData['status'] eq 2"}}class="md_process_wrap md_process_step2"{{elseif value="$orderData['status'] eq 3"}}class="md_process_wrap md_process_step3"{{elseif value="$orderData['status'] eq 4"}}class="md_process_wrap md_process_step4"{{else}}class="md_process_wrap md_process_step5"{{endif}}>
        			<!-- class: step样式不加为全黑，md_process_step1 为第一步，依次类推 -->
        			<div class="md_process_sd"></div>
	        			<i class="md_process_i md_process_i1">1
	            		<span class="md_process_tip">提交订单</span>
	        				<span class="md_process_tip_bt">{{date('Y-m-d H:i:s',$orderData['time'])}}</span>
	        			</i>
						<i class="md_process_i md_process_i2">2
	            			<span class="md_process_tip">买家支付</span>
	            			{{if value="$orderData['plytime']"}}
	            			<span class="md_process_tip_bt">{{date('Y-m-d H:i:s',$orderData['plytime'])}}</span>
	            			{{endif}}
	                    </i>
						<i class="md_process_i md_process_i3">3
	            			<span class="md_process_tip">卖家发货</span>
	            			{{if value="$orderData['sendtime']"}}
	            			<span class="md_process_tip_bt">{{date('Y-m-d H:i:s',$orderData['sendtime'])}}</span>
	                    	{{endif}}
	                    </i>
						<i class="md_process_i md_process_i4">4
	            			<span class="md_process_tip">确认收货</span>
	            			{{if value="$orderData['puttime']"}}
	            			<span class="md_process_tip_bt">{{date('Y-m-d H:i:s',$orderData['puttime'])}}</span>
	                   		{{endif}}
	                    </i>
						<i class="md_process_i md_process_i5">5
	            			<span class="md_process_tip">评价</span>
	                    </i>
    				</div>
				</div>
				<!--订单进度 结束-->
				
				<!--详细信息 开始-->
				<div class="mu_d_info">
        			<h5 class="mu_d_info_tit">详细信息</h5>
					<dl class="mu_d_infolist">
						<dt>收 货 人：</dt>
						<dd>{{$orderData['consignee']}}</dd>
						<dt>收货地址：</dt>
						<dd>{{$orderData['address']}}</dd>
						<dt>联系电话：</dt>
						<dd>{{$orderData['mobile']}}</dd>
					</dl>
				</div>
				<!--详细信息 结束-->
				
				
				<!--物流信息 开始-->
				{{if value="$LogData"}}
				<div class="mu_d_info">
        			<h5 class="mu_d_info_tit">物流信息</h5>
					<dl class="mu_d_infolist">
						<dt>运单号码：</dt>
						<dd>{{$LogData['waybill']}}</dd>
						<dt>物流公司：</dt>
						<dd>{{$LogData['company']}}</dd>
						<dt>发货地址：</dt>
						<dd>
							<span>{{$LogData['address']}}</span>
							<span style="font-weight: 700;margin-right: 10px;color: #333;">{{$LogData['zipcode']}}</span>
							<span style="font-weight: 700;margin-right: 10px;color: #333;">{{$LogData['logname']}}</span>
							<span style="font-weight: 700;margin-right: 10px;color: #333;">{{$LogData['cellphone']}}</span>
						</dd>
						<dt>客服电话：</dt>
						<dd>{{$LogData['tel']}}</dd>
					</dl>
				</div>
				<!--物流信息 结束-->
				{{endif}}
				
				<!--订单信息 开始-->
				<div class="mu_d_orderlist">
					<h5 class="mu_d_info_tit">商品清单</h5>
					<ul class="mo_orderlist">
						<li class="mo_orderitem">
							<!--标题 开始-->
							<ul class="mo_orderitem_thlist clearfloat">
					            <li class="td_goods">商品</li>
					            <li class="td_price">单价（元）</li>
					            <li class="td_count">数量</li>
					            <li class="td_wipay">交易状态</li>
					           	<li class="td_total">订单额（元）</li>
        					</ul>
							<!--标题 结束-->
							<!--信息 开始-->
							<ul class="mo_orderitem_det clearfloat">
								<!--商品 单元 数量  开始-->
								<li class="td_colrow">
									<ul class="td_colrow_wrap clearfloat">
										<li class="td_goods">
											<div class="td_wrap">
                            					<a href="H_D_i_{{$orderData['goods_gid']}}.html" target="_blank">
                            						<img class="mo_orderitem_gdimg" src="{{__ROOT__}}/{{$orderData['pic']}}"  height="60" width="60">
                            					</a>
                            					<p class="mo_orderitem_h mo_orderitem_gdinfo mb4">
                            						<a href="H_D_i_{{$orderData['goods_gid']}}.html" target="_blank">{{msubstr($orderData['gname'],0,16)}}</a>
                            					</p>
                            					{{foreach from="$orderData['options']" key="$gtname" value="$gt_name"}}
												<p class="mo_orderitem_d mo_orderitem_gdinfo">{{$gtname}}：{{$gt_name}}</p>
					                          	{{endforeach}}
					                        </div>
										</li>
										<li class="td_price">
											<div class="td_wrap">
                            					<p class="mu_money mu_org_money">¥ {{$orderData['marketprice']}}</p>
                                                <p class="mu_money">¥ {{$orderData['shopprice']}}</p>
                                            </div>
										</li>
										<li class="td_count">
                        					<div class="td_wrap">{{$orderData['quantity']}}</div>
                    					</li>
									</ul>
								</li>
								<!--商品 单元 数量  结束-->
								<li class="td_wipay">
                					<div class="td_wrap">
                    					 {{if value="$orderData['status'] eq 1"}}
							            <span class="cancel">订单未付款</span>
							            {{elseif value="$orderData['status'] eq 2"}}
							             <span class="cancel">卖家待发货</span>
							             {{elseif value="$orderData['status'] eq 3"}}
							              <span class="cancel">卖家已发货</span>
							              {{else}}
							               <span class="cancel">交易完成</span>
							              {{endif}}               
                					</div>
            					</li>
								<li class="td_total">
                					<div class="td_wrap">
                    				<span class="mo_orderitem_money_gray mu_money">¥ {{$orderData['subtotal']}}</span>
                                    </div>
            					</li>
							</ul>
							<!--信息 结束-->
						</li>
					</ul>
				</div>
				
			</div>
			<!--订单信息 结束-->
			
		</div>
		
		<!--主体内容  订单 详情 开始-->
		
		
		<!--底部公共部分   开始-->
		<!--载入尾部-->
		{{include file="VIEW_PATH/Common/floor.php"}}	