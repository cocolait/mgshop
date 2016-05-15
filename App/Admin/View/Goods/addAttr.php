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
							<h3 ><button class="btn btn-info">{{if value="$oldAttrData"}}修改{{else}}添加{{endif}}商品属性</button></h3>
							<div style="float:right;margin:5px; cursor:pointer;" onclick='location.href="{{U('listAttr')}}"'>返回到上一级&nbsp<img src="{{__PUBLIC__}}/Admin/img/icons/essen/16/refresh.png"  title="返回到上一级" ></div>
						</div>
						<div class="box-content">
							<form action="{{U('addAttr')}}" class="form-horizontal" method="post" id="addAttrForm">
									<div class="control-group">
										<label for="goods_name" class="control-label">属性名称</label>
										<div class="controls">
											<input type="text" name="gtname"  class='input-square' value="{{isset($oldAttrData['gtname'])?$oldAttrData['gtname'] : ''}}">
										</div>
									</div>
									
									<div class="control-group">
										<label for="select" class="control-label">商品类型</label>
										<div class="controls">
											<select name="goods_type_tid" style="padding-left:5px;width:224px;">
												<option value="" >请选择</option>
												{{foreach from="$gData" value="$v"}}
												<option value="{{$v['tid']}}" {{if value="$v['tid'] eq $typeId"}}selected{{endif}}>{{$v['tname']}}</option>
												{{endforeach}}
											</select>
										</div>
									</div>
								
									<div class="control-group">
										<label for="bbb" class="control-label">属性类别</label>
										<div class="controls">
											<label class="radio"><input name="class" value="0" type="radio" {{if value="!$class"}}checked="checked"{{endif}}>属性</label>
											<label class="radio"><input name="class" value="1"  type="radio" {{if value="$class"}}checked="checked"{{endif}}>规格</label>
										</div>
									</div>
									
									<div class="control-group">
										<label for="textcounter" class="control-label">属性值</label>
										<div class="controls">
											<textarea name="gtvalue" id="textcounter" class="input-square span9 counter" data-max="150" rows="6">{{isset($oldAttrData['gtvalue'])?$oldAttrData['gtvalue'] : ''}}</textarea>
											{{if value="!$oldAttrData"}}<div style="width: 623px;" class="charleft originalTextareaInfo">多个值用 竖线 | 分隔</div>{{endif}}
										</div>
									</div>
									
									<div class="form-actions">
									<input type="hidden" name="gtid" value="{{isset($_GET['gtid']) ? $_GET['gtid'] :  0}}" />
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