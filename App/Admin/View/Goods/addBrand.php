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
							<h3 ><button class="btn btn-info">{{if value="$oldData"}}修改{{else}}添加{{endif}}品牌</button></h3>
							<div style="float:right;margin:5px; cursor:pointer;" onclick='location.href="{{U('listBrand')}}"'>返回到上一级&nbsp<img src="{{__PUBLIC__}}/Admin/img/icons/essen/16/refresh.png"  title="返回到上一级" ></div>
						</div>
						<div class="box-content">
							<form action="" class="form-horizontal" method="post" id="addBrandForm" enctype="multipart/form-data">
									<div class="control-group">
										<label for="basic" class="control-label">品牌名称</label>
										<div class="controls">
											<input type="text" name="bname" id="basic" class='input-square' value="{{isset($oldData['bname']) ? $oldData['bname'] : ''}}">
										</div>
									</div>
									
									<div class="control-group">
										<label for="password" class="control-label">品牌排序</label>
										<div class="controls">
											<input type="text" name="bsort" id="password" class='input-square'  value="{{isset($oldData['bsort']) ? $oldData['bsort'] : ''}}">
										</div>
									</div>
									<div class="control-group">
										<label for="password" class="control-label">品牌LOGO</label>
										<div class="controls">
											{{if value="$oldData"}}
											<input type="hidden" name="logo" value="{{$oldData['logo']}}"/>
											<div class="box-content box-nomargin">
												<ul class="gallery">
													<li>
														<a href="{{__ROOT__}}/{{$oldData['logo']}}" class="preview fancy"><img src="{{__ROOT__}}/{{$oldData['logo']}}" ></a>
													</li>
												</ul>
											</div>
											<input type="file"  name="logo"/>
											{{else}}
											<input type="file" value="" name="logo"/>
											{{endif}}
										</div>
									</div>
									
									<div class="control-group">
										<label for="bbb" class="control-label">是否显示</label>
										<div class="controls">
											{{if value="$oldData"}}
											<label class="radio"><input name="is_show" value="1" type="radio" {{if value="$oldData['is_show'] eq 1"}}checked="checked"{{endif}}>开启</label>
											<label class="radio"><input name="is_show" value="0"  type="radio" {{if value="$oldData['is_show'] neq 1"}}checked="checked"{{endif}}>关闭</label>
											{{else}}
											<label class="radio"><input name="is_show" value="1" type="radio" checked="checked">开启</label>
											<label class="radio"><input name="is_show" value="0"  type="radio" >关闭</label>
											{{endif}}
										</div>
									</div>
									
									<div class="control-group">
										<label for="bbb" class="control-label">是否热门</label>
										<div class="controls">
											{{if value="$oldData"}}
											<label class="radio"><input name="is_hot" value="1" type="radio" {{if value="$oldData['is_hot'] eq 1"}}checked="checked"{{endif}}>是</label>
											<label class="radio"><input name="is_hot" value="0"  type="radio" {{if value="$oldData['is_hot'] neq 1"}}checked="checked"{{endif}}>否</label>
											{{else}}
											<label class="radio"><input name="is_hot" value="1" type="radio" >是</label>
											<label class="radio"><input name="is_hot" value="0"  type="radio" checked="checked">否</label>
											{{endif}}
										</div>
									</div>
									
									<div class="form-actions">
										<input type="hidden" name="bid" value="{{isset($_GET['bid']) ? $_GET['bid'] : 0}}" />
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
