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
							<h3 ><button class="btn btn-info">修改分类</button></h3>
							<div style="float:right;margin:5px; cursor:pointer;" onclick='location.href="{{U('ListCategory')}}"'>返回到上一级&nbsp<img src="{{__PUBLIC__}}/Admin/img/icons/essen/16/refresh.png"  title="返回到上一级" ></div>
						</div>
						<div class="box-content">
							<form action="" class="form-horizontal" method="post" id="addCategoryForm">
									<div class="control-group">
										<label for="goods_name" class="control-label">分类名称</label>
										<div class="controls">
											<input type="text" name="cname"  class='input-square' value="{{$oldData['cname']}}">
										</div>
									</div>
									<div class="control-group">
										<label for="select" class="control-label">所属分类</label>
										<div class="controls">
											<select name="pid" style="padding-left:5px;width:224px;">
												<option value="0" >顶级分类</option>
												{{foreach from="$cateData" value="$v"}}
												<option value="{{$v['cid']}}" {{if value="$v['cid'] eq $oldData['pid']"}}selected{{endif}}>{{$v['_name']}}</option>
												{{endforeach}}
											</select>
										</div>
									</div>
									
									<div class="control-group">
										<label for="select" class="control-label">商品类型</label>
										<div class="controls">
											<select name="goods_type_tid" style="padding-left:5px;width:224px;">
												{{foreach from="$gData" value="$v"}}
												<option value="{{$v['tid']}}" {{if value="$v['tid'] eq $oldData['goods_type_tid']"}}selected{{endif}}>{{$v['tname']}}</option>
												{{endforeach}}
											</select>
										</div>
									</div>
									
									
									<div class="control-group">
										<label for="goods_name" class="control-label">分类排序</label>
										<div class="controls">
											<input type="text" name="csort"  class='input-square' value="{{$oldData['csort']}}">
										</div>
									</div>
									
									<div class="control-group">
										<label for="bbb" class="control-label">分类是否显示</label>
										<div class="controls">
											<label class="radio"><input name="is_show" value="1" type="radio" checked="checked">是</label>
											<label class="radio"><input name="is_show" value="0"  type="radio" >否</label>
										</div>
									</div>
									
									<div class="form-actions">
										<input type="hidden" name="cid" value="{{isset($_GET['cid']) ? $_GET['cid'] : 0}}"/>
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