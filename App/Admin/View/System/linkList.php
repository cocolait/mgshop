<!--载入头部-->
{{include file="VIEW_PATH/Common/header.php"}}

<script type="text/javascript">
		var delLinkUrl = "{{U('System/delLink')}}";
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
							<h3><button class="btn btn-blue7">友情链接列表</button></h3>
						</div>
						<div class="data" >
						<button class="btn btn-success" style="float:left;margin:5px 14px;" onclick='location.href="{{U('addLink')}}"'>+友情添加</button>
						</div>
						<div class="box-content box-nomargin">
										<table class='table table-striped dataTable table-bordered dataTable-tools'>
											<thead>
												<tr>
													<th width="60">ID</th>
													<th >友情名称</th>
													<th >添加时间</th>
													<th >友情地址</th>
													<th>操作</th>
												</tr>
											</thead>
											<tbody>
											{{foreach from="$listData" value="$v"}}
												<tr class="delTr">
													<td style="text-align:center;">{{$v['lid']}}</td>
													<td style="text-align:center;">{{$v['lname']}}</td>
													<td style="text-align:center;">{{date('Y-m-d H:i:s',$v['addtime'])}}</td>
													<td style="text-align:center;">{{$v['url']}}</td>
													<td style="text-align:center;">
													<div class="btn-group">													
														<a href="{{U("addLink",array("lid"=>$v["lid"]))}}" class="btn btn-mini tip " title="修改">
															<img src="{{__PUBLIC__}}/Admin/img/icons/fugue/document-task.png" alt="修改">
														</a>
														<a href="javascript:;" class="btn btn-mini tip delete"  title="删除"   lid="{{$v['lid']}}">
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