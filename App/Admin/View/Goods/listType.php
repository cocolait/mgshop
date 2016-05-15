<!--载入头部-->
{{include file="VIEW_PATH/Common/header.php"}}
<script type="text/javascript">
		var delUrl = "{{U('Goods/delType')}}";
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
						<div class="box-head">
							<h3><button class="btn btn-blue7">商品类型列表</button></h3>
						</div>
						<div>
						<form action="" method="post">
									
						</form>
						<button class="btn btn-success" style="float:left;margin:5px 14px;" onclick='location.href="{{U('addType')}}"'>+添加类型</button>
						</div>
						<div class="box-content box-nomargin">
										<table class='table table-striped dataTable table-bordered dataTable-tools'>
											<thead>
												<tr>
													<th width="60">类型ID</th>
													<th width="260">类型名称</th>
													<th width="200">操作</th>
												</tr>
											</thead>
											<tbody>
											{{foreach from="$typeData" value="$v"}}
												<tr class="delTr">
													<td style="text-align: center;">{{$v['tid']}}</td>
													<td style="text-align: center;">{{$v['tname']}}</td>
													
													<td style="text-align: center;">
														<div class="btn-group">
															<a href="{{U('listAttr')}}" class="btn btn-mini tip " title="属性列表">
																<img alt="属性列表" src="{{__PUBLIC__}}/Admin/img/icons/essen/16/category.png">
															</a>													
															<a href="{{U('addType',array('tid'=>$v['tid']))}}" class="btn btn-mini tip " title="修改">
																<img src="{{__PUBLIC__}}/Admin/img/icons/fugue/document-task.png" alt="修改">
															</a>
															<a href="javascript:;" class="btn btn-mini tip delete"  title="删除" tid="{{$v['tid']}}">
																<img src="{{__PUBLIC__}}/Admin/img/icons/fugue/cross.png" alt="删除">
															</a>
														</div>			
													</td>
												</tr>
											{{endforeach}}
											<tr>
											<td colspan="3">
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