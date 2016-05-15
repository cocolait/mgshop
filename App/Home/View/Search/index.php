<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>蘑菇街-搜索页</title>
		<!--载入头部-->
		{{include file="VIEW_PATH/Common/header.php"}}

		<!--下滑线2px-->
		<div class="overstriking"></div>

		<!--公共头部样式 结束-->

		<!-- 头部类目导航 start -->
		<div class="search-list-area">
			{{foreach from="$gAttrData" key="$k" value="$v"}}
			<!--循环层开始-->
			<div class="filter-item-wrap-mg">
				<h3 class="filter-nav-mg">{{$v['gtname']}}</h3>
				<div class="filter-right-mg">
					<div {{if value="$k eq $sum"}}class="inner last"{{else}}class="inner"{{endif}}>
						<ul class="filter-item-mg">
							<?php 
									//定义一个临时变量,为了初始化‘不限’做的准备
									$temp = array();
									$temp= $path;
									$temp[$k] = 0;
							?>
							<li><a href="H_S.html?words={{$_GET['words']}}&path={{implode('_',$temp)}}&hot={{isset($_GET['hot'])?$_GET['hot']:0}}" {{if value="$path[$k] eq 0"}}class="hover"{{endif}}>不限</a></li>
							{{foreach from="$v['value']" value="$vo"}}
							<?php 
										$temp[$k] = $vo['gt_id'];
							?>
							<li><a href="H_S.html?words={{$_GET['words']}}&path={{implode('_',$temp)}}&hot={{isset($_GET['hot'])?$_GET['hot']:0}}" {{if value="$path[$k] eq $vo['gt_id']"}}class="hover"{{endif}}>{{$vo['gt_name']}}</a></li>
							{{endforeach}}
						</ul>
					</div>
				</div>
			</div>
			<!--循环层结束-->
			{{endforeach}}
		</div>
		<!-- 头部类目导航 end -->

		<!--列表页 主体内容  开始-->
		<div class="gds-list-area clearfloat">

			<!--表单 价格筛选 区域 开始-->
			<form action="" method="get">
				<div class="gd-private-list clearfloat">
					<div class="gd-lf">
						<a href="H_S.html?words={{$_GET['words']}}&path={{isset($_GET['path'])?$_GET['path']:implode('_',$path)}}&hot=0" {{if value="$hot eq 0"}}class="gd-sort gd-hot"{{else}}class="gd-sort"{{endif}}>综合</a>
						<a href="H_S.html?words={{$_GET['words']}}&path={{isset($_GET['path'])?$_GET['path']:implode('_',$path)}}&hot=1" {{if value="$hot eq 1"}}class="gd-sort gd-hot"{{else}}class="gd-sort"{{endif}}>销量</a>
						<a href="H_S.html?words={{$_GET['words']}}&path={{isset($_GET['path'])?$_GET['path']:implode('_',$path)}}&hot=2" {{if value="$hot eq 2"}}class="gd-sort gd-hot"{{else}}class="gd-sort"{{endif}} style="border-right:none;">最新</a>
							
					</div>

				</div>
			</form>
			<!--表单 价格筛选 区域 结束-->

			<!--商品列表信息区域 开始-->
			<div class="gd-list clearfloat imagewall">
				{{if value="$goodsData"}}
				{{foreach from="$goodsData" value="$v"}}
				<!--商品信息列表 first-->
				<div class="gd-infos">
					<a href="{{__ROOT__}}/H_D_i_{{$v['gid']}}.html" class="img"><img src="{{__ROOT__}}/{{$v['pic']}}"/></a>
					<p class="title">
						<a href="{{__ROOT__}}/H_D_i_{{$v['gid']}}.html" target="_blank" style="width:220px">
							{{msubstr($v['gname'],0,14)}}
						</a>
					</p>
					<div class="gds-info">
						<b class="price-info"><i>￥</i>{{$v['shopprice']}}</b>
						<span class="fav-num">{{$v['click']}}</span>
					</div>
					<span class="gd-sp"><img src="{{__PUBLIC__}}/Home/images/shipai.png"></span>
				</div>
				<!--商品信息列表 first-->
				{{endforeach}}
				{{else}}
				<!--没有商品的时候 开始-->
				<div class="goods-hidden-area">
					<p class="search-nr-img">
						<img src="{{__PUBLIC__}}/Home/images/goods-h.png">
					</p>
					<p class="search-nr-desc">没有相关的商品<span>/(ㄒoㄒ)/~~</span></p>
				</div>
				<!--没有商品的时候 结束-->
				{{endif}}
				
			</div>
			<!--商品列表信息区域 结束-->

			{{if value="$goodsData"}}
			<!--商品分页-->
			<div class="page-area clearfloat">
				<!--<a href="" class="atc">1</a>
				<a href="">2</a>
				<a href="">3</a>
				<a href="">4</a>
				<a href="">下一页></a>-->
			</div>
			{{endif}} 
		</div>
		<!--列表页 主体内容  结束-->

		<!--底部公共部分   开始-->
		<!--载入尾部-->
		{{include file="VIEW_PATH/Common/floor.php"}}	