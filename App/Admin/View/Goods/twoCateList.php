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
							<h3><button class="btn btn-blue7">二级栏目图片列表</button></h3>
							<div style="float:right;margin:5px; cursor:pointer;" onclick='location.href="{{U('cateImgList')}}"'>返回到上一级&nbsp<img src="{{__PUBLIC__}}/Admin/img/icons/essen/16/refresh.png"  title="返回到上一级" ></div>
						</div>
						<div>
						<button class="btn btn-success" style="float:left;margin:5px 14px;" onclick='location.href="{{U('cateImgedit')}}"'>+添加图片</button>
						</div>
						<div class="box-content box-nomargin">
										<table class='table table-striped dataTable table-bordered dataTable-tools'>
											<thead>
												<tr>
													<th>ID</th>
													<th>二级列表图片</th>
													<th>栏目级别</th>
													<th>分类名称</th>
													<th>操作</th>
												</tr>
											</thead>
											<tbody>
											{{foreach from="$listData" value="$v"}}
												<tr class="delTr">
													<td  style="text-align:center;">{{$v['cid']}}</td>
													<td class="table-image"  style="text-align:center;">
														<a href="{{__ROOT__}}/{{$v['mini_imgs_120x120']}}" class="preview fancy"><img src="{{__ROOT__}}/{{$v['mini_imgs_120x120']}}" alt="" width="80" height="80"></a>
													</td>
													<td  style="text-align:center;">二级栏目</td>
													<td  style="text-align:center;">{{$v['cname']}}</td>
													<td style="text-align:center;">
														<div class="btn-group">
															<a href="{{U('cateImgShow',array('cid'=>$v['cid'],'lev'=>2))}}" class="btn btn-mini tip " title="修改">
																<img src="{{__PUBLIC__}}/Admin/img/icons/fugue/document-task.png" alt="修改">
															</a>
															<a href="javascript:;" class="btn btn-mini tip cate_delete"   title="删除" cid="{{$v['cid']}}"  lev="2">
																<img src="{{__PUBLIC__}}/Admin/img/icons/fugue/cross.png" alt="删除">
															</a>
														</div>			
													</td>
												</tr>
											{{endforeach}}
											
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