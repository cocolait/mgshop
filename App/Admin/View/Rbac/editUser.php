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
			         <h3 ><button class="btn btn-info">修改用户角色</button></h3>
					<div style="float:right;margin:5px; cursor:pointer;" onclick='location.href="{{U('index')}}"'>返回到上一级&nbsp<img src="{{__PUBLIC__}}/Admin/img/icons/essen/16/refresh.png"  title="返回到上一级" ></div>
			</div>
			<div class="box-content">
				<form action="" class='validate form-horizontal' method="post">
					<!-- <div class="control-group">
						<label for="req" class="control-label">用户名</label>
						<div class="controls">
							<input type="text" name="uname" id="req"  readonly="readonly" class='required' value="{{$oldData['uname']}}">
						</div>
					</div>
					
					<div class="control-group">
						<label class="control-label">旧密码</label>
						<div class="controls">
							<div class="input-append">
								<input type="password" readonly="readonly" name="password" value="{{$oldData['password']}}"  id="req" class='input-medium uneditable-input' style="width:183px;">
								<span class="add-on">
										<i class="icon-lock"></i>
								</span>
							</div>
							<p class="help-block"></p>
						</div>
					</div>
					<div class="control-group">
						<label for="pw3" class="control-label">新密码</label>
						<div class="controls">
							<input type="password" name="pwd" id="pw3" value="">
						</div>
					</div>
					<div class="control-group">
						<label for="pw3" class="control-label">确定新密码</label>
						<div class="controls">
							<input type="password" name="pwd2" id="pw3" value="">
						</div>
					</div>
					 -->
					{{foreach from="$oldRole" value="$vv"}}
					<div class="control-group">
						<label for="select" class="control-label">所属角色</label>
						<div class="controls">
							<select name="role_id[]"  style="width: 224px;padding-left:5px;">
								<option value="">请选择角色...</option>
								{{foreach from="$roleData" value="$v"}}
								<option value="{{$v['id']}}" {{if value="$vv['role_id'] eq $v['id']"}}selected{{endif}}>{{$v['name']}}</option>
								{{endforeach}}
							</select>
							<a href="javascript:;" title="添加一个角色" class="add-role">
								<img alt="添加一个角色" src="{{__PUBLIC__}}/Admin/img/icons/essen/32/plus.png">
							</a>
						</div>
					</div>
					{{endforeach}}
					<span id="last-sp"></span>
					<div class="form-actions">
						<input type="hidden" name="aid" value="{{isset($_GET['aid'])?$_GET['aid']:0}}">
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