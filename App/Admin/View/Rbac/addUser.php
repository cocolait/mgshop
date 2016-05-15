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
			<div class="box-head">
			        <h3 ><button class="btn btn-info">添加用户</button></h3>
					<div style="float:right;margin:5px; cursor:pointer;" onclick='location.href="{{U('index')}}"'>返回到上一级&nbsp<img src="{{__PUBLIC__}}/Admin/img/icons/essen/16/refresh.png"  title="返回到上一级" ></div>
			</div>
			<div class="box-content">
				<form action="" class='validate form-horizontal' method="post">
					<div class="control-group">
						<label for="req" class="control-label">用户名</label>
						<div class="controls">
							<input type="text" name="uname" id="req" class='required'>
						</div>
					</div>
					
					
					<div class="control-group">
						<label for="pw3" class="control-label">密码</label>
						<div class="controls">
							<input type="password" name="password" id="pw3" value="">
						</div>
					</div>
					
					<div class="control-group">
						<label for="select" class="control-label">所属角色</label>
						<div class="controls">
							<select name="role_id[]"  style="width: 224px;padding-left:5px;">
								<option value="">请选择角色...</option>
								{{foreach from="$roleData" value="$v"}}
								<option value="{{$v['id']}}">{{$v['name']}}</option>
								{{endforeach}}
							</select>
							<a href="javascript:;" title="添加一个角色" class="add-role">
								<img alt="添加一个角色" src="{{__PUBLIC__}}/Admin/img/icons/essen/32/plus.png">
							</a>
						</div>
					</div>
					<span id="last-sp"></span>
					<div class="form-actions">
						<input type="submit" class='btn btn-primary'>
					</div>
				</form>
			</div>
		       </div>
		</div>
	       </div>
	</div>	
      </div>
</div>	

{{include file="VIEW_PATH/Common/floor.php"}}
</body>
</html>