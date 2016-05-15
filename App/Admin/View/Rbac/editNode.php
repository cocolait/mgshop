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
			         <h3>修改节点</h3>
			</div>
			<div class="box-content">
				<form action="{{U('NodeEdit')}}" class='validate form-horizontal' method="post">
					<div class="control-group">
						<label for="req" class="control-label">{{$type}}名称：</label>
						<div class="controls">
							<input type="text" name="name" id="req" class='required' value="{{$node['name']}}">
						</div>
					</div>
					<div class="control-group">
						<label for="pw3" class="control-label">{{$type}}描述：</label>
						<div class="controls">
							<input type="text" name="title" id="pw3" value="{{$node['title']}}">
						</div>
					</div>
					<div class="control-group">
						<label for="pw4" class="control-label">是否开启：</label>
						<div class="controls">
							<input type="radio" name="status" id="pw4" class='required' equalTo="#pw3" {{if value='$node["status"] eq 1'}}checked='checked' {{endif}} value='1'>是&nbsp&nbsp  
							<input type="radio" name="status" id="pw4" class='required' equalTo="#pw3" {{if value='$node["status"] eq 0'}}checked='checked'{{endif}} value='0'>否
						</div>
					</div>

					<div class="control-group">
						<label for="pw3" class="control-label">排序：</label>
						<div class="controls">
							<input type="text" name="sort" id="pw3" value="{{$node['sort']}}">
						</div>
					</div>
					<input type='hidden' name='id' value="{{$node['id']}}"/>
					<input type='hidden' name='level' value="{{$node['level']}}"/>
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