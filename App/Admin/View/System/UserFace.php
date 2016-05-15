<!--载入头部-->
{{include file="VIEW_PATH/Common/header.php"}}

<style type="text/css">
		/*去掉uploadify上传按钮的边框*/
	    .uploadify-button {
	        background-color: transparent;
	        border: none;
	        padding: 0;
	    }
	    .uploadify-button:hover {
	        background-color: transparent;
    	}
 </style> 

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
						<h3 ><button class="btn btn-info">修改头像</button></h3>
					</div>
					<div class="box-content">
						<div class="cl">
							<div class="pull-left" id="face-left">
								<h3>用户头像</h3>
								{{if value="!$face"}}
								<img src="{{__PUBLIC__}}/Admin/img/sample/180x220.gif" alt="用户头像" class="face-img">
								{{else}}
								<img src="{{__ROOT__}}/{{$face}}" alt="用户头像" class="face-img">
								{{endif}}
							</div>
							<div class="details pull-left userprofile" style="position: relative;">
									<div class="control-group" style="position: absolute;top: 90px;left: 10px;">
										<div class="controls">
                                            <input type="file" name='face' id='face'/>
										</div>
									</div>
							</div>
						</div>
					
					</div>
				</div>
			</div>
		</div>
	</div>	
	</div>
</div>	

<!--载入尾部-->
{{include file="VIEW_PATH/Common/floor.php"}}
