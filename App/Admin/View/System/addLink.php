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
							<h3 ><button class="btn btn-info">添加友情</button></h3>
							<div style="float:right;margin:5px; cursor:pointer;" onclick='location.href="{{U('linkList')}}"'>返回到上一级&nbsp<img src="{{__PUBLIC__}}/Admin/img/icons/essen/16/refresh.png"  title="返回到上一级" ></div>
						</div>
						<div class="box-content">
							<form action="" class="form-horizontal" method="post" id="addLinkForm">
									<div class="control-group">
										<label for="goods_name" class="control-label">友情名称</label>
										<div class="controls">
											<input type="text" name="lname"  class='input-square' value="{{isset($oldData['lname'])?$oldData['lname'] : ''}}">
										</div>
									</div>
									<div class="control-group">
										<label for="goods_name" class="control-label">友情Url</label>
										<div class="controls">
											<input type="text" name="url"  class='input-square' value="{{isset($oldData['url'])?$oldData['url'] : ''}}">
										</div>
									</div>
									
									<div class="form-actions">
										<input type="hidden" name="lid" value="{{isset($oldData['lid'])?$oldData['lid'] : 0}}">
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