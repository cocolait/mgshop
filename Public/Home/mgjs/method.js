$(function(){
			//Uploadify上传 上传用户头像
			$('#Face').uploadify({
				swf : Public + '/Uploadify/uploadify.swf',	 		//引入uploadify核心文件
				uploader : userFaceUrl,										//php处理脚本地址
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
						hd_alert({
				            message:'修改成功^_^',//显示内容
				            timeout: 1,//显示时间
				            success : function(){
				            	$(".userFace").attr('src',Root + "/" + data.msg);
				            }
						});
					} else {
						//弹出错误信息
						hd_alert({
				            message:data.msg,//显示内容
				            timeout: 3,//显示时间
						});
					}
				}
			});
	
		
		//城市联动
		var province = '';
		$.each(city, function (i, k) {
			province += '<option value="' + k.name + '" index="' + i + '">' + k.name + '</option>';
		});
		$('select[name=province]').append(province).change(function () {
			var option = '';
			if ($(this).val() == '') {
				option += '<option value="">请选择</option>';
			} else {
				var index = $(':selected', this).attr('index');
				var data = city[index].child;
				for (var i = 0; i < data.length; i++) {
					option += '<option value="' + data[i] + '">' + data[i] + '</option>';
				}
			}
			
			$('select[name=city]').html(option);
		});
		
		
		
		//默认的城市选项
		words = words.split(',');//拆分数据
		
		$('select[name=province]').val(words[0]);//得到默认城市
		/*触发事件*/
		$.each(city,function(i,k){
			//如果默认城市等于被选中选择城市  直接取出所对应的城市值
			if (k.name == words[0]) {
				//k.name 是大城市
				var str=' ';
				
				//遍历某城市的具体城市 数组	
				for (var j in k.child) {
					str+='<option value="' + k.child[j] + '"  ';//取得所以城市的值
					if (k.child[j] == words[1]) {
						//如果相等 那么就给定一个checked
						str +=' checked = "checked" ';	
					}
					str += '>' + k.child[j] + '</option>';
					
				}
				//把值写入到HTML中
				$('select[name=city]').html(str);
			}
		});
		
		//默认星座选项
		$("#constellation").val(conste);
		
		//默认职业
		$("#profession").val(profession);
		
		
		
		
		
});