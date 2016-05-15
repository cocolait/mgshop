<!--载入头部-->
{{include file="VIEW_PATH/Common/header.php"}}
<script type="text/javascript">
		var delUrl = "{{U('Goods/goodsListDel')}}";
</script>

<div class="main">
	<div class="container-fluid">
	<!--左边的导航-->
	{{include file="VIEW_PATH/Common/nav.php"}}
	<!--左边的导航 结束-->

	<div class="content">
			<div class="row-fluid">
				<div class="span12">
					<div class="box">
						<div class="box-head" >
							<h3><button class="btn btn-blue7">货品列表</button></h3>
							<div style="float:right;margin:5px; cursor:pointer;" onclick='location.href="{{U('listGoods')}}"'>返回到上一级&nbsp<img src="{{__PUBLIC__}}/Admin/img/icons/essen/16/refresh.png"  title="返回到上一级" ></div>
						</div>
						
						<div>
							<button class="btn btn-success" style="float:left;margin:5px 14px;" onclick='location.href="{{U('goodsListAdd',array('gid'=>$_GET['gid']))}}"'>+添加货品</button>
						</div>
					
						<div class="box-content box-nomargin">
										<table class='table table-striped dataTable table-bordered dataTable-tools'>
											<thead>
												<tr>
													<th width="70">货品ID</th>
													{{foreach from="$specData" value="$v"}}
													<th width="100">{{$v['gtname']}}</th>
													{{endforeach}}
													<th width="100">库存</th>
													<th width="260">货号</th>
													<th width="200">操作</th>
												</tr>
											</thead>
											<tbody>
											{{foreach from="$listData" value="$v"}}
												<tr class="delTr">
													<td style="text-align: center;">{{$v['glid']}}</td>
													{{foreach from="$v['spce']" value="$gt_name"}}
													<td style="text-align: center;">{{$gt_name}}</td>
													{{endforeach}}
													<td style="text-align: center;">{{$v['inventory']}}</td>
													<td style="text-align: center;">{{$v['number']}}</td>
													<td style="text-align: center;">
														<div class="btn-group">
															<a href="{{U('goodsListAdd',array('glid'=>$v['glid'],'gid'=>$_GET['gid']))}}" class="btn btn-mini tip " title="修改">
																<img src="{{__PUBLIC__}}/Admin/img/icons/fugue/document-task.png" alt="修改">
															</a>
															<a href="javascript:;" class="btn btn-mini tip delete"  title="删除"  glid="{{$v['glid']}}">
																<img src="{{__PUBLIC__}}/Admin/img/icons/fugue/cross.png" alt="删除">
															</a>
														</div>			
													</td>
												</tr>
											{{endforeach}}
											<tr>
											<td colspan="6">
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