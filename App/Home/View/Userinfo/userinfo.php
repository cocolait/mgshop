<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>蘑菇街-个人中心</title>
		<!--载入头部-->
		{{include file="VIEW_PATH/Common/header.php"}}
		
			<script type="text/javascript">
                    var conste= "{{$userData['constellation']}}";
                    var words = "{{$userData['location']}}";
                    var profession =  "{{$userData['profession']}}";
            </script>
		
		<!--下滑线2px-->
		<div class="overstriking"></div>
		
		<!--公共头部样式 结束-->
		
		<!--主体内容 开始-->
		<div class="fm1200">
			<div class="meu-warp clearfloat">
				<!--用户信息 左侧 开始-->
				{{include file="VIEW_PATH/Common/userLeft.php"}}
				<!--用户信息 左侧 结束-->
				
				<!--用户右侧个人信息  开始-->
				<form action="" method="post" id="UserinfoForm">
				<div class="mu_content_wrap">
					<div class="setting-box clearfloat">
						<!--基本资料 开始-->
						<div class="settings_title">
    							<span>基本资料</span>
						</div>
						<div id="setting-form">
							<table class="hd-table hd-table-form hd-form">
								<tbody>
									<tr>
										<th>昵称:</th>
										<td>
											<input type="text" class="input r3" name="nickname" value="{{$nickname}}">
										</td>
									</tr>
									<tr>
										<th>真实姓名:</th>
										<td>
											<input type="text" class="input r3" name="trunname" value="{{isset($userData['trunname'])?$userData['trunname']:''}}">
										</td>
									</tr>
									<tr>
										<th>性别:</th>
										<td>
											<label><input type="radio" name="sex" value="男" {{if value=" $sex eq '男' "}}checked{{endif}}> 男</label>
											<label><input type="radio" name="sex" value="女" {{if value=" $sex eq '女' "}}checked{{endif}}> 女</label>
										</td>
									</tr>
									<tr>
										<th width="100">所在地:</th>
										<td>
											<select name="province" id="province">
    				                				<option value="">请选择</option>
    										</select>&nbsp;&nbsp;&nbsp;&nbsp;
                                            <select name="city" id="city">
                                                      <option value="">请选择</option>
                                              </select>
										</td>
									</tr>
									
									<tr>
										<th width="100">职业:</th>
										<td>
											<select id="profession" name="profession">
										            <option value="">请选择</option>
										            <option value="白领">白领</option>
										            <option value="学生">学生</option>
										            <option value="时尚妈咪">时尚妈咪</option>
										            <option value="模特">模特</option>
										            <option value="时尚店主">时尚店主</option>
										            <option value="传媒">传媒</option>
										            <option value="艺术">艺术</option>
										            <option value="其他">其他</option>
        									</select>
										</td>
										
									</tr>
									<tr>
										<th width="100">星座:</th>
										<td>
											<select id="constellation" name="constellation">
										            <option id="xingzuo_name" value="">请选择</option>
										            <option value="水瓶座">水瓶座</option>
										            <option value="双鱼座">双鱼座</option>
										            <option value="白羊座">白羊座</option>
										            <option value="金牛座">金牛座</option>
										            <option value="双子座">双子座</option>
										            <option value="巨蟹座">巨蟹座</option>
										            <option value="狮子座">狮子座</option>
										            <option value="处女座">处女座</option>
										            <option value="天秤座">天秤座</option>
										            <option value="天蝎座">天蝎座</option>
										            <option value="射手座">射手座</option>
										            <option value="摩羯座">摩羯座</option>
        									</select>
										</td>
										
									</tr>
									
								</tbody>
							</table>
						</div>
						<!--基本资料 结束-->
						
						
						<div class="settings_title">
    							<span>余额信息</span>
    							<span style="float:right;">我的余额：<span class="num-pay-go">{{$pay}}</span>元<a class="hd-btn hd-btn-danger hd-btn-xm hd-success-area" style="margin-right:0px;margin-left:3px;" herf="javascript:;">去充值</a></span>
						</div>
						
						<!--教育资料 开始-->
						<div class="settings_title">
    							<span>教育资料</span>
						</div>
						<div id="setting-form">
							<table class="hd-table hd-table-form hd-form">
								<tbody>
									<tr>
										<th>学生院校:</th>
										<td>
											<input type="text" class="input162" name="schoolname" value="{{isset($userData['schoolname'])?$userData['schoolname']:''}}">
										</td>
									</tr>
									<tr>
										<th>学生信息:</th>
										<td>
											<input type="text" class="input162" name="student" value="{{isset($userData['student'])?$userData['student']:''}}">
											<span>请填写完整的学院、班级、系别等信息，50字以内 </span>
										</td>
										
									</tr>
								</tbody>
							</table>
						</div>
						<!--教育资料 结束-->
						
						<!--其他信息 开始-->
						<div class="settings_title">
    							<span>其他信息</span>
						</div>
						<div id="setting-form">
							<table class="hd-table hd-table-form hd-form">
								<tbody>
									<tr>
										<th>个人标签:</th>
										<td>
											<input type="text" class="input" placeholder="多个标签之间请用逗号隔开" name="tname"  value="{{isset($userData['tag'])?$userData['tag']:'' }}">
										</td>
									</tr>
									
									<tr>
										<th>自我介绍:</th>
										<td>
											{{if value="isset($userData['intro'])?$userData['intro']:'' "}}
											<textarea name="intro" rows="10" id="text-area">{{isset($userData['intro'])?$userData['intro']:''}}</textarea>
											{{else}}
											<textarea name="intro" rows="10" id="text-area">随便写点什么，让大家了解你吧。</textarea>
											{{endif}}
										</td>
									</tr>
								</tbody>
							</table>
						</div>
						<!--基本资料 结束-->
						<div class="last-area">
							<button class="hd-btn hd-btn-danger" type="submit">确认修改</button>
						</div>
						
					</div>
				</div>
				</form>
				<!--用户右侧个人信息  结束-->
			</div>
		</div>
		<!--主体内容 结束-->
		
		
		<!--载入尾部-->
		{{include file="VIEW_PATH/Common/floor.php"}}	

<!--年月日三联动 插件 载入-->
<!--  <script type="text/javascript" src="{{__PUBLIC__}}/Home/js/birthday.js"></script>
 <script>
    $(function() {
        $.ms_DatePicker({
            YearSelector: "#select_year",
            MonthSelector: "#select_month",
            DaySelector: "#select_day"
        });
        $.ms_DatePicker({
	        YearSelector: "#select_year2",
	        MonthSelector: "#select_month2",
	        DaySelector: "#select_day2"
    	});
    });
</script> 
-->
 
 
 <!--城市大联动 定义-->
 <script type="text/javascript">
	new PCAS('area1', 'area2', 'area3', '广东省', '', '');
</script>
