<!--载入头部-->
{{include file="VIEW_PATH/Common/header.php"}}

<script type="text/javascript">
		var changeSpce = "{{U('Lists/changeSpce')}}";
</script>
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
							<h3 ><button class="btn btn-info">{{if value="$glid"}}修改{{else}}添加{{endif}}货品</button></h3>
							<div style="float:right;margin:5px; cursor:pointer;" onclick='location.href="{{U('goodsList',array('gid'=>$_GET['gid']))}}"'>返回到上一级&nbsp<img src="{{__PUBLIC__}}/Admin/img/icons/essen/16/refresh.png"  title="返回到上一级" ></div>
						</div>
						<div class="box-content">
							<form action="" class="form-horizontal" method="post" id="goodsListAddForm">
									
									{{foreach from="$NormsData" key="$gtname" value="$v"}}
									<div class="control-group">
										<label for="select" class="control-label">{{$gtname}}</label>
										<div class="controls">
											<select name="spce[]" style="padding-left:5px;width:224px;" class="spceSize">
												<option value="0" >请选择...</option>
												{{foreach from="$v" value="$vo"}}
												<option value="{{$vo['gt_id']}}" gid="{{$_GET['gid']}}" {{if value="in_array($vo['gt_id'],$combine)"}}selected{{endif}}>{{$vo['gt_name']}}</option>
												{{endforeach}}
											</select>
										</div>
									</div>
									{{endforeach}}
									
									<!-- <div class="control-group">
										<label for="goods_name" class="control-label">商品货号</label>
										<div class="controls">
											<input type="text" name="number"  class='input-square' value="{{isset($oldData['number']) ? $oldData['number'] :''}}">
										</div>
									</div> -->
									
									<div class="control-group">
										<label for="goods_name" class="control-label">库存</label>
										<div class="controls">
											<input type="text" name="inventory"  class='input-square' value="{{isset($oldData['inventory']) ? $oldData['inventory'] :''}}">
										</div>
									</div>
								
									<div class="form-actions">
										<input type="hidden" name="goods_gid" value="{{$_GET['gid']}}">
										<input type="hidden" name="glid" value="{{isset($_GET['glid'])?$_GET['glid']:0}}">
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