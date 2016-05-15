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
						<div class="box-head">
							<h3 ><button class="btn btn-info">{{if value="!$tname"}}添加{{else}}修改{{endif}}商品类型</button></h3>
							<div style="float:right;margin:5px; cursor:pointer;" onclick='location.href="{{U('listType')}}"'>返回到上一级&nbsp<img src="{{__PUBLIC__}}/Admin/img/icons/essen/16/refresh.png"  title="返回到上一级" ></div>
						</div>
						<div class="box-content">
							<form action="" class="form-horizontal" method="post" >
									<div class="control-group">
										<label for="basic" class="control-label">商品类型名称</label>
										<div class="controls">
											<input type="text" name="tname" id="basic" class='input-square' value="{{$tname}}">
										</div>
									</div>
									<div class="form-actions">
									<input type="hidden" name="tid" value="{{isset($_GET['tid']) ? $_GET['tid'] : 0}}" />
										<button class="btn btn-primary" type="submit">确认提交</button>
									</div>
							</form>
						</div>
					</div>
				</div>
			</div>

		
		</div>	
	</div>
</div>	
<!-- 新增编辑器引入文件 -->
    <link rel="stylesheet" href="__PUBLIC__/kindeditor/themes/default/default.css" />
    <script src="__PUBLIC__/kindeditor/kindeditor.js"></script>
    <script src="__PUBLIC__/kindeditor/lang/zh_CN.js"></script>
    <script>
      KindEditor.ready(function(K) {
        var editor = K.editor({
          allowFileManager : true,       
          uploadJson : "{:U('Common/uploadImg',array('path'=>'Brand'))}",
          fileManagerJson : '__PUBLIC__/kindeditor/php/file_manager_json.php?dirpath=Brand',
        });       
        //上传背景图片
        K('#image1').click(function() {
          editor.loadPlugin('image', function() {
            editor.plugin.imageDialog({
            	//showRemote : false, //网络图片不开启
            	//showLocal : false, //不开启本地图片上传
             	imageUrl : K('#picurl').val(),
                clickFn : function(url, title, width, height, border, align) {
                K('#picurl').val(url);
                $('#thumb_url1').attr("src",url);
                editor.hideDialog();
              }
            });
          });
        });
      })

    </script>
<!-- 新增编辑器引入文件 -->
<!--载入尾部-->
{{include file="VIEW_PATH/Common/floor.php"}}