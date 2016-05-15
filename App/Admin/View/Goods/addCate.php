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
							<h3 ><button class="btn btn-info">{{if value="$oldData"}}修改{{else}}添加{{endif}}图片</button></h3>
							<div style="float:right;margin:5px; cursor:pointer;" onclick='location.href="{{U('CategoryImg')}}"'>返回到上一级&nbsp<img src="{{__PUBLIC__}}/Admin/img/icons/essen/16/refresh.png"  title="返回到上一级" ></div>
						</div>
						<div class="box-content">
							<form action="" class="form-horizontal" method="post"  enctype="multipart/form-data">
									<div class="control-group">
										<label for="basic" class="control-label">商品名称</label>
										<div class="controls">
											<input type="text" name="cate_name" id="basic" class='input-square' value="{{isset($oldData['cate_name']) ? $oldData['cate_name'] : ''}}">
										</div>
									</div>
									
									<div class="control-group">
										<label for="select" class="control-label">所属分类</label>
										<div class="controls">
											<select name="category_cid" id="categorySelect" style="width: 224px;padding-left:5px;">
												<option value=""  tid="0">请选择...</option>
												{{foreach from="$cateData" value="$v"}}
												<option value="{{$v['cid']}}" {{if value="$cid eq $v['cid']"}}selected{{endif}}>{{$v['_name']}}</option>
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
												<option value="{{$v['tid']}}" {{if value="$tid eq $v['tid']"}}selected{{endif}}>{{$v['tname']}}</option>
												{{endforeach}}
											</select>
										</div>
									</div>
									
									<div class="control-group">
										<label for="password" class="control-label">分类商品图片</label>
										<div class="controls">
											{{if value="$oldData"}}
											<input type="hidden" name="cate_img" value="{{$oldData['cate_img']}}"/>
											<div class="box-content box-nomargin">
												<ul class="gallery">
													<li>
														<a href="{{__ROOT__}}/{{$oldData['cate_img']}}" class="preview fancy"><img src="{{__ROOT__}}/{{$oldData['cate_img']}}" ></a>
													</li>
												</ul>
											</div>
											<input type="file"  name="cate_img"/>
											{{else}}
											<input type="file" value="" name="cate_img"/>
											{{endif}}
										</div>
									</div>
									
									<div class="form-actions">
										<input type="hidden" name="teid" value="{{isset($_GET['teid']) ? $_GET['teid'] : 0}}" />
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
