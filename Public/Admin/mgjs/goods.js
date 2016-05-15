$(function(){
		//关闭售后服务文本框
		var status = 1;
		$("#service").click(function(){
			if (status == 1) {
				$(".goods-editor1").fadeIn(500);
				status=2;
			}else{
				$(".goods-editor1").fadeOut(500);
				status=1;
			}
		});
		//关闭商品详细文本框
		$("#intro").click(function(){
			if (status == 1) {
				$(".goods-editor2").fadeIn(500);
				status=2;
			}else{
				$(".goods-editor2").fadeOut(500);
				status=1;
			}
		});
		
		//添加一个规格
		$('.goods-norms').delegate('.add-spec','click', function () {
			var spec= $(this).parents('.spec-area');
			var obj = spec.clone();
			var del = '<button class="btn btn-danger del-spec" style="position: absolute;top: 0px;right: 2px;" type="button">-删除规格</button>';
			obj.find(".span3").eq(2).find('.add-spec').remove();
			obj.find('.span3').eq(2).append(del);
			spec.after(obj);
		});

		//删除一个规格
		$('.del-spec').live('click', function() {
			$(this).parents('.spec-area').remove();
		});
		
		//选择分类时生成属性与规格
		$("#categorySelect").change(function(){
					var tid = $(':selected', this).attr('tid');
					if (tid==0){
						$(".goods-attr").hide();
						$(".goods-norms").hide();
						return;
					}
					
					//异步请求商品属性
					$.post(getAttrUrl,{'tid' : tid},function(data){
							$(".goods-attr").show();
							if (data) {
								$(".goods-attr").html(data);
							}
					},'html');
					//异步请求商品规格
					$.post(getNormsUrl,{'tid' : tid},function(data){
						$(".goods-norms").show();
							if (data) {
								$(".goods-norms").html(data);
							}
					},'html');
		});
		
		$("#pic-show").hide();
		$("#pictrue-show").show();
		//Uploadify上传 列表图
		$('#pic').uploadify({
			swf : Public + '/Uploadify/uploadify.swf',	 		//引入uploadify核心文件
			uploader : picUploadUrl,										//php处理脚本地址
			width : 120,							//上传按钮宽度
			height : 30, 							//上传按钮高度
			buttonImage : Public + '/Uploadify/browse-btn.png',  	 //上传按钮背景图地址
			buttonText: "选择图片",                		 		// 按钮上的文字
			buttonCursor: 'pointer',                				// 按钮的鼠标图标
			fileObjName: 'Filedata',           				// 上传参数名称
			fileTypeDesc : 'Image File',					//选择文件提示文字
			fileTypeExts : '*.jpeg; *.jpg; *.png; *.gif',			//允许选择的文件类型
			formData    : {sname : sid},
	                									
			//上传成功后的回调函数
			onUploadSuccess : function(file,data,response){
				eval('var data = ' + data);//将字符串转换为对象
				if (data.status) {
					//上传成功 修改图片显示地址
					$("#pictrue-show").hide();
					$("#pic-show").show();
					$('#pictrue').attr('value',data.msg);
					$("#pic-show").find('.pic-img-show').attr('src',Root + "/" + data.msg);
				} else {
					//弹出错误信息
					hd_alert({
			            message:data.msg,//显示内容
			            timeout: 3,//显示时间
					});
				}
			}
		});
		
		/*$("#mini-show").hide();
		$("#miniPic-show").show();
		//Uploadify上传 商品图
		$('#mini').uploadify({
			swf : Public + '/Uploadify/uploadify.swf',	 		//引入uploadify核心文件
			uploader : MiniUploadUrl,										//php处理脚本地址
			width : 120,							//上传按钮宽度
			height : 30, 							//上传按钮高度
			buttonImage : Public + '/Uploadify/browse-btn.png',  	 //上传按钮背景图地址
			buttonText: "选择图片",                		 		// 按钮上的文字
			buttonCursor: 'pointer',                				// 按钮的鼠标图标
			fileObjName: 'Filedata',           				// 上传参数名称
			fileTypeDesc : 'Image File',					//选择文件提示文字
			fileTypeExts : '*.jpeg; *.jpg; *.png; *.gif',			//允许选择的文件类型
			formData    : {sname : sid},
	                									
			//上传成功后的回调函数
			onUploadSuccess : function(file,data,response){
				eval('var data = ' + data);//将字符串转换为对象
				if (data.status) {
					$("#mini-show").show();
					$("#miniPic-show").hide();
					//上传成功 修改图片显示地址
					$('input[name=big]').attr('value',data.path.max);
					$('input[name=mini]').attr('value',data.path.mini);
					$("#mini-show").find('.mini-img-show').attr('src',Root + "/" + data.path.mini);
				} else {
						//弹出错误信息
						hd_alert({
				            message:data.msg,//显示内容
				            timeout: 3,//显示时间
						});
				};
			}
		});*/
		
		
		
		//Uploadify上传 用户图片
		$('#face').uploadify({
			swf : Public + '/Uploadify/uploadify.swf',	 		//引入uploadify核心文件
			uploader : FaceUrl,										//php处理脚本地址
			width : 120,							//上传按钮宽度
			height : 30, 							//上传按钮高度
			buttonImage : Public + '/Uploadify/browse-btn.png',  	 //上传按钮背景图地址
			buttonText: "选择图片",                		 		// 按钮上的文字
			buttonCursor: 'pointer',                				// 按钮的鼠标图标
			fileObjName: 'Filedata',           				// 上传参数名称
			fileTypeDesc : 'Image File',					//选择文件提示文字
			fileTypeExts : '*.jpeg; *.jpg; *.png; *.gif',			//允许选择的文件类型
			formData    : {sname : sid},
	                									
			//上传成功后的回调函数
			onUploadSuccess : function(file,data,response){
				eval('var data = ' + data);//将字符串转换为对象
				if (data.status) {
					hd_alert({
			            message:'上传成功^_^',//显示内容
			            timeout: 1,//显示时间
			            success : function(){
			            	$("#face-left").find('.face-img').attr('src',Root + "/" + data.msg);
			            }
					});
				} else {
						//弹出错误信息
						hd_alert({
				            message:data.msg,//显示内容
				            timeout: 3,//显示时间
						});
				};
			}
		});
		
		
		
		
		//多图上传
		$("#imgs-show-area").hide();
		//Uploadify上传 商品图册
		$('#imgsG').uploadify({
			swf : Public + '/Uploadify/uploadify.swf',	 		//引入uploadify核心文件
			uploader : imgsGoodsUrl,										//php处理脚本地址
			queueSizeLimit : 20,										//设置选择文件的个数，默认值：999
			multi : true,													//设置为true时可以上传多个文件。 
			width : 120,							//上传按钮宽度
			height : 30, 							//上传按钮高度
			buttonImage : Public + '/Uploadify/browse-btn.png',  	 //上传按钮背景图地址
			buttonText: "选择图片",                		 		// 按钮上的文字
			buttonCursor: 'pointer',                				// 按钮的鼠标图标
			fileObjName: 'Filedata',           				// 上传参数名称
			fileTypeDesc : 'Image File',					//选择文件提示文字
			fileTypeExts : '*.jpeg; *.jpg; *.png; *.gif',			//允许选择的文件类型
			formData    : {sname : sid},
	                									
			//上传成功后的回调函数
			onUploadSuccess : function(file,data,response){
				eval('var data = ' + data);//将字符串转换为对象
				if (data.status) {
					$("#imgs-show-area").show();
					//组合字符串
					var str = '<div class="controls imgs-area" style="position: relative;padding-top:10px;float:left;margin-left:20px;">';
						  str +='<img src="'+Root+'/'+data.path.mini+'" width="100" height="100" class="imgs-img-show">';
						  str +='<input type="hidden" name="big[]" value="'+data.path.max+'"  class="big-img"/>';
						  str +='<input type="hidden" name="medium[]" value="'+data.path.mid+'"  class="medium-img"/>';
						  str +='<input type="hidden" name="mini[]" value="'+data.path.mini+'"  class="minis-img"/>';
						  str +='<a href="javascript:;" class="busyImgs" style="display: block;position: absolute;top: -5px;left: 86px;" title="删除图片？">';
						  str +='<img alt="" src="'+Public+'/Admin/img/icons/essen/16/busy.png">';
						  str +='</a></div>';
				    //插入指定DIV
					$("#imgs-show-area").append(str);
				} else {
						//弹出错误信息
						hd_alert({
				            message:data.msg,//显示内容
				            timeout: 1,//显示时间
						});
				};
			}
		});
		
		
		
		
		//异步删除列表图片
		$(".busyPic").live('click',function(){
				//获取列表地址
				var pic = $("#pictrue").val();
				$.post(delPic,{'pic' : pic},function(data){
					if (data.status) {
						hd_alert({
				            message:data.msg,//显示内容
				            timeout: 1,//显示时间
				            success : function(){
				            		$("#pictrue").attr('value','');
				            		$("#pic-show").hide();
				            		$("#pic-show").find(".pic-img-show").attr('src','');
				            }
						});
					}else{
						hd_alert({
				            message:data.msg,//显示内容
				            timeout: 3,//显示时间
				        });
					}
				},'json');
		});
		
		//异步删除商品图片
		$(".busyImgs").live('click',function(){
				//获取缩略图地址
				var big = $(this).siblings(".big-img").val();
				var minis = $(this).siblings(".minis-img").val();
				var mid= $(this).siblings(".medium-img").val();
				var _this = $(this);
				var datas = {
						'big' : big,
						'mini' : minis,
						'mid' : mid
				}
				$.post(delMini,datas,function(data){
					if (data.status) {
						hd_alert({
				            message:data.msg,//显示内容
				            timeout: 1,//显示时间
				            success : function(){
				            	//删除成功之后,移除指定div
				            	_this.parents(".imgs-area").fadeOut(500).remove();
				            }
						});
					}else{
						hd_alert({
				            message:data.msg,//显示内容
				            timeout: 3,//显示时间
				        });
					}
				},'json');
		});
		
		
		//异步删除所有图册
		$("#img-data-area").click(function(){
			var gid = $(this).attr('gid');
			$.post(delimgsUrl,{'gid' : gid},function(data){
				if (data.status) {
					hd_alert({
			            message:'删除成功^_^',//显示内容
			            timeout: 3,//显示时间
			            success : function(){
			            	window.location.reload();
			            }
					});
				}else{
					hd_alert({
			            message:'删除失败/(ㄒoㄒ)/~~',//显示内容
			            timeout: 1,//显示时间
			        });
				}
			},"json");
		});
		
		
		
//		$("#mini-hide-show").hide();
		//Uploadify上传 栏目图片 二级
		$('#cate_mini').uploadify({
			swf : Public + '/Uploadify/uploadify.swf',	 		//引入uploadify核心文件
			uploader : CateMiniUrl,										//php处理脚本地址
			width : 120,							//上传按钮宽度
			height : 30, 							//上传按钮高度
			buttonImage : Public + '/Uploadify/browse-btn.png',  	 //上传按钮背景图地址
			buttonText: "选择图片",                		 		// 按钮上的文字
			buttonCursor: 'pointer',                				// 按钮的鼠标图标
			fileObjName: 'Filedata',           				// 上传参数名称
			fileTypeDesc : 'Image File',					//选择文件提示文字
			fileTypeExts : '*.jpeg; *.jpg; *.png; *.gif',			//允许选择的文件类型
			formData    : {sname : sid},
	                									
			//上传成功后的回调函数
			onUploadSuccess : function(file,data,response){
				eval('var data = ' + data);//将字符串转换为对象
				if (data.status) {
					//上传成功 修改图片显示地址
					$("#mini-hide-show").show();
					$('#cate_mini_imgs').attr('value',data.msg);
					$("#mini-hide-show").find('.cate-mini-show').attr('src',Root + "/" + data.msg);
				} else {
					//弹出错误信息
					hd_alert({
			            message:data.msg,//显示内容
			            timeout: 1,//显示时间
					});
				}
			}
		});
		
		
//		$("#max-hide-show1").hide();
		//Uploadify上传 栏目图片 一级 (首页)
		$('#cate-max250x130').uploadify({
			swf : Public + '/Uploadify/uploadify.swf',	 		//引入uploadify核心文件
			uploader : CateMaxUrl,										//php处理脚本地址
			width : 120,							//上传按钮宽度
			height : 30, 							//上传按钮高度
			buttonImage : Public + '/Uploadify/browse-btn.png',  	 //上传按钮背景图地址
			buttonText: "选择图片",                		 		// 按钮上的文字
			buttonCursor: 'pointer',                				// 按钮的鼠标图标
			fileObjName: 'Filedata',           				// 上传参数名称
			fileTypeDesc : 'Image File',					//选择文件提示文字
			fileTypeExts : '*.jpeg; *.jpg; *.png; *.gif',			//允许选择的文件类型
			formData    : {sname : sid},
	                									
			//上传成功后的回调函数
			onUploadSuccess : function(file,data,response){
				eval('var data = ' + data);//将字符串转换为对象
				if (data.status) {
					//上传成功 修改图片显示地址
					$("#max-hide-show1").show();
					$('#cate_max_250x130').attr('value',data.msg);
					$("#max-hide-show1").find('.max-img-show1').attr('src',Root + "/" + data.msg);
					
				} else {
					//弹出错误信息
					hd_alert({
			            message:data.msg,//显示内容
			            timeout: 1,//显示时间
					});
				}
			}
		});
		
		
		
//		$("#max-hide-show2").hide();
		//Uploadify上传 栏目图片 一级 (首页)
		$('#cate-max200x240').uploadify({
			swf : Public + '/Uploadify/uploadify.swf',	 		//引入uploadify核心文件
			uploader : CateMaxtwoUrl,										//php处理脚本地址
			width : 120,							//上传按钮宽度
			height : 30, 							//上传按钮高度
			buttonImage : Public + '/Uploadify/browse-btn.png',  	 //上传按钮背景图地址
			buttonText: "选择图片",                		 		// 按钮上的文字
			buttonCursor: 'pointer',                				// 按钮的鼠标图标
			fileObjName: 'Filedata',           				// 上传参数名称
			fileTypeDesc : 'Image File',					//选择文件提示文字
			fileTypeExts : '*.jpeg; *.jpg; *.png; *.gif',			//允许选择的文件类型
			formData    : {sname : sid},
	                									
			//上传成功后的回调函数
			onUploadSuccess : function(file,data,response){
				eval('var data = ' + data);//将字符串转换为对象
				if (data.status) {
					//上传成功 修改图片显示地址
					$("#max-hide-show2").show();
					$('#cate_max_200x240').attr('value',data.msg);
					$("#max-hide-show2").find('.max-img-show2').attr('src',Root + "/" + data.msg);
					
				} else {
					//弹出错误信息
					hd_alert({
			            message:data.msg,//显示内容
			            timeout: 1,//显示时间
					});
				}
			}
		});
		
		
		
		//异步删除栏目图片
		$(".busyCate").live('click',function(){
				//获取缩略图地址
				var live = $(this).attr('live');
				var obj = $(this).parents(".control-group");
				var img;
				if (live == 1) {
					img = obj.find("#cate_mini_imgs").val();
				}else if (live == 2){
					img = obj.find("#cate_max_250x130").val();
				}else if (live == 3) {
					img = obj.find("#cate_max_200x240").val();
				}
				datas = {
						'img' : img
				}
				var _this = $(this);
				$.post(CateDelUrl,datas,function(data){
					if (data.status) {
						hd_alert({
				            message:data.msg,//显示内容
				            timeout: 1,//显示时间
				            success : function(){
				            	//删除成功之后
				            	if (live == 1) {
									obj.find("#cate_mini_imgs").attr('value','');
									obj.find("#mini-hide-show").fadeOut(300);
									obj.find(".cate-mini-show").attr('src','');
								}else if (live == 2){
									obj.find("#cate_max_250x130").attr('value','');
									obj.find("#max-hide-show1").fadeOut(300);
									obj.find(".max-img-show1").attr('src','');
								}else if (live == 3) {
									obj.find("#cate_max_200x240").attr('value','');
									obj.find("#max-hide-show2").fadeOut(300);
									obj.find(".max-img-show2").attr('src','');
								}
				            }
						});
					}else{
						hd_alert({
				            message:data.msg,//显示内容
				            timeout: 1,//显示时间
				        });
					}
				},'json');
		});
		
		
		//选择栏目分类 显示对应上传按钮
		$("#cateSelect").change(function(){
				var  level= $(':selected', this).attr('level');
				if (level == 1) {
					$("#levelOne1").show();
					$("#levelOne2").show();
					$("#levelTwo").hide();
				}else if (level == 2) {
					$("#levelTwo").show();
					$("#levelOne1").hide();
					$("#levelOne2").hide();
				}else{
					$("#levelTwo").hide();
					$("#levelOne1").hide();
					$("#levelOne2").hide();
				}
		});
});