<!--载入头部-->
{{include file="VIEW_PATH/Common/header.php"}}
<script type="text/javascript">
		var showUrl = "{{U('Lists/showBrand')}}";
		var hotUrl = "{{U('Lists/hotBrand')}}";
		var sortUrl = "{{U('Lists/sortBrand')}}";
		var delUrl = "{{U('Goods/delBrand')}}";
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
							<h3><button class="btn btn-blue7">商品品牌列表</button></h3>
						</div>
						<div>
						<form action="" method="post">
							<input type="text" name="title" placeholder="输入品牌名称" value=""  style="float:left;margin:5px 14px;">
							<button class="btn btn-primary" type="submit"  style="float:left;margin:5px 0px;">搜索</button>					
						</form>
						<button class="btn btn-success" style="float:right;margin:5px 14px;" onclick='location.href="{{U('addBrand')}}"'>+添加品牌</button>
						</div>
						<div class="box-content box-nomargin">
										<table class='table table-striped dataTable table-bordered dataTable-tools'>
											<thead>
												<tr>
													<th width="80">品牌logo</th>
													<th width="200">品牌名称</th>
													<th width="150">是否显示</th>
													<th width="150">是否热门</th>
													<th width="150">排序</th>	
													<th>操作</th>
												</tr>
											</thead>
											<tbody>
											{{foreach from="$listData" value="$v"}}
												<tr class="delTr">
													<td class="table-image"  style="text-align:center;">
														<a href="{{__ROOT__}}/{{$v['logo']}}" class="preview fancy">
															<img src="{{__ROOT__}}/{{$v['logo']}}" alt="" >
														</a>
													</td>
													<td  style="text-align:center;">{{$v['bname']}}</td>
													
													
													<td style="text-align:center;">
													{{if value="$v['is_show']"}}
													<a href="javascript:;" class="changeImg" dataUrl="{{__PUBLIC__}}/Admin/img/" bid="{{$v['bid']}}"><img src='{{__PUBLIC__}}/Admin/img/yes.gif' /></a>
													{{else}}
													<a href="javascript:;" class="changeImg" dataUrl="{{__PUBLIC__}}/Admin/img/" bid="{{$v['bid']}}"><img src='{{__PUBLIC__}}/Admin/img/no.gif' /></a>
													{{endif}}
													</td>
													
													<td style="text-align:center;">
													{{if value="$v['is_hot']"}}
													<a href="javascript:;" class="changeHot" dataUrl="{{__PUBLIC__}}/Admin/img/" bid="{{$v['bid']}}"><img src='{{__PUBLIC__}}/Admin/img/yes.gif' /></a>
													{{else}}
													<a href="javascript:;" class="changeHot" dataUrl="{{__PUBLIC__}}/Admin/img/" bid="{{$v['bid']}}"><img src='{{__PUBLIC__}}/Admin/img/no.gif' /></a>
													{{endif}}
													</td>
													
													<td style="text-align:center;"><input type="text" style="width:50px;text-align:center;" value="{{$v['bsort']}}" bid="{{$v['bid']}}" class="csort"></td>
													
													<td style="text-align:center;">
														<div class="btn-group">													
															<a href="{{U('addBrand',array('bid'=>$v['bid']))}}" class="btn btn-mini tip " title="修改">
																<img src="{{__PUBLIC__}}/Admin/img/icons/fugue/document-task.png" alt="修改">
															</a>
															<a href="javascript:;" class="btn btn-mini tip delete"   title="删除" bid="{{$v['bid']}}">
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