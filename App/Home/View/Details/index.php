<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>蘑菇街-详情页</title>
		<!--载入头部-->
		{{include file="VIEW_PATH/Common/header.php"}}
		<script type="text/javascript">
				var DetUrl = "{{U('Details/detList')}}";
				var addUrl = "{{U('Details/addDet')}}";
				var minusUrl = "{{U('Details/minusDet')}}";
				var joinCart = "{{U('Details/joinCart')}}";
		</script>
		<div class="overstriking"></div>
		<!--公共头部样式 结束-->
		
		<!--商品主要信息  开始-->
		<div class="detail-goods">
			<div class="dgd-left">
				<!--商品图片 开始-->
				<div class="dgd-img">
					<!--大图-->
					<div class="big-img" id="mid-imgs">
						<button class="middle">
							<img src="{{__ROOT__}}/{{$firstImgs}}"/>
                        </button>
					</div>
					<!--小图切换-->
					<div class="min-img">
						<div class="box">
							<div class="list" id="goodsMin-list">
								<ul class="m-carousel">
									{{foreach from="$imgsData" key="$k" value="$v"}}
									<li {{if value="$k eq 0"}}class="c"{{endif}}>
										<img src="{{__ROOT__}}/{{$v['mini']}}"/>
										<i {{if value="$k eq 0"}}style="display:block"{{endif}}></i>
									</li>
									{{endforeach}}
								</ul>
							</div>
							<a href="javascript:;" class="min-left"></a>
							<a href="javascript:;" class="min-right"></a>
						</div>
					</div>
				</div>
				<!--商品图片 结束-->
				
				<!--商品信息 开始 左侧-->
				<div class="dgd-infos">
					<h1 class="goods-title">
						<span>{{$imgData['gname']}}</span>
					</h1>
					<!--价格区域 开始-->
					<div class="gds-info-lt">
	    				<dl class="price-info" style="height:22px;">
							<dt class="price-origin">原价：</dt>
							<dd class="price-w">
								<span>¥</span>
								<span id="J_Price">{{$imgData['marketprice']}}</span>
							</dd>
						</dl>
        				
        				<dl style="padding-bottom:0;height:40px;">
							<dt style="line-height:45px;">现价：</dt>
							<dd>
					            <span class="normal-price-now">¥ </span>
								<span id="J_NowPrice" class="normal-price-now" itemprop="price">{{$imgData['shopprice']}}</span>
								<span class="fr normal-rate-sales" style="padding-top:15px;">
									<span class="rate-num">评价：<span class="num"><?php echo rand(100, 500);?></span></span>
	                				<span>累计销量：<span class="num J_SaleNum"><?php echo rand(500, 1000);?></span></span>
	                				</span>
							</dd>
						</dl>
						
					</div>
					<!--价格区域 结束-->
					<form action="C_i.html" method="post" id="cartForm">
					<!--商品内容选择 开始-->
					<div class="gds-content">
						{{foreach from="$listData" key="$gtname" value="$v"}}
						<div class="gds-cor">
							<div class="gds-lf">{{$gtname}}：</div>
							<div class="gds-rg" id="gds-rg">
								<input type="hidden" name="gid" value="{{$_GET['gid']}}">
								<input type="hidden" name="gtid" value=""  id="gtid">
								{{foreach from="$v" value="$vo"}}
								<a href="javascript:;" class="img" gtid="{{$vo['gt_id']}}" gid="{{$vo['goods_gid']}}">
									{{$vo['gt_name']}}
									<b></b>
								</a>
								{{endforeach}}
							</div>
						</div>
						{{endforeach}}
						
						<div class="gds-cor">
							<div class="gds-lf">数量：</div>
							<div class="gds-rg">
								<div class="goods-num">
									<span class="num-reduce num-disable" id="num-reduce"></span>
									<input class="num-input" value="1" type="text" id="num-input" disabled="disabled">
									<span class="num-add" id="num-add"></span>
								</div>
								<div class="goods-stock">库存<span id="inven-num">0</span>件</div>
								<div class="goods-stock-tip" style="display:none;" id="goods-stock-tip"></div>
							</div>
						</div>
					</div>
					<!--商品内容选择 结束-->
					
					<!--立即购买 加入购物车-->
					<div class="goods-buy clearfloat">
                        <a href="javascript:;" id="J_BuyNow" class="fl mr10 buy-btn buy-now">立刻购买</a>
                		<a href="javascript:;" id="J_BuyCart" class="fl mr10 buy-cart  buy-btn">加入购物车</a>
                    </div>
					<!--立即购买 加入购物车 结束-->
					</form>
					<!--点赞爱心 开始-->
					<div class="goods-social">
						<div class="fav item">
							<b></b>
							<span class="fav-num"><?php echo rand(300, 1000);?></span>
						</div>
					</div>
					<!--点赞爱心 结束-->
					
					<!--支付方式 开始-->
					<div class="pay-methods clearfloat">
						<div class="pa1">支付方式：</div>
						<div class="pa2"></div>
					</div>
					<!--支付方式 结束-->
				</div>
				<!--商品信息 结束 左侧-->
			</div>
			
			<!--商品右侧 图片展示 开始-->
			<div class="goods-right">
				<p class="title">
					<s></s><span>热卖推荐</span>
				</p>
				<div class="list">
				    <div class="box">
				        <ul>
				        	{{hotgoods}}
				            <li>
				                <a href="{{$field['url']}}" target="_blank">
				                    <img src="{{__ROOT__}}/{{$field['pic']}}" width="120">
				                </a>
				                <span>￥{{$field['shopprice']}}</span>
				            </li>
				           {{endhotgoods}}
				        </ul>
				    </div>
				</div>
			</div>
			<!--商品右侧 图片展示 结束-->
		</div>
		<!--商品主要信息  结束 -->
		
		<!--商品详情展示 区域  开始-->
		<div class="warp-g clearfloat">
			<!--侧边栏 开始-->
			<div class="col-sidebar">
				<!--看了又看目录  开始-->
				<div class="module-repeat">
					<div class="ui-box repeat-info">
						<h3 class="ui-hd">看了又看</h3>
						<div class="ui-bd">
							<!--侧栏循环区域-->
							<ul class="repeat-list">
								{{likegoods}}
								<li>
									<a href="{{$field['url']}}" class="pic">
										<img src="{{__ROOT__}}/{{$field['pic']}}" class="img-lazyload"/>
									</a>
									<a class="title" href="{{$field['url']}}" target="_blank">
										{{msubstr($field['gname'],0,14)}}
									</a>
									<div class="info"> 
										<div class="price"> 
											<em class="price-u">¥</em> 
											<span class="price-n">{{$field['shopprice']}}</span> 
										</div> 
										<div class="fav"> 
											<em class="fav-i"></em> 
											<span class="fav-n">{{$field['click']}}</span> 
										</div> 
									</div>
								</li>
								{{endlikegoods}}
							</ul>
							<!--侧栏循环区域 结束-->
						</div>
					</div>
				</div>
				<!--看了又看目录  结束-->
			</div>
			<!--侧边栏 结束-->
			
			<!--商品详情 累计评价 中间区域 开始-->
			<div class="module-tabpanel" id="module-tabpanel">
				<!--选项卡区域 开始-->
				<div class="tabbar-box">
					<ul class="tabbar-list" id="tabbar-list">
						<li class="tab-graphic selected">
							<a href="javascript:;">商品详情</a>
						</li>
						<!-- <li>
							<a href="javascript:;">累计评价<em>124</em></a>
						</li> -->
					</ul>
				</div>
				<!--选项卡区域 结束-->
				
				<!--选项页  开始-->
				
				<!--商品详情  开始-->
				<div class="panel-box">
					<!--图文详情 开始-->
					<div class="module-panel module-graphic">
						<!--商品描述 开始-->
						<div id="J_Graphic_item_desc">
							<div class="panel-title"> 
								<h1>商品描述</h1> 
							</div>
							<div class="graphic-block"> 
								<!-- 描述 -->  
								<div class="graphic-text">{{$imgData['intro']}}</div>   
							</div>
						</div>
						<!--商品描述 结束-->
						
						<!-- 产品参数  开始-->
						<div id="J_Graphic_product_info">
							<div class="panel-title"> <h1>产品参数</h1> </div>
							<div class="graphic-block">  
								<!-- 描述 --> 
								<!-- 表格 --> 
								<table class="parameter-table" id="J_ParameterTable"> 
									<tbody> 
										{{foreach from="$attrData" value="$v"}}  
										<tr>   
											<td style="width:15%;">{{$v['gtname']}}</td>       
											<td>{{$v['gt_name']}}</td> 
										</tr>   
									   {{endforeach}}
									</tbody> 
								</table>   
							</div>
						</div>
						<!-- 产品参数  结束-->
						
						<!--模块列表图片区域  开始-->
						<div id="J_Graphic_model_img">
							<div class="panel-title"> <h1>穿着效果</h1> </div>
							
							<div class="graphic-block">
								<!-- 图片列表 -->
								{{foreach from="$imgsData" value="$v"}}
								<div class="graphic-pic"> 
									<div class="pic-box" style="padding-top:525px;padding-bottom:525px;"> 
										<img class="img-lazyload" src="{{__ROOT__}}/{{$v['big']}}" style="left: -350px; opacity: 1;"> 
									</div> 
								</div>
								{{endforeach}}
								
							</div>
						</div>
						<!--模块列表图片区域  结束-->
						
						<!--尺寸说明 开始-->
						<div id="J_Graphic_size_info">
							<div class="panel-title"> <h1>尺码说明</h1> </div>
							
							<div class="graphic-block">  
								
							<!-- 描述 -->  
							<div class="graphic-text">手工平铺测量有误差，介意慎拍</div>  
								<!-- 表格 -->  
								<table class="size-table"> 
									<thead> 
										<tr>  
											<th>尺码</th>  
											<th>衣长</th>  
											<th>袖长</th>  
											<th>胸围</th>  
											<th>肩宽</th>  
										</tr> 
									</thead> 
									<tbody>  
										<tr>  
											<td>均码</td>  
											<td>105</td>  
											<td>57</td>  
											<td>106</td>  
											<td>41</td>  
										</tr>  
									</tbody> 
								</table>     
								<!-- 提醒 -->  
								<div class="size-text">※ 以上尺寸为实物人工测量，因测量当时不同会有1-2cm误差，相关数据仅作参考，以收到实物为准。</div>  
							</div>
						</div>
						<!--尺寸说明 结束-->
					</div>
					<!--图文详情 结束-->
				</div>
				<!--商品详情  结束-->
				
				<!--累计评价 开始-->	
				<div class="panel-box hidden">
					<div class="module-panel module-rates">
						<div id="J_RatesBuyer">
							<!--标题-->
							<div class="panel-title">
		        					<h1>买家评价</h1>
		    				</div>
		    				
		    				<!--评论区域-->
		    				<div class="rates-buyer">
		    					<!--评论分数-->
		    					<div class="comment-info">
		    						<ul>
		    							<li class="score">
                                        	<span class="comment-star"><b style="width: 77px;"></b></span>
                    						<span class="numbox">
                        						<b class="num-v">4.9</b><span class="num-s">分</span>
                    						</span>
                						</li>
                						<li>
                                            <div class="title">描述相符：</div>
						                    <div class="cont">
						                        <span class="comment-star"><b style="width:77px;"></b></span>
						                        <span class="num-v">4.9</span>
						                    </div>
						                </li>
						                <li>
                                            <div class="title">价格合理：</div>
						                    <div class="cont">
						                        <span class="comment-star"><b style="width:77px;"></b></span>
						                        <span class="num-v">4.9</span>
						                    </div>
						                </li>
						                <li>
                                            <div class="title">质量满意：</div>
						                    <div class="cont">
						                        <span class="comment-star"><b style="width:77px;"></b></span>
						                        <span class="num-v">4.9</span>
						                    </div>
						                </li>
		    						</ul>
		    					</div>
		    					<!--评论分数 结束-->
		    					
		    					<!--评论内容 开始-->
		    					<div class="comment-content">
		    						<!--标签 开始-->
		    						<div class="tags clea">
                    					<div class="list open">
                                        	<a href="javascript:;" class="best">款式好 (4)</a>
                        					<b>|</b>
                                            <a href="javascript:;" class="best">质量很好 (4)</a>
                                			<b>|</b>
                                            <a href="javascript:;" class="best">性价比高 (3)</a>
                                			<b>|</b>
                                        </div>
                                    </div>
		    						<!--标签 结束-->
		    						
		    						<!--导航 开始-->
		    						<div class="nav">
                                        <div class="comment-sort">
	                            			<input class="J_CommentSort" checked="" type="radio"><label for="J_CommentSortDefault"> 默认排序</label>
	                            			<input class="J_CommentSort ml15" name="commentSort" type="radio"><label for="J_CommentSortTime"> 时间排序</label>
                        				</div>
                						<a href="javascript:;" data-type="all" class="c">全部评价（134）</a>
						            </div>
						            <!--导航 结束-->
						            
						            <!--评论列表 开始-->
						            <div id="J_RatesBuyerList" class="comments">
						            	<div class="item">
						            		<!--内容-->
						            		<div class="info clearfloat">
						            			<div class="info-w">
						            				<div class="info-t">
                                    					<span class="name">隔****我</span>
                                       					<span class="date">2015年11月17日</span>
            										</div>
            										<div class="info-m">
														包包很轻，PU有点硬。上网查了条码，应该不是正品哦。只不过包包款式还是可以的啦，有型。                
            										</div>
            										<div class="info-b">
                                                        <span>规格:小号</span>
                                                    </div>
                                                    <div class="info-l"></div>
						            			</div>
						            		</div>
						            		<!--头像-->
						            		<div class="face">
					                            <img src="{{__PUBLIC__}}/Home/images/img_64x64.jpg">
						                    </div>
						            	</div>
						            </div>
						            <!--评论列表 结束-->
						            
						            <!--评论列表 开始-->
						            <div id="J_RatesBuyerList" class="comments">
						            	<div class="item">
						            		<!--内容-->
						            		<div class="info clearfloat">
						            			<div class="info-w">
						            				<div class="info-t">
                                    					<span class="name">隔****我</span>
                                       					<span class="date">2015年11月17日</span>
            										</div>
            										<div class="info-m">
														包包很轻，PU有点硬。上网查了条码，应该不是正品哦。只不过包包款式还是可以的啦，有型。                
            										</div>
            										<div class="info-b">
                                                        <span>规格:小号</span>
                                                    </div>
                                                    <div class="info-l"></div>
						            			</div>
						            		</div>
						            		<!--头像-->
						            		<div class="face">
					                            <img src="{{__PUBLIC__}}/Home/images/img_64x64.jpg">
						                    </div>
						            	</div>
						            </div>
						            <!--评论列表 结束-->
						            
						            <!--评论分页区域 开始-->
						            <div class="pages clearfloat">
						            	<a class="c">1</a>
						            	<a href="">2</a>
						            	<a href="">3</a>
						            	<a href="">4</a>
						            	<a href="">5</a>
						            	<a href="">下一页></a>
						            </div>
						            <!--评论分页区域 结束-->
		    					</div>
		    					<!--评论内容 结束-->
		    				</div>
		    				<!--评论区域 结束-->
						</div>
					</div>
				</div>
				<!--累计评价 结束-->	
				
				<!--选项页  结束-->
			</div>
			<!--商品详情 累计评价 中间区域 结束-->
			
			<!--最右侧区域 开始-->
			<div class="col-extra">
				<!--购物车模块 标题-->
				<div class="module-cart">
		           <a href="javascript:;" class="cart-name">
		           		<span style="padding:0px;padding-right:10px;">商品介绍</span>
		           </a>
        		</div>
				<!--购物车模块 标题 结束-->
				
				<!--子导航列表 开始 -->
				<div class="extranav-bd" id="extranav-bd">
					<ul class="extranav-list">  
						<!-- 商品描述 -->  
						<li class="selected"> 
							<a href="javascript:;">商品描述</a> 
						</li>  
						<!-- 产品参数 -->  
						<li class=""> <a  href="javascript:;">产品参数</a> </li>  
						<!-- 模块列表 -->  
						<li class=""> 
							<a href="javascript:;">穿着效果</a> 
						</li>  
						<li class="" data-module="J_Graphic_size_info"> 
							<a href="javascript:;">尺码说明</a> 
						</li>    <!-- 本店同类商品 --> 
						
					</ul>
				</div>
				<!--子导航列表 结束-->
			</div>
			<!--最右侧区域 结束-->
		</div>
		<!--商品详情展示 区域  结束-->
		<!--空白盒子-->
		<div class="kong clearfloat"></div>
		
		<!--底部公共部分   开始-->
		<!--载入尾部-->
		{{include file="VIEW_PATH/Common/floor.php"}}	