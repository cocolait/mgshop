$(function(){
		//异步修改分类 排序
		$(".csort").on("change",function(){
			//分类ID
			var cid;
			cid = $(this).attr('cid');
			var _this = $(this);
			var csort = $(this).val();
			//处理商品分类排序 异步
			if (cid) {
				$.post(sortUrl,{'cid' : cid,'csort' : csort},function(data){
					if (data.status) {
						_this.attr('value',csort);
					}else{
						hd_alert({
				            message: '修改失败/(ㄒoㄒ)/',//显示内容
				            timeout: 1,//显示时间
				       });
					}
				},'json');
			}
			//处理商品品牌排序 异步
			var bid;
			bid = $(this).attr('bid');
			if (bid) {
				$.post(sortUrl,{'bid' : bid,'csort' : csort},function(data){
					if (data.status) {
						_this.attr('value',csort);
					}else{
						hd_alert({
				            message: '修改失败/(ㄒoㄒ)/',//显示内容
				            timeout: 1,//显示时间
				       });
					}
				},'json');
			}
			
		});
		
		//异步修改 分类|品牌  是否显示
		$(".changeImg").on("click",function(){
				//地址
				var dataUrl = $(this).attr('dataUrl');
				var src = $(this).find("img").attr('src');
				var newSrc = substrlen(src);
				var _this = $(this);
				//分类ID
				var cid;
				cid = $(this).attr('cid');
				if (cid) {
					datas = {
							'cid' : cid,
							'src' : newSrc
					}
					$.post(showUrl,datas,function(data){
						if (data.status) {
							var url = dataUrl + data.msg;
							_this.find("img").attr('src',url);
						}
					},'json');
				}
				//商品品牌
				var bid;
				bid = $(this).attr('bid');
				if (bid) {
					datas = {
							'bid' : bid,
							'src' : newSrc
					}
					$.post(showUrl,datas,function(data){
						if (data.status) {
							var url = dataUrl + data.msg;
							_this.find("img").attr('src',url);
						}
					},'json');
				}
		});
		
		
		//异步修改用户是否锁定
		$(".changeUser").on("click",function(){
				//地址
				var dataUrl = $(this).attr('dataUrl');
				var src = $(this).find("img").attr('src');
				var newSrc = substrlen(src);
				var _this = $(this);
				//分类ID
				var aid;
				aid = $(this).attr('aid');
				if (aid) {
					datas = {
							'aid' : aid,
							'src' : newSrc
					}
					$.post(showUserUrl,datas,function(data){
						if (data.status) {
							hd_alert({
					            message: data.info,//显示内容
					            timeout: 1,//显示时间
					            success : function(){
					            	var url = dataUrl + data.msg;
									_this.find("img").attr('src',url);
					            }
							});
							
						}
					},'json');
				}
		});
		
		
		//异步 是否热门
		$(".changeHot").on("click",function(){
			var dataUrl = $(this).attr('dataUrl');
			var src = $(this).find("img").attr('src');
			var newSrc = substrlen(src);
			var bid = $(this).attr('bid');
			var _this = $(this);
			datas = {
					'bid' : bid,
					'src' : newSrc
			}
			$.post(hotUrl,datas,function(data){
				if (data.status) {
					var url = dataUrl + data.msg;
					_this.find("img").attr('src',url);
				}
			},'json');
		});
		
		//异步删除操作
		$(".delete").live("click",function(){
			if (confirm('确定要删除？')){
				var _this = $(this);
				//品牌删除
				var bid = $(this).attr('bid');
				if (bid) {
					$.post(delUrl,{'bid':bid},function(data){
						if (data.status) {
							hd_alert({
					            message: '删除成功^_^',//显示内容
					            timeout: 1,//显示时间
					            success : function(){
					            	_this.parents(".delTr").hide();
					            }
					       });
						}
					},'json');
				}
				//商品类型删除
				var tid;
				tid = $(this).attr('tid');
				if (tid) {
					$.post(delUrl,{'tid':tid},function(data){
						if (data.status) {
							//没有数据直接删除
							hd_alert({
					            message: '删除成功^_^',//显示内容
					            timeout: 1,//显示时间
					            success : function(){
					            	_this.parents(".delTr").hide();
					            }
					       });
						}else{
							hd_alert({
					            message: '该类型有数据,不能直接删除哦^_^',//显示内容
					            timeout: 3,//显示时间
					       });
						}
					},'json');
				}
				
				//商品 【类型属性】的删除
				var gtid;
				gtid = $(this).attr('gtid');
				if (gtid) {
					$.post(delUrl,{'gtid':gtid},function(data){
						if (data.status) {
							hd_alert({
					            message: '删除成功^_^',//显示内容
					            timeout: 1,//显示时间
					            success : function(){
					            	_this.parents(".delTr").hide();
					            }
					       });
						}
					},'json');
				}
				
				//商品分类的删除
				var cid;
				cid = $(this).attr('cid');
				if (cid) {
					$.post(delUrl,{'cid':cid},function(data){
						if (data.status) {
							//没有数据直接删除
							hd_alert({
					            message: '删除成功^_^',//显示内容
					            timeout: 1,//显示时间
					            success : function(){
					            	_this.parents(".delTr").hide();
					            }
					       });
						}else{
							hd_alert({
					            message: '该分类存有数据,不能直接删除哦^_^',//显示内容
					            timeout: 3,//显示时间
					       });
						}
					},'json');
				}
				
				//删除商品 开始
				var gid;
				var del;
				gid = $(this).attr('gid');
				del = $(this).attr('del');
				
				if (gid && del == 0) {
					//异步删除商品到回收站
					$.post(delUrl,{'gid':gid},function(data){
						if (data.status) {
							//没有数据直接删除
							hd_alert({
					            message: data.msg,//显示内容
					            timeout: 1,//显示时间
					            success : function(){
					            	_this.parents(".delTr").hide();
					            }
					       });
						}else{
							hd_alert({
					            message: data.msg,//显示内容
					            timeout: 3,//显示时间
					       });
						}
					},'json');
				}else if (gid && del == 1) {
					//彻底删除商品所有信息
					$.post(delUrl,{'gid':gid},function(data){
						if (data.status) {
							//没有数据直接删除
							hd_alert({
					            message: data.msg,//显示内容
					            timeout: 1,//显示时间
					            success : function(){
					            	_this.parents(".delTr").hide();
					            }
					       });
						}else{
							hd_alert({
					            message: data.msg,//显示内容
					            timeout: 3,//显示时间
					       });
						}
					},'json');
					
				}
				//删除商品 结束
				
				//货品删除 开始
				var glid;
				glid = $(this).attr('glid');
				if (glid) {
					$.post(delUrl,{'glid':glid},function(data){
						if (data.status) {
							hd_alert({
					            message: data.msg,//显示内容
					            timeout: 1,//显示时间
					            success : function(){
					            	_this.parents(".delTr").hide();
					            }
					       });
						}else{
							hd_alert({
					            message: data.msg,//显示内容
					            timeout: 3,//显示时间
					       });
						}
					},'json');
				}
				//货品删除 结束
				
				
				//商品分类图片删除 开始
				var teid;
				teid = $(this).attr('teid');
				if (teid) {
					$.post(delCateUrl,{'teid':teid},function(data){
						if (data.status) {
							hd_alert({
					            message: '删除成功^_^',//显示内容
					            timeout: 1,//显示时间
					            success : function(){
					            	_this.parents(".delTr").hide();
					            }
					       });
						}else{
							hd_alert({
					            message: '删除失败/(ㄒoㄒ)/',//显示内容
					            timeout: 1,//显示时间
					       });
						}
					},'json');
				}
				//商品分类图片删除 结束
				
				
				//友情链接删除 开始
				var lid;
				lid = $(this).attr('lid');
				if (lid) {
					$.post(delLinkUrl,{'lid':lid},function(data){
						if (data.status) {
							hd_alert({
					            message: '删除成功^_^',//显示内容
					            timeout: 1,//显示时间
					            success : function(){
					            	_this.parents(".delTr").hide();
					            }
					       });
						}else{
							hd_alert({
					            message: '删除失败/(ㄒoㄒ)/',//显示内容
					            timeout: 1,//显示时间
					       });
						}
					},'json');
				}
				//商品分类图片删除 结束
				
			}	
				
		});
		
		//回收站商品还原
		$(".restore").live('click',function(){
				if (confirm('确认要还原？')) {
					var gid = $(this).attr('gid');
					var _this = $(this);
					$.post(restoreUrl,{'gid' : gid},function(data){
							if (data.status) {
									//没有数据直接删除
									hd_alert({
							            message: data.msg,//显示内容
							            timeout: 1,//显示时间
							            success : function(){
							            	_this.parents(".delTr").hide();
							            }
							       });
							}else{
									hd_alert({
							            message: data.msg,//显示内容
							            timeout: 3,//显示时间
							       });
							}
					},'json');
				}
				
		});
		
		
		//货品添加处理重复添加操作
		var sel = $("select[name='spce[]']");
		var len = sel.length;
		sel.on('change',function(){
			var gid = $(":selected",this).attr('gid');
			var combine = $(":selected",this).attr('combine');
			var data = {
					'gid' : gid,
					'spec' : {}
				  };
			for (var i = 0; i < len; ++i){
				if (sel.eq(i).val() == 0){
					return;
				}else{
					data.spec[i] = sel.eq(i).val();
				}
			}
			$.post(changeSpce,data,function(data){
					if (data.status == 0) {
						//已存在,提示
						hd_alert({
				            message: data.msg,//显示内容
				            timeout: 1,//显示时间
				            success : function(){
				            	for (var i = 0; i < len; ++i){
									sel.eq(i).val(0);
								}
				            }
				       });
					}
			},'json');
		});
		
		
		//异步修改发货状态 开始
		$(".editStatus").on('click',function(){
				var logid = $(this).attr('logid');
				if (logid == 0) {
					hd_alert({
			            message: '您还没填写物流信息/(ㄒoㄒ)/',//显示内容
			            timeout: 1,//显示时间
			        });
					return;
				}
				var oid = $(this).attr('oid');
				$.post(editStatus,{'oid':oid},function(data){
						if (data.status) {
							hd_alert({
					            message: '发货成功^_^',//显示内容
					            timeout: 1,//显示时间
					            success : function(){
					            	window.location.reload();
					            }
					       });
						}else{
							hd_alert({
					            message: '发货失败/(ㄒoㄒ)/',//显示内容
					            timeout: 1,//显示时间
					        });
						}
				},"json");
		});
		//异步修改发货状态 结束
		
		
		
		//异步修改栏目图片 开始
		$(".cate_delete").on('click',function(){
				var cid = $(this).attr('cid');
				var lev = $(this).attr('lev');
				var _this = $(this);
				if (confirm('确定要删除该栏目图片？/(ㄒoㄒ)/~~,此操作不可逆`--`')) {
					var datas = {
							'cid' : cid,
							'lev' : lev
					}
					$.post(cateImgDelUrl,datas,function(data){
							if (data.status) {
									//没有数据直接删除
									hd_alert({
							            message: data.msg,//显示内容
							            timeout: 1,//显示时间
							            success : function(){
							            	_this.parents(".delTr").hide();
							            }
							       });
							}else{
									hd_alert({
							            message: data.msg,//显示内容
							            timeout: 1,//显示时间
							       });
							}
					},'json');
				}
				
		});
		//异步修改栏目图片 结束
		
		$(".bank-img").on('click',function(){
			var uid = $(this).attr('uid');
			$("#modal-uid").attr('value',uid);
			$('#myModal').modal('show');
		});
		
		//充值中心表单提交
		$("#pay-go").click(function(){
			var pay = $("#modalForm").find("#basictext").val();
			if (pay == '') {
				hd_alert({
		            message: '充值余额必须填写^_^',//显示内容
		            timeout: 1,//显示时间
		        });
				return false;
			}
			if (!pay.match(/^\+?[1-9][0-9]*$/)) {
				hd_alert({
		            message: '充值余额必须为正整数^_^',//显示内容
		            timeout: 1,//显示时间
		        });
				return false;
			}
			$("#modalForm").submit();
		});
		
		//截取字符串，取得图片路径
		function substrlen(str){
			//找到位置
			var strPos = str.lastIndexOf('/');
			//截取字符
			var strSrc = str.substr(strPos);
			//返回图片的截取后的路径
			return strSrc.substr(1);
		}
});