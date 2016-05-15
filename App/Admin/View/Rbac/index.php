<!--载入头部-->
{{include file="VIEW_PATH/Common/header.php"}}
<script type="text/javascript">
		var showUserUrl = "{{U('showUser')}}";
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
							<h3><button class="btn btn-blue7">用户列表</button></h3>
						</div>
						<div class="data" >
						<button class="btn btn-success" style="float:left;margin:5px 14px;" onclick='location.href="{{U('addUser')}}"'>+添加用户</button>
						</div>
						<div class="box-content box-nomargin">
										<table class='table table-striped dataTable table-bordered dataTable-tools'>
											<thead>
												<tr>
													<th width="82">用户id</th>
													<th width="100">用户名称</th>
													<th width="100">用户所属角色</th>
													<th width="150">上一次登录时间</th>
													<th width="150">上一次登录ip</th>
													{{if value="$status"}}
													<th width="80">账号状态</th>
													<th  width="180">操作</th>
													{{endif}}
												</tr>
											</thead>
											<tbody>
											{{foreach from="$userData" value="$v"}}
												<tr class="delTr">
													<td style="text-align:center;">{{$v['aid']}}</td>
													<td style="text-align:center;">{{$v['uname']}}</td>
													<td style="text-align:center;">
														<ul style="list-style:none;margin:0;text-align:center">
															{{foreach from="$v['name']" value="$vv"}}
															<li>{{$vv}}</li>
															{{endforeach}}
														<ul>
													</td>
													<td style="text-align:center;">{{date('Y-m-d H:i:s',$v['logintime'])}}</td>
													<td style="text-align:center;">{{$v['loginip']}}</td>
													{{if value="$status"}}
													<td style="text-align:center;">
													{{if value="$v['mg_lock']"}}
													<a href="javascript:;" title="锁定" class="changeUser" dataUrl="{{__PUBLIC__}}/Admin/img/icons/essen/32/" aid="{{$v['aid']}}"><img src='{{__PUBLIC__}}/Admin/img/icons/essen/32/lock.png' /></a>
													{{else}}
													<a href="javascript:;" title="开启" class="changeUser" dataUrl="{{__PUBLIC__}}/Admin/img/icons/essen/32/" aid="{{$v['aid']}}"><img src='{{__PUBLIC__}}/Admin/img/icons/essen/32/check.png' /></a>
													{{endif}}
													</td>
													<td style="text-align:center;">
													<div class="btn-group">
																									
														<a href="{{U("editUser",array("aid"=>$v["aid"]))}}" class="btn btn-mini tip " title="修改角色">
															<img src="{{__PUBLIC__}}/Admin/img/icons/fugue/document-task.png" alt="修改角色">
														</a>
														<a href="javascript:;" class="btn btn-mini tip delete"  title="删除"   aid="{{$v['aid']}}">
															<img src="{{__PUBLIC__}}/Admin/img/icons/fugue/cross.png" alt="删除">
														</a>
														
													</div>			
													</td>
													{{endif}}
												</tr>
											{{endforeach}}
											<tr>
											<td colspan="7">
												<div class="dataTables_paginate paging_bootstrap pagination" id="pages">
													
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