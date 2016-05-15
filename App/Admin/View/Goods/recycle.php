<!--载入头部-->
{{include file="VIEW_PATH/Common/header.php"}}
<script type="text/javascript">
		var restoreUrl = "{{U('Lists/restoreGoods')}}";
		var delUrl = "{{U('Lists/delGoods')}}";
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
						<div class="box-head" style="border-bottom:none;">
							<h3><button class="btn btn-blue7">回收站列表</button></h3>
						</div>
						<div class="box-content box-nomargin">
										<table class='table table-striped dataTable table-bordered dataTable-tools'>
											<thead>
												<tr>
													<th width="50">ID</th>
													<th width="400">商品名称</th>
													<th width="150">价格</th>
													<th width="80">库存</th>
													<th width="80">点击</th>	
													<th width="100">添加时间</th>	
													<th>操作</th>
												</tr>
											</thead>
											<tbody>
											{{foreach from="$listData" value="$v"}}
												<tr class="delTr">
													<td  style="text-align:center;">{{$v['gid']}}</td>
													<td  style="text-align:center;">{{$v['gname']}}</td>
													<td  style="text-align:center;">
															<ul style="list-style:none;margin:0;text-align:center">
																<li>市场价：<del>¥{{$v['marketprice']}}</del></li>
																<li>商城价：<span>¥{{$v['shopprice']}}</span></li>
															<ul>
													</td>
													<td style="text-align:center;">{{$v['repertory']}}</td>
													<td style="text-align:center;">{{$v['click']}}</td>
													<td style="text-align:center;">{{date('Y-m-d',$v['time'])}}</td>
													
													<td style="text-align:center;">
														<div class="btn-group">
															<a href="javascript:;" class="btn btn-mini tip restore" title="还原" gid="{{$v['gid']}}">
																<img alt="还原" src="{{__PUBLIC__}}/Admin/img/icons/essen/16/refresh.png" title="还原">
															</a>
															<a href="javascript:;" class="btn btn-mini tip delete"   title="彻底删除" gid="{{$v['gid']}}" del="1">
																<img src="{{__PUBLIC__}}/Admin/img/icons/fugue/cross.png" alt="彻底删除">
															</a>
														</div>			
													</td>
												</tr>
												{{endforeach}}
											
											<tr>
											<td colspan="7">
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