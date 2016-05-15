<!--载入头部-->
{{include file="VIEW_PATH/Common/header.php"}}

<script type="text/javascript">
		var delUrl = "{{U('Goods/delAttr')}}";
		var delimgsUrl = "{{U('Goods/delimgs')}}";
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
						<div class="box-head">
							<h3><button class="btn btn-blue7">商品图册列表</button></h3>
							<div style="float:right;margin:5px; cursor:pointer;" onclick='location.href="{{U('listGoods')}}"'>返回到上一级&nbsp<img src="{{__PUBLIC__}}/Admin/img/icons/essen/16/refresh.png"  title="返回到上一级" ></div>
						</div>
						<div class="data" >
						<button class="btn btn-success" style="float:left;margin:5px 14px;" onclick='location.href="{{U('addImgs',array('gid'=>$_GET['gid']))}}"'>+添加图片</button>
						</div>
						<div class="alert alert-info" style="margin-bottom: 0px;">
								<strong>商品名称：</strong>{{$gname}}
						</div>
						<div class="row-fluid">
							<div class="span12">
								<div class="box" style="border: none;">
									<div class="box-content box-nomargin">
										<ul class="gallery">
											{{foreach from="$imgData" value="$v"}}
											<li>
												<a href="{{__ROOT__}}/{{$v['big']}}" class="preview fancy"><img src="{{__ROOT__}}/{{$v['mini']}}"></a>
											</li>
											{{endforeach}}
										</ul>
									</div>
								</div>
							</div>
							<div class="data" >
								<button class="btn btn-red5" style="float:right;margin:5px 14px;" id="img-data-area" gid="{{$_GET['gid']}}">图册删除</button>
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