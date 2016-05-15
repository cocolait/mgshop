<!--载入头部-->
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
						<div class="box-head" >
							<h3 ><button class="btn btn-info">修改密码</button></h3>
						</div>
						<div class="box-content">
							
							<form action="" class="form-horizontal" method="post" id="sysUserForm">
									<div class="control-group">
										<label for="goods_name" class="control-label">旧密码</label>
										<div class="controls">
											<input type="password" name="pwd"  class='input-square' value="">
										</div>
									</div>
									<div class="control-group">
										<label for="goods_name" class="control-label">新密码</label>
										<div class="controls">
											<input type="password" name="password"  class='input-square' value="">
										</div>
									</div>
									
									
									<div class="control-group">
										<label for="goods_name" class="control-label">确认新密码</label>
										<div class="controls">
											<input type="password" name="password2"  class='input-square' value="">
										</div>
									</div>
									
									<div class="form-actions">
										<button class="btn btn-success" type="submit">提交</button>
									</div>
							</form>
						</div>
					</div>
				</div>
			</div>

		
		</div>	
	</div>
</div>	

<!--载入尾部-->
{{include file="VIEW_PATH/Common/floor.php"}}