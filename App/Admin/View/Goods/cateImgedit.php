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
							<h3 ><button class="btn btn-info">添加图片</button></h3>
							<div style="float:right;margin:5px; cursor:pointer;" onclick='location.href="{{U('cateImgList')}}"'>返回到上一级&nbsp<img src="{{__PUBLIC__}}/Admin/img/icons/essen/16/refresh.png"  title="返回到上一级" ></div>
						</div>
						<div class="box-content">
							<form action="" class="form-horizontal" method="post" id="cateFormOne">
									<div class="control-group">
										<label for="select" class="control-label">所属分类</label>
										<div class="controls">
											<select name="cid"  style="width: 224px;padding-left:5px;" id="cateSelect">
												<option value="">请选择...</option>
												{{foreach from="$cateData" value="$v"}}
												<option value="{{$v['cid']}}" level="{{$v['_level']}}">{{$v['_name']}}</option>
												{{endforeach}}
											</select>
										</div>
									</div>
									<div class="control-group" id="levelTwo" style="display:none;">
										<label for="goods_sn" class="control-label">二级栏目图片</label>
										<div class="controls">
                                            <input type="hidden" name='mini_imgs_120x120' value=""  id="cate_mini_imgs"/>
                                            <input type="file" name='cate_mini' id='cate_mini'/>
										</div>
										<!-- 删除按钮 -->
										<div class="controls" id="mini-hide-show" style="position: relative;padding-top:10px;display:none;">
                                            <img alt="" src=""  class="cate-mini-show" style="width:120px;height:120px;">
                                            <a href="javascript:;" class="busyCate" style="display: block;position: absolute;top: -5px;left: 106px;" title="删除图片？" live="1"><img alt="" src="{{__PUBLIC__}}/Admin/img/icons/essen/16/busy.png"></a>
										</div>
									</div>
									
									<div class="control-group" id="levelOne1" style="display:none;">
										<label for="goods_sn" class="control-label">一级栏目图片(首页)</label>
										<div class="controls">
                                            <input type="hidden" name='max_imgs_250x130' value=""  id="cate_max_250x130"/>
                                          	<input type="file" name='cate-max250x130' id='cate-max250x130'/>
										</div>
										<!-- 删除按钮 -->
										<div class="controls" id="max-hide-show1" style="position: relative;padding-top:10px;display:none;">
                                            <img alt="" src=""  class="max-img-show1" style="width:250px;height:130px;">
                                            <a href="javascript:;" class="busyCate" style="display: block;position: absolute;top: -5px;left: 237px;" title="删除图片？" live="2"><img alt="" src="{{__PUBLIC__}}/Admin/img/icons/essen/16/busy.png"></a>
										</div>
										<!-- 删除按钮 结束-->
									</div>
									
									<div class="control-group" id="levelOne2" style="display:none;">
										<label for="goods_sn" class="control-label">一级栏目图片(列表)</label>
										<div class="controls">
                                            <input type="hidden" name='max_imgs_200x240' value=""  id="cate_max_200x240"/>
                                            <input type="file" name='cate-max200x240' id='cate-max200x240'/>
										</div>
										<!-- 删除按钮 -->
										<div class="controls" id="max-hide-show2" style="position: relative;padding-top:10px;display:none;">
                                            <img alt="" src=""  class="max-img-show2" style="width:200px;height:240px;">
                                            <a href="javascript:;" class="busyCate" style="display: block;position: absolute;top: -5px;left: 187px;" title="删除图片？" live="3"><img alt="" src="{{__PUBLIC__}}/Admin/img/icons/essen/16/busy.png"></a>
										</div>
										
										<!-- 删除按钮 结束-->
									</div>
									
									<div class="form-actions">
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
