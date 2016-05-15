<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>蘑菇街-首页</title>
		<!--载入头部-->
		{{include file="VIEW_PATH/Common/header.php"}}
		
		<!--轮播 栏目列表 图片展示区域 开始-->
		<div class="primary-wrap">
			<!--栏目列表 的开始-->
			<div class="primary-nav">
				<ul class="primary-nav-list">
				{{foreach from="$cateData" value="$v"}}
					<li class="primary-nav-li">
						<dl class="nav-warp">
							<dt><a  target="_blank" href="{{__ROOT__}}/H_L_i_{{$v['cid']}}.html">{{$v['cname']}}</a></dt>
							<dd>
								<span>
									{{foreach from="$v['_data']" value="$vvo"}}
									{{foreach from="$vvo['_data']" value="$vvoo"}}
									<ins></ins><a  target="_blank" href="{{__ROOT__}}/H_L_i_{{$vvoo['cid']}}.html"  {{if value="$vvoo['is_hot'] eq 1"}}class="hot"{{endif}}>{{$vvoo['cname']}}</a>
									{{endforeach}}
									{{endforeach}}
								</span>
							</dd>
						</dl>
						<!--隐藏线 遮盖线-->
						<i class="nav-line"></i>
						<!--栏目 隐藏盒子  开始-->
						<div class="nav-hide">
							{{foreach from="$v['_data']" value="$vo"}}
							<dl class="nav-more-area">
								<dt><a href="{{__ROOT__}}/H_L_i_{{$vo['cid']}}.html">{{$vo['cname']}}</a></dt>
								{{foreach from="$vo['_data']" value="$vv"}}
								<dd><a href="{{__ROOT__}}/H_L_i_{{$vv['cid']}}.html" {{if value="$vv['is_hot'] eq 1"}}class="hot"{{endif}}>{{$vv['cname']}}</a></dd>
								{{endforeach}}
							</dl>
							{{endforeach}}
							<div class="nav-more-pic">
								<a target="_blank" href="{{__ROOT__}}/H_L_i_{{$v['cid']}}.html">
								<img src="{{__ROOT__}}/{{$v['max_imgs_250x130']}}" width="250" height="130"/></a>
							</div>
							
						</div>
						<!--栏目 隐藏盒子  结束-->
					</li>
					{{endforeach}}
					
				</ul>
			</div>
			<!--栏目列表 的结束-->
			
			<!--轮播图 开始-->
			<div class="slide-area">
				<div class="slide-box">
					<a href="{{__ROOT__}}/H_L_i_1.html"><img src="{{__PUBLIC__}}/Home/images/a1.jpg"</a>
					<a href="{{__ROOT__}}/H_L_i_1.html"><img src="{{__PUBLIC__}}/Home/images/a2.png"/></a>
					<a href="{{__ROOT__}}/H_L_i_80.html"><img src="{{__PUBLIC__}}/Home/images/a3.jpg"/></a>
					<a href="{{__ROOT__}}/H_L_i_30.html"><img src="{{__PUBLIC__}}/Home/images/a4.jpg"/></a>
					<a href="{{__ROOT__}}/H_L_i_1.html"><img src="{{__PUBLIC__}}/Home/images/a5.jpg"/></a>
					<a href="{{__ROOT__}}/H_L_i_80.html"><img src="{{__PUBLIC__}}/Home/images/a3.jpg"/></a>
				</div>
				<div class="hd-slide">
					<ul>
						<li class="cur">1</li>
						<li>2</li>
						<li>3</li>
						<li>4</li>
						<li>5</li>
						<li>6</li>
					</ul>
				</div>
				<a href="javascript:;" class="prev"></a>
				<a href="javascript:;" class="next"></a>
			</div>
			
			<!--轮播图 结束-->
			
			<!--右侧图片展示  开始-->
			<div class="img-right">
				<ul class="sale-list">
					<li class="sale-li">
						<a target="_blank" href="{{__ROOT__}}/H_L_i_349.html" class="sale-box">
							<img src="{{__PUBLIC__}}/Home/images/m1.png">
						</a>
					</li>
					
					<li class="sale-li">
						<a target="_blank" href="{{__ROOT__}}/H_L_i_51.html" class="sale-box">
							<img src="{{__PUBLIC__}}/Home/images/m2.png">
						</a>
					</li>
				</ul>
				
			</div>
			<!--右侧图片展示  结束-->
		</div>
		<!--轮播 栏目列表 图片展示区域 结束-->
		
		<!--首屏图片展示区域 开始-->
		<div class="special-con">
			<!--限速快抢-->
			<div class="sp-col1">
				<a href="{{__ROOT__}}/H_L_i_1.html">
					<img src="{{__PUBLIC__}}/Home/images/t2.png"/>
				</a>
			</div>
			<div class="sp-col1">
				<a href="{{__ROOT__}}/H_L_i_1.html">
					<img src="{{__PUBLIC__}}/Home/images/2p240x300.jpg"/>
				</a>
			</div>
			<div class="sp-col1 sp2">
				<a href="{{__ROOT__}}/H_L_i_1.html">
					<img src="{{__PUBLIC__}}/Home/images/t1.png"/>
				</a>
			</div>
			<div class="sp3">
				<a href="{{__ROOT__}}/H_L_i_1.html"><img src="{{__PUBLIC__}}/Home/images/t3.jpg"/></a>
				<a href="{{__ROOT__}}/H_L_i_1.html" class="last"><img src="{{__PUBLIC__}}/Home/images/t4.jpg"/></a>
			</div>
		</div>
		<!--首屏图片展示区域 结束-->
		
		<!--楼层 开始-->
		<div class="floor-list">
			<!--第一层 开始-->
			<div class="fr-area">
				<!--标题 开始-->
				<div class="ft-title">
					<div class="left-f">
						<div class="hbg_l">
							<div class="hbg_r">
								<div class="hbg_m"></div>
							</div>
						</div>
					</div>
					<h3 class="ht_t_con">品牌馆</h3>
					<div class="left-f">
						<div class="hbg_l">
							<div class="hbg_r">
								<div class="hbg_m"></div>
							</div>
						</div>
					</div>
				</div>
				<!--标题 结束-->
				
				<!--内容 开始-->
				<div class="fr-goods-area">
					<!--左侧排版 开始-->
					<div class="goods-left">
						<a href="{{__ROOT__}}/H_L_i_1.html" class="a-up"><img src="{{__PUBLIC__}}/Home/images/a-up.jpg" class="fade-in"/></a>
						
						{{foreach from="$brandData" value="$v"}}
						<a href="{{__ROOT__}}/H_L_i_1.html" class="a-btm" title="{{$v['bname']}}">
							<img src="{{__ROOT__}}/{{$v['logo']}}" class="fade-in"/>
							<span class="hover_cover"></span>
						</a>
						{{endforeach}}
						
					</div>
					<!--左侧排版 结束-->
					
					<!--右侧排版开始-->
					<div class="goods-right">
						<div class="g-pic"><a href="{{__ROOT__}}/H_L_i_1.html"><img src="{{__PUBLIC__}}/Home/images/de_305x500.jpg" alt="" /></a></div>
						<div class="c-goods">
							<div class="goods-list">
								{{foreach from="$goodsData1" value="$v"}}
								<a href="{{__ROOT__}}/H_L_i_{{$v['category_cid']}}.html" class="goods-item">
									<img src="{{__ROOT__}}/{{$v['cate_img']}}" class="fade-in"/>
									<span class="goods-name"> 
										<span class="gd-name-ch">{{$v['cate_name']}}</span> 
									</span>
								</a>
								{{endforeach}}
							</div>
						</div>
					</div>
					<!--右侧排版结束-->
				</div>
				<!--内容结束-->
			</div>
			<!--第一层 结束-->
			
			<!--第三层 开始-->
			<div class="fr-area">
				<!--标题 开始-->
				<div class="ft-title">
					<div class="left-f">
						<div class="hbg_l">
							<div class="hbg_r">
								<div class="hbg_m"></div>
							</div>
						</div>
					</div>
					<h3 class="ht_t_con_a">享瘦</h3>
					<div class="left-f">
						<div class="hbg_l">
							<div class="hbg_r">
								<div class="hbg_m"></div>
							</div>
						</div>
					</div>
				</div>
				<!--标题 结束-->
				
				<!--内容 开始-->
				<div class="fr-goods-area">
					<!--左侧排版 开始-->
					<div class="goods-left">
						<a href="{{__ROOT__}}/H_L_i_79.html" class="a-up"><img src="{{__PUBLIC__}}/Home/images/bs_de_223x254.jpg" class="fade-in"/></a>
						{{foreach from="$brandData1" value="$vv"}}
						<a href="{{__ROOT__}}/H_L_i_79.html" class="a-btm" title="{{$vv['bname']}}">
							<img src="{{__ROOT__}}/{{$vv['logo']}}" class="fade-in"/>
							<span class="hover_cover"></span>
						</a>
						{{endforeach}}
						
					</div>
					<!--左侧排版 结束-->
					
					<!--右侧排版开始-->
					<div class="goods-right">
						<div class="g-pic"><a href="{{__ROOT__}}/H_L_i_1.html"><img src="{{__PUBLIC__}}/Home/images/meyde_305x500.jpg" alt="" /></a></div>
						<div class="c-goods">
							<div class="goods-list">
							
								{{foreach from="$goodsData2" value="$vo"}}
								<a href="{{__ROOT__}}/H_L_i_{{$vo['category_cid']}}.html" class="goods-item">
									<img src="{{__ROOT__}}/{{$vo['cate_img']}}" class="fade-in"/>
									<span class="goods-name"> 
										<span class="gd-name-ch">{{$vo['cate_name']}}</span> 
									</span>
								</a>
								{{endforeach}}
								
							</div>
						</div>
					</div>
					<!--右侧排版结束-->
				</div>
				<!--内容结束-->
			</div>
			<!--第三层 结束-->
			
			
			<!--第四层 开始-->
			<div class="fr-area">
				<!--标题 开始-->
				<div class="ft-title">
					<div class="left-f">
						<div class="hbg_l">
							<div class="hbg_r">
								<div class="hbg_m"></div>
							</div>
						</div>
					</div>
					<h3 class="ht_t_con_b">轻时髦</h3>
					<div class="left-f">
						<div class="hbg_l">
							<div class="hbg_r">
								<div class="hbg_m"></div>
							</div>
						</div>
					</div>
				</div>
				<!--标题 结束-->
				
				<!--内容 开始-->
				<div class="fr-goods-area">
					<!--左侧排版 开始-->
					<div class="goods-left">
						<a href="{{__ROOT__}}/H_L_i_80.html" class="a-up"><img src="{{__PUBLIC__}}/Home/images/dambqgayde_183x213.jpg" class="fade-in"/></a>
						{{foreach from="$brandData2" value="$vv"}}
						<a href="{{__ROOT__}}/H_L_i_80.html" class="a-btm" title="{{$vv['bname']}}">
							<img src="{{__ROOT__}}/{{$vv['logo']}}" class="fade-in"/>
							<span class="hover_cover"></span>
						</a>
						{{endforeach}}
						
					</div>
					<!--左侧排版 结束-->
					
					<!--右侧排版开始-->
					<div class="goods-right">
						<div class="g-pic"><a href="{{__ROOT__}}/H_L_i_1.html"><img src="{{__PUBLIC__}}/Home/images/ambqhayde_305x500.jpg" alt="" /></a></div>
						<div class="c-goods">
							<div class="goods-list">
							
								{{foreach from="$goodsData3" value="$vvo"}}
								<a href="{{__ROOT__}}/H_L_i_{{$vvo['category_cid']}}.html" class="goods-item">
									<img src="{{__ROOT__}}/{{$vvo['cate_img']}}" class="fade-in"/>
									<span class="goods-name"> 
										<span class="gd-name-ch">{{$vvo['cate_name']}}</span> 
									</span>
								</a>
								{{endforeach}}
								
							</div>
						</div>
					</div>
					<!--右侧排版结束-->
				</div>
				<!--内容结束-->
			</div>
			<!--第四层 结束-->
			
			
		</div>
		<!--楼层 结束-->
		
	<!--载入尾部-->
	{{include file="VIEW_PATH/Common/floor.php"}}	