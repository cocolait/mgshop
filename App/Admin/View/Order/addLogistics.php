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
							<h3 ><button class="btn btn-info">{{if value="$_GET['logid']"}}修改{{else}}添加{{endif}}物流信息</button></h3>
							<div style="float:right;margin:5px; cursor:pointer;" onclick='location.href="{{U('orderList')}}"'>返回到上一级&nbsp<img src="{{__PUBLIC__}}/Admin/img/icons/essen/16/refresh.png"  title="返回到上一级" ></div>
						</div>
						<div class="box-content">
							<form action="" class="form-horizontal" method="post" id="LogisticsForm">
									<div class="control-group">
										<label for="password" class="control-label">发货人</label>
										<div class="controls">
											<input type="text" name="logname" class='input-square'  value="{{isset($logData['logname'])?$logData['logname']:''}}">
										</div>
									</div>
									<div class="control-group">
										<label for="basic" class="control-label">发货地址</label>
										<div class="controls">
											<input type="text" name="address" id="basic" class='input-square' value="{{isset($logData['address'])?$logData['address']:''}}">
										</div>
									</div>
									
									<div class="control-group">
										<label for="select" class="control-label">物流公司</label>
										<div class="controls">
											<select name="company" id="select" style="padding-left:5px;width:224px;">
												<option value="">请选择...</option>
												<option value="申通" {{if value="$company eq '申通' "}}selected{{endif}}>申通</option>
												<option value="圆通" {{if value="$company eq '圆通' "}}selected{{endif}}>圆通</option>
												<option value="百世汇通" {{if value="$company eq '百世汇通' "}}selected{{endif}}>百世汇通</option>
												<option value="宅急送" {{if value="$company eq '宅急送' "}}selected{{endif}}>宅急送</option>
												<option value="德邦" {{if value="$company eq '德邦' "}}selected{{endif}}>德邦</option>
											</select>
										</div>
									</div>
									
									<div class="control-group">
										<label for="password" class="control-label">手机号</label>
										<div class="controls">
											<input type="text" name="cellphone" id="password" class='input-square'  value="{{isset($logData['cellphone'])?$logData['cellphone']:''}}">
										</div>
									</div>
									
									<div class="control-group">
										<label for="password" class="control-label">邮政编码</label>
										<div class="controls">
											<input type="text" name="zipcode" id="password" class='input-square'  value="{{isset($logData['zipcode'])?$logData['zipcode']:''}}">
										</div>
									</div>
									
									<div class="control-group">
										<label for="password" class="control-label">客服电话</label>
										<div class="controls">
											<input type="text" name="tel" id="password" class='input-square'  value="{{isset($logData['tel'])?$logData['tel']:''}}">
										</div>
									</div>
									
									<div class="form-actions">
										<input type="hidden" name="oid" value="{{isset($_GET['oid']) ? $_GET['oid'] : 0}}" />
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
