<!--载入头部-->
{{include file="VIEW_PATH/Common/header.php"}}
<script type="text/javascript">
		var delUrl = "{{U('Lists/recycle')}}";
</script>

<div class="main">
	<div class="container-fluid">
	<!--左边的导航-->
	{{include file="VIEW_PATH/Common/nav.php"}}
	<!--左边的导航 结束-->
	<script type="text/javascript">
			var editStatus = "{{U('editStatus')}}";
	</script>
	<div class="content">
			<div class="row-fluid">
				<div class="span12">
					<div class="box">
						<div class="box-head" style="border-bottom:none; ">
							<h3><button class="btn btn-blue7">订单列表</button></h3>
						</div>
						<!--
						<div>
						<form action="" method="post">
							<input type="text" name="title" placeholder="输入订单号" value=""  style="float:left;margin:5px 14px;">
							<button class="btn btn-primary" type="submit"  style="float:left;margin:5px 0px;">搜索</button>					
						</form>
						</div>
						-->
						<div class="box-content box-nomargin">
										<table class='table table-striped dataTable table-bordered dataTable-tools'>
											<thead>
												<tr>
													<th width="50">订单id</th>
													<th width="200">订单号</th>
													<th width="80">订单状态</th>
													<th width="80">购买数量</th>
													<th width="70">价格总计</th>
													<th width="100">订单时间</th>	
													<th width="100">支付时间</th>	
													<th width="100">发货时间</th>
													<th width="100">收货时间</th>
													<th width="80">操作</th>		
												</tr>
											</thead>
											<tbody>
											{{foreach from="$orderData" value="$v"}}
												<tr class="delTr">
													<td  style="text-align:center;">{{$v['oid']}}</td>
													<td  style="text-align:center;">{{$v['number']}}</td>
													{{if value="$v['status'] eq 1"}}
								                    <td  style="text-align:center;">待付款</td>
								                    {{elseif value="$v['status'] eq 2"}}
								                     <td  style="text-align:center;">待发货</td>
								                     {{elseif value="$v['status'] eq 3"}}
								                     <td  style="text-align:center;">已发货</td>
								                     {{else}}
								                     <td  style="text-align:center;">已完成</td>
								                     {{endif}}
													<td  style="text-align:center;">{{$v['quantity']}}</td>
													<td  style="text-align:center;">¥{{$v['subtotal']}}</td>
													<td  style="text-align:center;">{{date('Y-m-d H:i:s',$v['time'])}}</td>
													{{if value="$v['plytime']"}}
													<td style="text-align:center;">{{date('Y-m-d H:i:s',$v['plytime'])}}</td>
													{{else}}
													<td style="text-align:center;">暂无</td>
													{{endif}}
													
													
													{{if value="$v['sendtime']"}}
													<td style="text-align:center;">{{date('Y-m-d H:i:s',$v['sendtime'])}}</td>
													{{else}}
													<td style="text-align:center;">暂无</td>
													{{endif}}
													
													{{if value="$v['puttime']"}}
													<td style="text-align:center;">{{date('Y-m-d H:i:s',$v['puttime'])}}</td>
													{{else}}
													<td style="text-align:center;">暂无</td>
													{{endif}}
													
													<td style="text-align:center;">
														<div class="btn-group">
															{{if value="$v['status'] eq 2"}}
															<a href="javascript:;" class="btn btn-mini tip editStatus" title="确认发货？" oid="{{$v['oid']}}" logid="{{$v['logid']}}">
																<img alt="确认发货？" src="{{__PUBLIC__}}/Admin/img/icons/essen/16/order.png">
															</a>
															{{endif}}
															{{if value="$v['status'] neq 1 && $v['status'] neq 2"}}
															<a href="javascript:;" class="btn btn-mini tip" title="已发货">
																<img alt="已发货" src="{{__PUBLIC__}}/Admin/img/icons/essen/16/finished-work.png">
															</a>
															{{endif}}
															{{if value="$v['status'] neq 1"}}
															<a href="{{U("addLogistics",array("oid"=>$v["oid"],"logid"=>$v["logid"]))}}" class="btn btn-mini tip " title="查看物流">
																<img alt="查看物流" src="{{__PUBLIC__}}/Admin/img/icons/essen/16/shipping.png">
															</a>
															{{endif}}
														</div>			
													</td>
													
												</tr>
												{{endforeach}}
											
											<tr>
											<td colspan="10">
												<div class="dataTables_paginate paging_bootstrap pagination" id="pages">
													{{$page}}
												</div>
												</td>
											</tr>
											</tbody>
											
										</table>
						</div>
					</div>
				</div>
			</div>
		</div>	
	</div>
</div>	

<!--载入尾部-->
{{include file="VIEW_PATH/Common/floor.php"}}