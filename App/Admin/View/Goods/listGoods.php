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

	<div class="content">
			<div class="row-fluid">
				<div class="span12">
					<div class="box">
						<div class="box-head">
							<h3><button class="btn btn-blue7">商品列表</button></h3>
						</div>
						<div>
						<button class="btn btn-success" style="float:left;margin:5px 14px;" onclick='location.href="{{U('addGoods')}}"'>+添加商品</button>
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
															<a href="{{U('imgsList',array('gid'=>$v['gid']))}}" class="btn btn-mini tip " title="商品图册">
																<img alt="商品图册" src="{{__PUBLIC__}}/Admin/img/icons/essen/16/illustration.png">
															</a>		
															<a href="{{U('goodsList',array('gid'=>$v['gid'],'tid'=>$v['goods_type_tid']))}}" class="btn btn-mini tip " title="货品列表">
																<img alt="货品列表" src="{{__PUBLIC__}}/Admin/img/icons/essen/16/category.png">
															</a>													
															<a href="{{U('editGoods',array('gid'=>$v['gid']))}}" class="btn btn-mini tip " title="修改">
																<img src="{{__PUBLIC__}}/Admin/img/icons/fugue/document-task.png" alt="修改">
															</a>
															<a href="javascript:;" class="btn btn-mini tip delete"  title="回收站" gid="{{$v['gid']}}" del="0">
																<img src="{{__PUBLIC__}}/Admin/img/icons/fugue/cross.png" alt="回收站">
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