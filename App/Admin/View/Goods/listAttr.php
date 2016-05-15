<!--载入头部-->
{{include file="VIEW_PATH/Common/header.php"}}

<script type="text/javascript">
		var delUrl = "{{U('Goods/delAttr')}}";
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
							<h3><button class="btn btn-blue7">商品属性列表</button></h3>
							<div style="float:right;margin:5px; cursor:pointer;" onclick='location.href="{{U('listType')}}"'>返回到上一级&nbsp<img src="{{__PUBLIC__}}/Admin/img/icons/essen/16/refresh.png"  title="返回到上一级" ></div>
						</div>
						<div class="data" >
						<button class="btn btn-success" style="float:left;margin:5px 14px;" onclick='location.href="{{U('addAttr')}}"'>+添加属性</button>
						</div>
						<div class="box-content box-nomargin">
										<table class='table table-striped dataTable table-bordered dataTable-tools'>
											<thead>
												<tr>
													<th width="60">属性ID</th>
													<th width="80">属性名称</th>
													<th width="80">属性类别</th>
													<th >属性值</th>
													<th  width="180">操作</th>
												</tr>
											</thead>
											<tbody>
											{{foreach from="$listData" value="$v"}}
												<tr class="delTr">
													<td style="text-align:center;">{{$v['gtid']}}</td>
													<td style="text-align:center;">{{$v['gtname']}}</td>
													{{if value="$v['class']"}}
													<td style="text-align:center;">规格</td>
													{{else}}
													<td style="text-align:center;">属性</td>
													{{endif}}
													<td style="text-align:center;">{{$v['gtvalue']}}</td>
													<td style="text-align:center;">
													<div class="btn-group">													
														<a href="{{U("addAttr",array("gtid"=>$v["gtid"]))}}" class="btn btn-mini tip " title="修改">
															<img src="{{__PUBLIC__}}/Admin/img/icons/fugue/document-task.png" alt="修改">
														</a>
														<a href="javascript:;" class="btn btn-mini tip delete"  title="删除"   gtid="{{$v['gtid']}}">
															<img src="{{__PUBLIC__}}/Admin/img/icons/fugue/cross.png" alt="删除">
														</a>
													</div>			
													</td>
												</tr>
											{{endforeach}}
											<tr><td colspan="6">
												<div class="dataTables_paginate paging_bootstrap pagination" id="pages">
													{{$page}}
												</div>

												</td></tr>
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