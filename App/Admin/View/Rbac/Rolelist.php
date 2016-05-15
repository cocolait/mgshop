<!--头部-->
{{include file="VIEW_PATH/Common/header.php"}}

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
			<h3>角色列表</h3>
			</div>
			<div class="box-content box-nomargin" style="background: #f1f1f1;">
			    <table class='table table-striped table-media table-bordered dataTable'>
			         <thead>
				   <tr>	
				   	<th width="35">ID</th>
					<th>角色名称</th>
					<th >角色描述</th>
					<th>开启状态</th>
					<th width="200">操作</th>
				    </tr>
				</thead>
				<tbody>
				    {{foreach from="$RoleData" value="$v"}}
				     <tr>
				     	<td style="width:25px;text-align:center">{{$v['id']}}</td>
						<td style="text-align:center">{{$v['name']}}</td>
						<td style="text-align:center">{{$v['remark']}}</td>
						<td style="text-align:center">
							{{if value='$v["status"]'}}开启{{else}}禁用{{endif}}
						</td>
					
				            <td class='actions_big'>
				            	
							    <div class="btn-group" style="text-align:center">
							      	<a href="{{U('access',array('rid' => $v["id"]))}}"  class='btn btn-mini tip'>
							      	
								 		 <img alt="配置权限" src="{{__PUBLIC__}}/Admin/img/icons/essen/32/statistics.png" title="配置权限">
							        </a>
							     </div>
							  
							     
							</td>
					</tr>
				    {{endforeach}}
				    
				</tbody>
			     </table>
			   <!--   <div class="dataTables_paginate paging_bootstrap pagination" id="pages">
			     {{$page}}
				</div> -->
			</div>
		      </div>
	          </div>
	   </div>
         </div>	
     </div>
</div>	

<!--载入尾部-->
{{include file="VIEW_PATH/Common/floor.php"}}
</body>
</html>