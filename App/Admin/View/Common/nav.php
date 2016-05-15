<div class="navi">
		<ul class='main-nav'>
			<li {{if value=" 'CONTROLLER' eq 'Index'"}}class='active open'{{endif}}>
				<a href="#" class='light toggle-collapsed'>
					<div class="ico"><i class="icon-home icon-white"></i></div>
					控制面板
					{{if value=" 'CONTROLLER' eq 'Index' "}}
					<img src="{{__PUBLIC__}}/Admin/img/toggle-subnav-up-white.png" alt="">
					{{else}}
					<img src="{{__PUBLIC__}}/Admin/img/toggle-subnav-down.png" alt="">
					{{endif}}					
				</a>
				
				<ul {{if value=" 'CONTROLLER' eq 'Index'"}}class='collapsed-nav'{{else}}class='collapsed-nav closed'{{endif}}>
					<li {{if value=" 'CONTROLLER' eq 'Index' && 'ACTION' eq 'index' "}}class='active'{{endif}}>
						<a href="{{U('Index/index')}}">
							后台首页
						</a>
					</li>
				</ul>
			</li>
			<li {{if value=" 'CONTROLLER' eq 'Goods'"}}class='active open'{{endif}}>
				<a href="#" class='light toggle-collapsed'>
					<div class="ico"><i class="icon-th-large icon-white"></i></div>
					商品管理
					{{if value=" 'CONTROLLER' eq 'Goods' "}}
					<img src="{{__PUBLIC__}}/Admin/img/toggle-subnav-up-white.png" alt="">
					{{else}}
					<img src="{{__PUBLIC__}}/Admin/img/toggle-subnav-down.png" alt="">
					{{endif}}
				</a>
				<ul {{if value=" 'CONTROLLER' eq 'Goods'"}}class='collapsed-nav'{{else}}class='collapsed-nav closed'{{endif}}>
					<li {{if value=" 'CONTROLLER' eq 'Goods' && 'ACTION' eq 'listType' "}}class='active'{{endif}}>
						<a href="{{U('Goods/listType')}}">
							类型管理
						</a>
					</li>
					<li {{if value=" 'CONTROLLER' eq 'Goods' && 'ACTION' eq 'ListCategory' "}}class='active'{{endif}}>
						<a href="{{U('Goods/ListCategory')}}">
							分类管理
						</a>
					</li>
					<li {{if value=" 'CONTROLLER' eq 'Goods' && 'ACTION' eq 'CategoryImg' "}}class='active'{{endif}}>
						<a href="{{U('Goods/CategoryImg')}}">
							分类图片管理
						</a>
					</li>
					<li {{if value=" 'CONTROLLER' eq 'Goods' && 'ACTION' eq 'cateImgList' "}}class='active'{{endif}}>
						<a href="{{U('Goods/cateImgList')}}">
							栏目图片管理
						</a>
					</li>
					<li {{if value=" 'CONTROLLER' eq 'Goods' && 'ACTION' eq 'listBrand' "}}class='active'{{endif}}>
						<a href="{{U('Goods/listBrand')}}">
							品牌管理
						</a>
					</li>
					
					<li {{if value=" 'CONTROLLER' eq 'Goods' && 'ACTION' eq 'listGoods' "}}class='active'{{endif}}>
						<a href="{{U('Goods/listGoods')}}">
							商品管理
						</a>
					</li>
					<li {{if value=" 'CONTROLLER' eq 'Goods' && 'ACTION' eq 'recycle' "}}class='active'{{endif}}>
						<a href="{{U('Goods/recycle')}}">
							回收站
						</a>
					</li>
				</ul>
			</li>
			
			<li {{if value=" 'CONTROLLER' eq 'Order'"}}class='active open'{{endif}}>
				<a href="#" class='light toggle-collapsed'>
					<div class="ico"><i class="icon-th-large icon-white"></i></div>
					订单管理
					<img src="{{__PUBLIC__}}/Admin/img/toggle-subnav-down.png" alt="">
				</a>
				<ul {{if value=" 'CONTROLLER' eq 'Order'"}}class='collapsed-nav'{{else}}class='collapsed-nav closed'{{endif}}>
					<li {{if value=" 'CONTROLLER' eq 'Order' && 'ACTION' eq 'orderList' "}}class='active'{{endif}}>
						<a href="{{U('Order/orderList')}}">
							订单列表
						</a>
					</li>
					
				</ul>
			</li>
			
			<li {{if value=" 'CONTROLLER' eq 'Pay'"}}class='active open'{{endif}}>
				<a href="#" class='light toggle-collapsed'>
					<div class="ico"><i class="icon-th-large icon-white"></i></div>
					充值管理
					<img src="{{__PUBLIC__}}/Admin/img/toggle-subnav-down.png" alt="">
				</a>
				<ul {{if value=" 'CONTROLLER' eq 'Pay'"}}class='collapsed-nav'{{else}}class='collapsed-nav closed'{{endif}}>
					<li {{if value=" 'CONTROLLER' eq 'Pay' && 'ACTION' eq 'index' "}}class='active'{{endif}}>
						<a href="{{U('Pay/index')}}">
							充值管理
						</a>
					</li>
					
				</ul>
			</li>

			<!-- <li >
				<a href="#" class='light toggle-collapsed'>
					<div class="ico"><i class="icon-book icon-white"></i></div>
					评论管理
					<img src="{{__PUBLIC__}}/Admin/img/toggle-subnav-down.png" alt="">
				</a>
				<ul class='collapsed-nav closed'>
					<li class='active'>
						<a href="{{U('Index/index')}}">
							评论列表
						</a>
					</li>
					<li class='active'>
						<a href="{{U('Index/index')}}">
							检索评论
						</a>
					</li>					
				</ul>
			</li> -->
			


			<li {{if value=" 'CONTROLLER' eq 'System'"}}class='active open'{{endif}}>
				<a href="#" class='light toggle-collapsed'>
					<div class="ico"><i class="icon-exclamation-sign icon-white"></i></div>
					系统管理
					<img src="{{__PUBLIC__}}/Admin/img/toggle-subnav-down.png" alt="">
				</a>
				<ul {{if value=" 'CONTROLLER' eq 'System'"}}class='collapsed-nav'{{else}}class='collapsed-nav closed'{{endif}}>
					<li {{if value=" 'CONTROLLER' eq 'System' && 'ACTION' eq 'linkList' "}}class='active'{{endif}}>
						<a href="{{U('System/linkList')}}">
							友情链接
						</a>
					</li>
					<li {{if value=" 'CONTROLLER' eq 'System' && 'ACTION' eq 'UserFace' "}}class='active'{{endif}}>
						<a href="{{U('System/UserFace')}}">
							修改头像
						</a>
					</li>
					<li {{if value=" 'CONTROLLER' eq 'System' && 'ACTION' eq 'editUser' "}}class='active'{{endif}}>
						<a href="{{U('System/editUser')}}">
							修改密码
						</a>
					</li>
					<li {{if value=" 'CONTROLLER' eq 'System' && 'ACTION' eq 'systemSet' "}}class='active'{{endif}}>
						<a href="{{U('System/systemSet')}}">
							网站设置
						</a>
					</li>
				</ul>
			</li>
		
			

			 <li {{if value=" 'CONTROLLER' eq 'Rbac'"}}class='active open'{{endif}}>
				<a href="#" class='light toggle-collapsed'>
					<div class="ico"><i class="icon-tasks icon-white"></i></div>
					RBAC权限管理
					<img src="{{__PUBLIC__}}/Admin/img/toggle-subnav-down.png" alt="">
				</a>
				<ul {{if value=" 'CONTROLLER' eq 'Rbac'"}}class='collapsed-nav'{{else}}class='collapsed-nav closed'{{endif}}>
					<li {{if value=" 'CONTROLLER' eq 'Rbac' && 'ACTION' eq 'index' "}}class='active'{{endif}}>
						<a href="{{U('Rbac/index')}}">
							用户列表
						</a>
					</li>
					
					<li {{if value=" 'CONTROLLER' eq 'Rbac' && 'ACTION' eq 'Rolelist' "}}class='active'{{endif}}>
						<a href="{{U('Rbac/Rolelist')}}">
							角色列表
						</a>
					</li>
					<li {{if value=" 'CONTROLLER' eq 'Rbac' && 'ACTION' eq 'addRole' "}}class='active'{{endif}}>
						<a href="{{U('Rbac/addRole')}}">
							添加角色
						</a>
					</li>
					<li {{if value=" 'CONTROLLER' eq 'Rbac' && 'ACTION' eq 'nodelist' "}}class='active'{{endif}}>
						<a href="{{U('Rbac/nodelist')}}">
							节点列表
						</a>
					</li>
					<li {{if value=" 'CONTROLLER' eq 'Rbac' && 'ACTION' eq 'addNode' "}}class='active'{{endif}}>
						<a href="{{U('Rbac/addNode')}}">
							添加节点
						</a>
					</li>
				</ul>
			</li>
	

			
		</ul>
	</div>