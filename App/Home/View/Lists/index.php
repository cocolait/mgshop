<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>蘑菇街-列表页</title>
		<!--载入头部-->
		{{include file="VIEW_PATH/Common/header.php"}}
		
		<!--下滑线2px-->
		<div class="overstriking"></div>
		
		<!--公共头部样式 结束-->
		
		<!--列表页 主体内容  开始-->
		<div class="gds-list-area">
			<!-- 头部类目导航 start -->
			<div class="sp_topbanner" id="sp_topbanner">
				<!--分类列表 开始-->
				<div class="sp_top_nav clearfloat">
	    			<ul class="nav_list" id="nav_list">
	    				{{foreach from="$cateData" value="$v"}}
		                <li {{if value="$v['cid'] eq $cid"}}class="on"{{endif}}><a href="{{__ROOT__}}/H_L_i_{{$v['cid']}}.html">{{$v['cname']}}</a></li>
		               {{endforeach}}
		            </ul>
	        		
	    		</div>
	    		<!--分类列表 结束-->
    		
    			<!--分类列表内容-->
    			<!-- 循环数据 开始 -->
    			{{foreach from="$cateData" value="$data"}}
    			<div class="sp_type_nav">
    				<!--左边 开始-->
    				<div class="type_sections">
    					{{foreach from="$data['_data']" value="$v"}}
    					<div class="type_section second">
    						<dt><a href="{{__ROOT__}}/H_L_i_{{$v['cid']}}.html">{{$v['cname']}}</a></dt>
    						<dd>
                        		<a class="cat_img" href="{{__ROOT__}}/H_L_i_{{$v['cid']}}.html">
                        		<img src="{{__ROOT__}}/{{$v['mini_imgs_120x120']}}"></a>
                        		<ul>
                        			{{foreach from="$v['_data']" value="$vo"}}
                                    <li><a href="{{__ROOT__}}/H_L_i_{{$vo['cid']}}.html">{{$vo['cname']}}</a></li>
                                    {{endforeach}}
                                 </ul>
                    		</dd>
    					</div>
    					{{endforeach}}
    					
    				</div>
    				<a class="right_img" target="_blank" href="{{__ROOT__}}/H_L_i_{{$data['cid']}}.html">
        				<img src="{{__ROOT__}}/{{$data['max_imgs_200x240']}}">
        			</a>
    				<!--左边 结束-->
    			</div>
    			{{endforeach}}
    			<!-- 循环数据 结束 -->
    			<!--分类列表内容  结束-->
    			
    		
    			
    		</div>
			<!-- 头部类目导航 end -->
			<h3 class="gd-title">{{$cname}}</h3>
			<!--表单 价格筛选 区域 开始-->
			<form action="" method="get">
				<div class="gd-private-list">
					<div class="gd-lf">
						<a href="H_L_i_{{$_GET['cid']}}.html?hot=0" {{if value="$hot eq 0"}}class="gd-sort gd-hot"{{else}}class="gd-sort"{{endif}}>综合</a>
						<a href="H_L_i_{{$_GET['cid']}}.html?hot=1" {{if value="$hot eq 1"}}class="gd-sort gd-hot"{{else}}class="gd-sort"{{endif}}>销量</a>
						<a href="H_L_i_{{$_GET['cid']}}.html?hot=2"  style="border-right:none" {{if value="$hot eq 2"}}class="gd-sort gd-hot"{{else}}class="gd-sort"{{endif}}>最新</a>
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
			
			<!--商品分页-->
			<!-- {{if value="$goodsData"}}
			<div class="page-area clearfloat">
				<a href="" class="atc">1</a>
				<a href="">2</a>
				<a href="">3</a>
				<a href="">4</a>
				<a href="">下一页></a>
			</div>
			{{endif}} -->
		</div>
		<!--列表页 主体内容  结束-->
		
		<!--载入尾部-->
		{{include file="VIEW_PATH/Common/floor.php"}}	
