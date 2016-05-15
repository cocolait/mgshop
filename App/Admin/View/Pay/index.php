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
							<h3><button class="btn btn-blue7">充值列表</button></h3>
						</div>
						
						<div class="box-content box-nomargin">
										<table class='table table-striped dataTable table-bordered dataTable-tools'>
											<thead>
												<tr>
													<th width="50">用户id</th>
													<th width="200">用户名</th>
													<th width="200">用户昵称</th>
													<th width="200">注册时间</th>
													<th width="200">我的余额</th>
													<th width="80">账号状态</th>
													<th width="80">操作</th>		
												</tr>
											</thead>
											<tbody>
											{{foreach from="$userData" value="$v"}}
												<tr class="delTr">
													<td  style="text-align:center;">{{$v['uid']}}</td>
													<td  style="text-align:center;">{{$v['account']}}</td>
													<td  style="text-align:center;">{{$v['nickname']}}</td>
													<td  style="text-align:center;">{{date('Y-m-d H:i:s',$v['regtime'])}}</td>
													<td  style="text-align:center;">¥{{$v['pay']}}元</td>
													{{if value="$v['mg_lock']"}}
													<td style="text-align:center;">
															<img alt="锁定" src="{{__PUBLIC__}}/Admin/img/icons/essen/32/lock.png">
													</td>
													{{else}}
													<td style="text-align:center;">
														<img alt="开启" src="{{__PUBLIC__}}/Admin/img/icons/essen/32/check.png">
													</td>
													{{endif}}
													
													<td style="text-align:center;">
														<div class="btn-group">
															<a href="javascript:;" class="btn btn-mini tip bank-img" title="去充值" data-toggle="modal" uid="{{$v['uid']}}">
																<img alt="去充值" src="{{__PUBLIC__}}/Admin/img/icons/essen/32/bank.png">
															</a>
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
										
										<!--模态框 -->
										<div class="modal hide" id="myModal" aria-hidden="true" style="display: none;">
											<form action="{{U('Pay/addPay')}}" method="post" id="modalForm">
											  <div class="modal-header">
											    <button type="button" class="close" data-dismiss="modal">×</button>
											    <h3>充值中心</h3>
											  </div>
											  <div class="modal-body">
												    <div class="control-group">
														<div class="controls">
																<textarea name="pay" id="basictext" class="span9 input-square" rows="6" style="width:524px;height:70px;"></textarea>
														</div>
													</div>
											  </div>
											  <div class="modal-footer">
											  	<input type="hidden" name="uid" value="" id="modal-uid">
											    <a href="javascript:;" class="btn" data-dismiss="modal">关闭</a>
											    <a href="javascript:;" class="btn btn-primary" data-dismiss="modal" id="pay-go">充值</a>
											  </div>
											  </form>
										</div>
										<!--模态框 结束 -->
						</div>
					</div>
				</div>
			</div>
		</div>	
	</div>
</div>	

<!--载入尾部-->
{{include file="VIEW_PATH/Common/floor.php"}}