<!--载入头部-->
{{include file="VIEW_PATH/Common/header.php"}}
<div class="main">
	<div class="container-fluid">
	<!--左边的导航-->
	{{include file="VIEW_PATH/Common/nav.php"}}
	<!--左边的导航 结束-->
	<script type="text/javascript">
			var sortUrl = "{{U('Goods/sortCategory')}}";
			var showUrl = "{{U('Goods/showCategory')}}";
			var delUrl = "{{U('Goods/delCategory')}}";
	</script>
	<div class="content">
			<div class="row-fluid">
				<div class="span12">
					<div class="box">
						<div class="box-head">
							<h3><button class="btn btn-blue7">商品分类列表</button></h3>
						</div>
						<div style="height:40px;">
							<button class="btn btn-success" style="float:left;margin:5px 14px;" onclick='location.href="{{U('addCategory')}}"'>+添加顶级分类</button>
						</div>
						<div class="box-content box-nomargin">
										<table class='table table-striped dataTable table-bordered '>
											<thead>
												<tr>
													<th>分类ID</th>
													<th>分类名称</th>
													<th>父级ID</th>
													<th>是否显示</th>
													<th>排序</th>												
													<th>操作</th>
												</tr>
											</thead>
											<tbody>
											{{foreach from="$listData" value="$v"}}
												<tr class="delTr">
													<td style="text-align:center;">{{$v['cid']}}</td>
													<td style="text-align:center;">{{$v['cname']}}</td>
													<td style="text-align:center;">{{$v['pid']}}</td>
													<td style="text-align:center;">
													{{if value="$v['is_show']"}}
													<a href="javascript:;" class="changeImg" dataUrl="{{__PUBLIC__}}/Admin/img/" cid="{{$v['cid']}}"><img src='{{__PUBLIC__}}/Admin/img/yes.gif' /></a>
													{{else}}
													<a href="javascript:;" class="changeImg" dataUrl="{{__PUBLIC__}}/Admin/img/" cid="{{$v['cid']}}"><img src='{{__PUBLIC__}}/Admin/img/no.gif' /></a>
													{{endif}}
													</td>
													<td style="text-align:center;"><input type="text" style="width:50px;text-align:center;" value="{{$v['csort']}}" cid="{{$v['cid']}}" class="csort"></td>
													<td style="text-align:center;">
													<div class="btn-group">
														<a href="{{U('addSon',array('cid'=>$v['cid']))}}" class="btn btn-mini tip " title="添加子分类">
															<img src="{{__PUBLIC__}}/Admin/img/icons/essen/16/plus.png" alt="添加子分类">
														</a>													
														<a href="{{U('editCategory',array('cid'=>$v['cid']))}}" class="btn btn-mini tip " title="修改">
															<img src="{{__PUBLIC__}}/Admin/img/icons/fugue/document-task.png" alt="修改">
														</a>
														<a href="javascript:;" class="btn btn-mini tip delete" title="删除" cid="{{$v['cid']}}">
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