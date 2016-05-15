<!--载入头部-->
{{include file="VIEW_PATH/Common/header.php"}}
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
						<h3>首页</h3>
					</div>
					<div class="box-content">
						<div class="cl">
							<div class="pull-left">
								<h3>个人信息</h3>
								<img src="{{__ROOT__}}/{{$data['face']}}" alt="">
							</div>
							<div class="details pull-left userprofile">
								<table class="table table-striped table-detail">
									<tr>
										<th>用户名 : </th>
										<td>{{$data['uname']}}</td>
									</tr>
									<tr>
										<th>上一次登录时间 :</th>
										<td>{{date('Y-m-d H:i:s',$data['logintime'])}}</td>
									</tr>
									<tr>
										<th>上一次登录IP :</th>
										<td>{{$data['loginip']}}</td>
									</tr>
									<tr>
										<th>本次登录时间 :</th>
										<td>{{date('Y-m-d H:i:s',$_SESSION['logtime'])}}</td>
									</tr>
									<tr>
										<th>本次登录IP :</th>
										<td>{{get_client_ip()}}</td>
									</tr>
									
									<tr>
										<th>共有注册用户 :</th>
										<td>{{$count}}</td>
									</tr>
									<tr>
										<th>被锁定用户 :</th>
										<td>{{$lock}}</td>
									</tr>
									<tr>
										<th>所属角色:</th>
										<td>
											{{foreach from="$Usergroup" value="$name"}}
											<span class="label label-success">{{$name}}</span>
											{{endforeach}}
										</td>
									</tr>
								</table>
							</div>
						</div>
						<h3 class='divide'>服务器信息</h3>
						<table class="table table-striped table-detail">
							<tr>
								<th>操作系统 : </th>
								<td>{{PHP_OS}}</td>
							</tr>
							<tr>
								<th>PHP 版本 :</th>
								<td>{{PHP_VERSION}}</td>
							</tr>
							<tr>
								<th>服务器环境 :</th>
								<td>{{$_SERVER['SERVER_SOFTWARE']}}</td>
							</tr>
							<tr>
								<th>MySql 版本 :</th>
								<td>5.6.26</td>
							</tr>
									
						</table>
						
						<h3 class='divide'>版权信息</h3>
						<table class="table table-striped table-detail">
							<tr>
								<th>版权所有 : </th>
								<td> Copyright ©2015 www.mgchen.com Powered By 蘑菇辰 Version 1.0.0</td>
							</tr>
							<tr>
								<th>系统开发 :</th>
								<td>china.MgChen</td>
							</tr>
							<tr>
								<th>基于开发 :</th>
								<td>HDphp</td>
							</tr>
						</table>

						
					</div>
				</div>
			</div>
		</div>
	</div>	
	</div>
</div>	

<!--载入尾部-->
{{include file="VIEW_PATH/Common/floor.php"}}
