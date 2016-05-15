<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>蘑菇街-个人中心-修改头像</title>
		<!--载入头部-->
		{{include file="VIEW_PATH/Common/header.php"}}
		
		<style type="text/css">
				/*去掉uploadify上传按钮的边框*/
			    .uploadify-button {
			        background-color: transparent;
			        border: none;	
			        padding: 0;
			    }
			    .uploadify-button:hover {
			        background-color: transparent;
		    	}
 		</style> 
		
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
				<div class="mu_content_wrap">
					<div class="setting-box clearfloat">
						<!--基本资料 开始-->
						<div class="settings_title">
    							<span>基本资料</span>
						</div>
						<div id="setting-form">
								<dl style="position:relative;">
									<dd>当前头像：</dd>
									<dt>
										{{if value="$face"}}
										<img class="head_bd r3 userFace" src="{{__ROOT__}}/{{$face}}"  width="100" height="100">
										{{else}}
										<img class="head_bd r3 userFace" src="{{__PUBLIC__}}/Home/images/default_100x100.jpg"  width="100" height="100">
										{{endif}}
									</dt>
									<dd>上传新头像：</dd>
									<dt style="height:35px;position:relative;"></dt>
									<dt style="position: absolute;top:120px;left:105px;">
										<input type="file" name="userFace" id="Face"/ style="padding-left:50px;">
									</dt>
									<dd class="msg">&nbsp;</dd>
									<dt class="msg">建议使用正方形的图片，支持JPG、GIF、JPEG格式，100K以内。</dt>
								</dl>
						</div>
						<!--基本资料 结束-->
						
					</div>
				</div>
				<!--用户右侧个人信息  结束-->
			</div>
		</div>
		<!--主体内容 结束-->
		
		
		<!--载入尾部-->
		{{include file="VIEW_PATH/Common/floor.php"}}
