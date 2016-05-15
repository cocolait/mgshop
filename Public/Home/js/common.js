$(function(){
	//公共js文件
	//隐藏我的购物车大于2的数据
	$("#hide-cart-table .cart_lh20:gt(1)").hide();
	
	//我的购物车
	$("#t1-cate").hover(function(){
		var _this = $(this);
		 t = setTimeout(function(){
			_this.find(".cate-hide").fadeIn(200);
		},200);
		
	},function(){
		clearTimeout(t);
		$(this).find(".cate-hide").hide();
	});
	
	//商品图片切换 小图切换
	$("#goodsMin-list .m-carousel li").each(function(n){
		$(this).mouseenter(function(){
			$("#goodsMin-list .m-carousel li").eq(n).find("i").show().parent().siblings("li").find("i").hide();
			$("#goodsMin-list .m-carousel li").eq(n).addClass("c").siblings().removeClass("c");
			//获取img src的属性
			var src = $("#goodsMin-list .m-carousel li").eq(n).find("img").attr('src');
			var upSrc = imgsLen(src);
			
			//取得图片路径
			var srcT = substrlen(src,'/');
			var Insrc = substrlen(srcT,'_');
			var newSrc =Root + upSrc + '/' +'mid_' + Insrc;
			$("#mid-imgs").find("img").attr('src',newSrc);
		});
	});
	
	//小图左右点击事件
	var k=0;
	//点击左边运动
	$(".min-left").click(function(){
		k++;
		if (k==4) {
			$(".list .m-carousel").css('left','0px');
			k=0;
		}
		$(".list .m-carousel").stop().animate({
				'left' : k * -138
		},300);
	});
	//点击右边运动
	$(".min-right").click(function(){
		if (k==0) {
			k=4;
		}
		k--;
		$(".list .m-carousel").stop().animate({
				'left' : k * -138
		},300);
	});
	
	
	//地址管理编辑效果js
	$("#J_saddAddress").click(function(){
		$(".addressbox_warp").show();
	});
	
	$("#hd-del-s").click(function(){
//		$(".addressbox_warp").hide();
		location.href= Root + "/" + "H_C_a_0.html";
	});
	
	$("#hd-del").click(function(){
//		$(".addressbox_warp").hide();
		location.href= Root + "/" + "H_U_site_0.html";
	});
	
	//列表页分类导航 TAB切换页
	$("#nav_list li").each(function(s){
		$("#sp_topbanner .sp_type_nav:gt(0)").hide();
		//被选中的序号
		var h = $("#nav_list .on").index();
		//让指定选中的序号显示
		$("#sp_topbanner .sp_type_nav").eq(h).show().siblings(".sp_type_nav").hide();
		$(this).click(function(){
			$("#nav_list li").eq(s).addClass("on").siblings().removeClass("on");
			$("#sp_topbanner .sp_type_nav").eq(s).show().siblings(".sp_type_nav").hide();
		});
	});
	
	
	
	//回到顶部
	$(".sideBottom").click(function(){
		$("html,body").stop().animate({
				scrollTop : 0
		},300);
	});
	
	
	
	//关闭购物车页面
	$(".fix-close-btn").click(function(){
		$("#cart-hide-area").hide('slow');
	});
	
	
	//用户登录后状态的下拉菜单
	$("#user_meta").hover(function(){
		$(this).find("#menu_personal").fadeIn(300);
	},function(){
		$(this).find("#menu_personal").hide();
	});
	
	//我的订单判断并且跳转
	$("#J-order").click(function(){
		var uid = $(this).attr('uid');
		if (uid==0) {
			hd_alert({
	            message: '您还没有登录哦^_^',//显示内容
	            timeout: 1,//显示时间
	            success : function(){
	            	location.href = 'H_log.html';
	            }
	       });
			return;
		}
		location.href = 'H_U_mt_0.html';
	});
	
	
	//用户头像处理
	$("#mg-userFace").click(function(){
		var uid = $(this).attr('uid');
		if (uid==0) {
			hd_alert({
	            message: '您还没有登录哦^_^',//显示内容
	            timeout: 1,//显示时间
	            success : function(){
	            	location.href = 'H_log.html';
	            }
	       });
			return;
		}
		location.href = 'H_U.html';
	});
	
	
	//我的钱包余额充值
	$(".hd-success-area").click(function(){
		$("#hd-modal-bg").show();
		$("#hd-modal").show();
	});
	//关闭模态框
	$(".hd-clone-modal").click(function(){
		$("#hd-modal-bg").hide();
		$("#hd-modal").hide();
	});
	
	$(".hd-success-modal").click(function(){
		 var pay = $(this).parents(".hd-modal-wrap").find(".text-pay-value").val();
		 if (pay == '') {
			 hd_alert({
		            message: '充值金额必须输入^_^',//显示内容
		            timeout: 1,//显示时间
		     });
			 return;
		 }
		 if (!pay.match(/^\d*$/)) {
			 hd_alert({
		            message: '充值金额必须为数字^_^',//显示内容
		            timeout: 1,//显示时间
		     });
			 return;
		 }
		 $.post(payValueUrl,{'pay' : pay},function(data){
			  if (data.status) {
				  hd_alert({
			            message: data.msg,//显示内容
			            timeout: 1,//显示时间
			            success : function(){
			            	$("#hd-modal-bg").hide();
			            	$(".num-pay-go").html(data.pay);
			        		$("#hd-modal").hide();
			            }
			     });
			  }else{
				  hd_alert({
			            message: data.msg,//显示内容
			            timeout: 1,//显示时间
			            success : function(){
			            	$("#hd-modal-bg").hide();
			        		$("#hd-modal").hide();
			            }
			     });
			  }
		 },"json");
	});
	
	//截取字符串，取得图片路径
	function substrlen(str,sign){
		//找到位置
		var strPos;
		if (sign == '/') {
			strPos = str.lastIndexOf('/');
		}else if (sign == '_') {
			strPos = str.lastIndexOf('_');
		}
		//截取字符
		var strSrc = str.substr(strPos);
		//返回图片的截取后的路径
		return strSrc.substr(1);
	}
	
	function imgsLen(str){
		//找到Upload
		var strTo = str.lastIndexOf('/Upload');
		//截取
		var strPos = str.lastIndexOf('/');
		var ToLen = strPos - strTo;
		var newSrc = str.substr(strTo,ToLen);
		return newSrc;
	}
	
});
