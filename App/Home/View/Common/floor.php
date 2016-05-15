<!--底部公共部分   开始-->
		<!--底部 开始-->
		<div class="floor-area clearfloat" style="margin-bottom: 10px;">
			<div class="floor">
				<div class="foot-info">
		            <a class="info-logo" href="#"></a>
		            <div class="info-text">
		                <p>站点名称：<a href="" target="_blank">{{C('webset.webname')}}</a></p>
		               	<p class="mgjhostname" title="guomai31072">{{C('webset.webdes')}}</p>
		            </div>
    			</div>
    			
				<div class="foot_link">
		            <dl class="link_company">
		                <dt>友情链接</dt>
		                {{foreach from="$linkData" value="$v"}}
		                <dd><a href="{{$v['url']}}" target="_blank">{{$v['lname']}}</a></dd>
		                {{endforeach}}
		            </dl>
		          
        		</div>
			</div>
		<!-- 	{{if value=" 'CONTROLLER' eq 'Index' && 'ACTION' eq 'index' "}}
			<div class="w-links clearfloat">
        			<ul>
	            		<li>友情链接: </li>
	                    <li><a target="_blank" href="#">淘粉吧</a></li>
	                    <li><a target="_blank" href="#">蘑菇街团购网</a></li>
	                    <li><a target="_blank" href="#">蘑菇街女装</a></li>
	                    <li><a target="_blank" href="#">蘑菇街男装</a></li>
	                    <li><a target="_blank" href="#">蘑菇街鞋子</a></li>
	                    <li><a target="_blank" href="#">蘑菇街包包</a></li>
	                    <li><a target="_blank" href="#">蘑菇街家居</a></li>
	                    <li><a target="_blank" href="#">家具网</a></li>
	                    <li><a target="_blank" href="#">时尚品牌网</a></li>
	                    <li><a target="_blank" href="#">装修</a></li>
	                    <li><a target="_blank" href="#">蘑菇街母婴</a></li>
                	</ul>
    		</div>
    		{{endif}} -->
    		
		</div>
		<!--底部 结束-->
		<!--底部公共部分   结束-->
		
		{{if value=" 'CONTROLLER' eq 'Index' && 'ACTION' eq 'index' "}}
		<!--首页头部 弹出搜索框 开始-->
		<div class="sticky-search-container">
			<div class="fix-warp">
				<a href="#" class="logo" title="蘑菇街|我的买手街">蘑菇街|我的买手街</a>
				<div class="nav_search_form">
					<div class="search_inner_box">
						<div class="selectbox">
							<span class="selected">搜商品</span>
						</div>
						<form action="H_S.html" method="get" id="top_nav_form">
                            <input class="fx-txt" value="{{isset($_GET['words'])?$_GET['words']:'裙子'}}"  type="text" name="words">
							<input value="搜  索" class="fx_btn"  type="submit">
            			</form>
					</div>
				</div>
			</div>
		</div>
		<!--首页头部 弹出搜索框 结束-->
		{{endif}}
		
		<!--用户信息除外-->
		{{if value=" 'CONTROLLER' neq 'Userinfo' && 'CONTROLLER' neq 'Cart' && 'ACTION' neq 'userinfo' "}}
		<!--右侧购物车 回到顶部 相对定位 开始-->
		<div class="mgj_rightbar">
			<!--用户头像-->
			<div class="sidebar-item mgj-my-avatar">
				<a href="javascript:;" id="mg-userFace" uid="{{isset($_SESSION['uid'])?$_SESSION['uid']:0}}">
					{{if value="isset($_SESSION['uid'])"}}
					<div class="img">
						<img src="{{__ROOT__}}/{{$face}}"  height="20" width="20">
					</div>
					{{else}}
					<div class="img">
						<img src="{{__PUBLIC__}}/Home/images/02.jpg_48x48.jpg" height="20" width="20">
					</div>
					{{endif}}
				</a>
			</div>
			<!--购物车-->
			<div class="sidebar-item mgj-my-cart" id="mgj-my-cart">
        		<a data-ptp-idx="2" target="_blank" href="{{__ROOT__}}/H_C_i.html">
            		<i class="s-icon"></i>
            		<div class="s-txt">购物车</div>
            		{{if value="isset($_SESSION['goods'])?$_SESSION['goods']:'' "}}
            		<div class="num floorNum">{{$_SESSION['tatol']}}</div>
            		{{endif}}
        		</a>
        		
        		<!--隐藏购物车div 开始-->
        		<div class="cart-hide-area hidden" id="cart-hide-area">
        			<p class="p1">
        				<span class="mac-success-txt module-cart-icons">已将商品添加到购物车</span>
        			</p>
        			<p><a href="{{__ROOT__}}/H_C_i.html" class="mac-go-cart module-cart-icons">去购物车结算</a></p>
        			<a href="javascript:;" class="J_Close fix-close-btn">关闭</a>
        			<span class="sanxiao"></span>
        		</div>
        		
        		<!--隐藏购物车div 结束-->
    		</div>
    		<!--回到顶部-->
    		<div class="sideBottom">
       			<div class="sidebar-item mgj-back2top">
		            <a rel="nofollow" href="javascript:;">
		                <i class="s-icon"></i>
		            </a>
		        </div>
    		</div>
		</div>
		<!--右侧购物车 回到顶部 相对定位 结束-->
		{{endif}}
		
	</body>
<!-- 载入JS区域 -->
<script type="text/javascript" src="{{__PUBLIC__}}/Home/js/jquery-1.8.3.min.js" ></script>

<!-- 载入HDjs -->
<script type="text/javascript" src="{{__PUBLIC__}}/hdjs/hdjs.min.js"></script>
<!-- 载入城市联动 -->
<script type="text/javascript" src="{{__PUBLIC__}}/Home/js/city.js"></script>
<script type="text/javascript" src="{{__PUBLIC__}}/Home/mgjs/formValidate.js"></script>

<script type="text/javascript" src="{{__PUBLIC__}}/Home/js/index.js"></script>
<script type="text/javascript" src="{{__PUBLIC__}}/Home/js/common.js"></script>
<script type="text/javascript" src="{{__PUBLIC__}}/Home/js/slide.js"></script>


<script type="text/javascript" src="{{__PUBLIC__}}/Home/js/goods.js"></script>




<!-- 载入Uploadify上传插件 -->
<script type="text/javascript" src="{{__PUBLIC__}}/Uploadify/jquery.uploadify.min.js"></script>


<script type="text/javascript" src="{{__PUBLIC__}}/Home/mgjs/method.js"></script>

</html>

