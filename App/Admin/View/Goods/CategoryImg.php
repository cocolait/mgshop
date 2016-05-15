<!--载入头部-->
{{include file="VIEW_PATH/Common/header.php"}}
<script type="text/javascript">
		var delCateUrl = "{{U('Goods/delCate')}}";
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
							<h3><button class="btn btn-blue7">商品分类图片列表</button></h3>
						</div>
						<div>
						<button class="btn btn-success" style="float:left;margin:5px 14px;" onclick='location.href="{{U('addCate')}}"'>+添加图片</button>
						</div>
						<div class="box-content box-nomargin">
										<table class='table table-striped dataTable table-bordered dataTable-tools'>
											<thead>
												<tr>
													<th width="100">分类图片</th>
													<th >分类商品名称</th>
													<th>操作</th>
												</tr>
											</thead>
											<tbody>
											{{foreach from="$listData" value="$v"}}
												<tr class="delTr">
													<td class="table-image"  style="text-align:center;">
														<a ><img src="{{$v['cate_img']}}" alt="" width="80" height="80"></a>
													</td>
													<td  style="text-align:center;">{{$v['cate_name']}}</td>
													<td style="text-align:center;">
														<div class="btn-group">													
															<a href="{{U('addCate',array('teid'=>$v['teid']))}}" class="btn btn-mini tip " title="修改">
																<img src="{{__PUBLIC__}}/Admin/img/icons/fugue/document-task.png" alt="修改">
															</a>
															<a href="javascript:;" class="btn btn-mini tip delete"   title="删除" teid="{{$v['teid']}}">
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