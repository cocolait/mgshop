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
							<h3>系统设置</h3>
						</div>
						<div class="box-content">
							<form action="" class="form-horizontal" method="post" id="sysFormData">	
									<div class="box">
								<div class="box-head tabs-main tabs">
									<ul class="nav nav-tabs nav-tabs-main">
										<li class="active">
											<a href="#1" data-toggle="tab">MgShop站点设置</a>
										</li>
									</ul>
								</div>
								<div class="box-content">
									<div class="tab-content">
										<div class="tab-pane active" id="1">
											<div class="control-group">
													<label for="basic" class="control-label">站点名称</label>
													<div class="controls">
														<input type="text" name="webname" id="basic" class='input-square' value="{{isset($data['webname'])?$data['webname']:''}}">
													</div>
											</div>
											<div class="control-group">
												<label for="basic" class="control-label">站点描述</label>
												<div class="controls">
													<textarea name="webdes" id="basictext" class="span9 input-square" rows="5">{{isset($data['webdes'])?$data['webdes']:''}}</textarea>
												</div>
											</div>
											<div class="control-group">
										<label for="basicround" class="control-label">ICP备案号</label>
										<div class="controls">
											<input type="text" name="icp" id="basicround"  value="{{isset($data['icp'])?$data['icp']:''}}">
										</div>
									</div>
									<div class="control-group">
										<label for="password" class="control-label">联系方式</label>
										<div class="controls">
											<input type="hidden" name="wid" value="{{isset($data['wid'])?$data['wid']:0}}"/>
											<input type="text" name="tel" id="password" class='input-square'  value="{{isset($data['tel'])?$data['tel']:''}}">
										</div>
									</div>
									
									
								</div>
								
									<div class="form-actions">
										<button class="btn btn-primary" type="submit">提交</button>
									</div>
							</form>
						</div>
					</div>
				</div>
			</div>

		
		</div>	
	</div>
</div>	
<!--载入尾部-->
{{include file="VIEW_PATH/Common/floor.php"}}
