<!--头部-->
{{include file="VIEW_PATH/Common/header.php"}}

<div class="main">
	<div class="container-fluid">
<!--左边的导航-->
	{{include file="VIEW_PATH/Common/nav.php"}}
	<!--左边的导航 结束-->
<form action="{{U('addAccess')}}" method="post">
	<div class="content">
		<div id="wrap" class="">
			<a href="{{U('Rolelist')}}" class="add-app">返回</a>			
			{{foreach from="$node" value="$app"}}
				<div id="" class="app">
					<p>
						<strong>{{$app['title']}}</strong>
						<input type="checkbox"  level="1" value="{{$app['id']}}_1" name="access[]" {{if value="$app['mark'] eq 1"}}checked="checked"{{endif}}/>
					</p>
				{{foreach from="$app['child']" value="$action"}}
					<dl class="app-ce">
						<dt>
							<strong>{{$action['title']}}</strong>
							<input type="checkbox" name="access[]" value='{{$action["id"]}}_2' level="2" class="level-child" {{if value="$action['mark'] eq 1"}}checked="checked"{{endif}}/>
						</dt>
						{{foreach from="$action['child']" value="$method"}}
						<dd>
							<strong>{{$method['title']}}</strong>
							<input type="checkbox" name="access[]" value='{{$method["id"]}}_3'  level="3" {{if value="$method['mark'] eq 1"}}checked="checked"{{endif}}/>
						</dd>
						{{endforeach}}
					</dl>
				{{endforeach}}
						
				</div>	

			{{endforeach}}
			<input type="hidden" name="rid" value="{{$rid}}"/>
			<button class="btn btn-primary" type="submit">提交</button>
	</div>
		</div>
		</form>	
	</div>
</div>	
<!--载入尾部-->
{{include file="VIEW_PATH/Common/floor.php"}}
<script type="text/javascript">
	
</script>
</body>
</html>