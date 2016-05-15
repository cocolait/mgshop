<!--头部-->
{{include file="VIEW_PATH/Common/header.php"}}

<div class="main">
	<div class="container-fluid">
	<!--左边的导航-->
	{{include file="VIEW_PATH/Common/nav.php"}}
	<!--左边的导航 结束-->
<form action="" method="post">
	<div class="content">
		<div id="wrap" class="">
			<a href="{{U('addNode')}}" class="add-app">添加应用</a>			
			{{foreach from='$node' value='$app'}}
				<div id="" class="app">
					<p>
						<strong>{{$app['title']}}</strong>
						<a href="{{U('addNode',array('pid' => $app['id'], 'level' => 2))}}">[添加控制器]</a>
						<a href="{{U('editNode',array('id' => $app['id'], 'level' => 1))}}">[修改]</a>
						<a href="{{U('delNode',array('id' => $app['id']))}}">[删除]</a>
					</p>
				{{foreach from="$app['child']" value="$action"}}
					<dl>
						<dt>
							<strong>{{$action['title']}}</strong>
							<a href="{{U('addNode',array('pid' => $action['id'], 'level' => 3))}}">[添加方法]</a>
							<a href="{{U('editNode',array('id' => $action['id'], 'level' => 2))}}">[修改]</a>
							<a href="{{U('delNode',array('id' => $action['id']))}}">[删除]</a>
							
						</dt>
						{{foreach from="$action['child']" value="$method"}}
							<dd>
								<strong>{{$method['title']}}</strong>
								<a href="{{U('editNode',array('id' => $method['id'], 'level' => 3))}}">[修改]</a>
								<a href="{{U('delNode',array('id' => $method['id']))}}">[删除]</a>
							</dd>
						{{endforeach}}
					</dl>
				{{endforeach}}
						
				</div>	

			{{endforeach}}
			<!-- <input type="hidden" name="role_id" value="{$role_id}"/>
				<button class="btn btn-primary" type="submit">提交</button> -->
	</div>
		</div>
		</form>	
	</div>
</div>
<!--载入尾部-->	
{{include file="VIEW_PATH/Common/floor.php"}}

</body>
</html>