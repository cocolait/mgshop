<!--载入头部-->
{{include file="VIEW_PATH/Common/header.php"}}

<script type="text/javascript">
	var getAttrUrl = "{{U('Lists/getAttr')}}";
	var getNormsUrl = "{{U('Lists/getNorms')}}";
	var delPic = "{{U('Lists/delPic')}}";
	//var delMini = "{{U('Lists/delMini')}}";
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
							<h3 ><button class="btn btn-info">添加商品</button></h3>
							<div style="float:right;margin:5px; cursor:pointer;" onclick='location.href="{{U('listGoods')}}"'>返回到上一级&nbsp<img src="{{__PUBLIC__}}/Admin/img/icons/essen/16/refresh.png"  title="返回到上一级" ></div>
						</div>
						<div class="box-content">
							<form action="" class="form-horizontal" method="post" id="addGoodsForm">
									<div class="alert alert-info alert-block">
  											<h4 class="alert-heading">基本信息</h4>
  									</div>
  									
  									<div class="control-group">
										<label for="select" class="control-label">所属分类</label>
										<div class="controls">
											<select name="category_cid" id="categorySelect" style="width: 224px;padding-left:5px;">
												<option value=""  tid="0">请选择...</option>
												{{foreach from="$cateData" value="$v"}}
												<option value="{{$v['cid']}}"  tid="{{$v['goods_type_tid']}}">{{$v['_name']}}</option>
												{{endforeach}}
											</select>
										</div>
									</div>
									
									<div class="control-group">
										<label for="select" class="control-label">所属品牌</label>
										<div class="controls">
											<select name="brand_bid"  style="width: 224px;padding-left:5px;">
												<option value="">请选择...</option>
												{{foreach from="$brandData" value="$v"}}
												<option value="{{$v['bid']}}">{{$v['bname']}}</option>
												{{endforeach}}
											</select>
										</div>
									</div>
									
									
									<div class="control-group">
										<label for="select" class="control-label">所属商品类型</label>
										<div class="controls">
											<select name="goods_type_tid"  style="width: 224px;padding-left:5px;">
												<option value="">请选择...</option>
												{{foreach from="$TypeData" value="$v"}}
												<option value="{{$v['tid']}}">{{$v['tname']}}</option>
												{{endforeach}}
											</select>
										</div>
									</div>
									
									
									<div class="control-group">
										<label for="goods_name" class="control-label">商品名称</label>
										<div class="controls">
											<input type="text" name="gname" class='input-square' value="">
										</div>
									</div>
									
									<div class="control-group">
										<label for="goods_sn" class="control-label">单位</label>
										<div class="controls">
											<input type="text" name="unit" id="goods_sn" class='input-square'  value="件">
										</div>
									</div>
									
									<div class="control-group">
										<label for="goods_sn" class="control-label">市场价</label>
										<div class="controls">
											<input type="text" name="marketprice"  class='input-square'  value="">
										</div>
									</div>
									
									<div class="control-group">
										<label for="goods_sn" class="control-label">商城价</label>
										<div class="controls">
											<input type="text" name="shopprice" class='input-square'  value="">
										</div>
									</div>
									<div class="control-group">
										<label for="goods_sn" class="control-label">商品库存</label>
										<div class="controls">
											<input type="text" name="repertory" class='input-square'  value="">
										</div>
									</div>
									
									<div class="alert alert-info alert-block">
  											<h4 class="alert-heading">商品属性</h4>
  									</div>
  									<!-- 商品属性  开始 -->
  									<div class="goods-attr" ></div>
									<!-- 商品属性  结束 -->
									
									<div class="alert alert-info alert-block">
  											<h4 class="alert-heading">商品规格</h4>
  									</div>
  									<!-- 商品属性  规格  开始-->
  									<div class="goods-norms"></div>
									<!-- 商品属性  规格 结束-->
									
									
									<div class="alert alert-info alert-block">
  											<h4 class="alert-heading">列表图</h4>
  									</div>
  									<div class="control-group">
										<label for="goods_sn" class="control-label">上传列表图</label>
										<div class="controls">
                                            <input type="hidden" name='pic' value='' id="pictrue"/>
                                            <input type="file" name='pictrue' id='pic'/>
										</div>
										<!-- 删除按钮 -->
										<div class="controls" id="pic-show" style="position: relative;padding-top:10px;">
                                            <img alt="" src=""  class="pic-img-show" style="width:100px;height:100px;">
                                            <a href="javascript:;" class="busyPic" style="display: block;position: absolute;top: -5px;left: 86px;" title="删除图片？"><img alt="" src="{{__PUBLIC__}}/Admin/img/icons/essen/16/busy.png"></a>
										</div>
									</div>
									
									
									<div class="alert alert-info alert-block" style="position: relative;">
  											<h4 class="alert-heading">商品详细</h4>
  											<a href="javascript:" style="position: absolute;top: 3px;right: 5px;" title="打开文本编译器" id="intro"><img alt="" src="{{__PUBLIC__}}/Admin/img/icons/essen/32/communication.png"></a>
  									</div>
									<div class="control-group goods-editor2" style="display:none;">
										<script id="editor" type="text/plain" style="width:100%;height:240px;" name="intro"></script>
										<script>
							    			var ue = UE.getEditor('editor');
										</script>
									</div>
									
									
									<div class="alert alert-info alert-block" style="position: relative;">
  											<h4 class="alert-heading">售后服务</h4>
  											<a href="javascript:;" style="position: absolute;top: 3px;right: 5px;" title="打开文本编译器" id="service"><img alt="" src="{{__PUBLIC__}}/Admin/img/icons/essen/32/communication.png"></a>
  									</div>
									<div class="control-group goods-editor1" style="display:none;">
										<script id="editor2" type="text/plain" style="width:100%;height:240px;" name="service"></script>
										<script>
							    			var ue2 = UE.getEditor('editor2');
										</script>
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