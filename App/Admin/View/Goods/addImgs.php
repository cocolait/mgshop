<!--载入头部-->
{{include file="VIEW_PATH/Common/header.php"}}

<script type="text/javascript">
	var delMini = "{{U('Lists/delMini')}}";
</script>

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
							<h3 ><button class="btn btn-info">添加图册</button></h3>
							<div style="float:right;margin:5px; cursor:pointer;" onclick='location.href="{{U('listGoods')}}"'>返回到上一级&nbsp<img src="{{__PUBLIC__}}/Admin/img/icons/essen/16/refresh.png"  title="返回到上一级" ></div>
						</div>
						<div class="box-content">
							<form action="" class="form-horizontal" method="post">
									<div class="alert alert-info alert-block">
  											<h4 class="alert-heading">商品图册</h4>
  									</div>
  									<div class="control-group">
										<label for="goods_sn" class="control-label">上传商品图</label>
										<div class="controls" id="mini-img">
											<input type="file" name='imgsG' id='imgsG'/>
										</div>
										<!-- 图片放置区域 -->
										<div style="height: 110px;width:100%;padding-left:55px;" id="imgs-show-area">
										</div>
										<!-- 图片放置区域 结束-->
									</div>
									
									<div class="control-group">
										<label for="bbb" class="control-label">是否显示</label>
										<div class="controls">
											<label class="radio"><input name="is_show" value="1" type="radio" checked="checked">开启</label>
											<label class="radio"><input name="is_show" value="0" type="radio">关闭</label>
										</div>
									</div>
									
									<div class="form-actions">
										<input type="hidden" name="gid"  value="{{$_GET['gid']}}" id="imgs-gid"/>
										<button class="btn btn-primary" type="submit">提交</button>
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