$(function(){
	//商品详情和累计评价 TAB表格切换
	$("#tabbar-list li").click(function(){
		//获取列表序号
		var index = $(this).index();
		$(this).addClass("tab-graphic selected").siblings().removeClass("tab-graphic selected");
		$("#module-tabpanel .panel-box").eq(index).show().siblings(".panel-box").hide();
	});
	
	//商品详情和累计评价 右侧加入购物车效果
	$("#extranav-bd li").each(function(n){
		$(this).click(function(){
			if (n==0) {
				$("#extranav-bd li").eq(n).addClass("selected").siblings().removeClass("selected");
				$("html,body").stop().animate({
					scrollTop : 500
				},0);
			}else if (n==1){
				$("#extranav-bd li").eq(n).addClass("selected").siblings().removeClass("selected");
				$("html,body").stop().animate({
					scrollTop : 750
				},0);
			}else if (n==2){
				$("#extranav-bd li").eq(n).addClass("selected").siblings().removeClass("selected");
				$("html,body").stop().animate({
					scrollTop : 1300
				},0);
			}else if (n==3){
				$("#extranav-bd li").eq(n).addClass("selected").siblings().removeClass("selected");
				$("html,body").stop().animate({
					scrollTop : 100000
				},0);
			}
		});
	});
	
	
	//颜色和尺码勾选中 效果
	$("#gds-rg .img").click(function(){
		$(this).addClass("img-c").siblings().removeClass("img-c");
		var gid = $("input[name=gid]").val();
		var data = {
				'gid' : gid,
				'gtid' : {}
			  };
		var gtid={};
		$.each($('.img-c'),function(k,v){
			data.gtid[k] = $(this).attr('gtid');
		});
		//统计被选中的长度
		var imgLen = $('.img-c').length;
		if (imgLen >= 2) {
			$.post(DetUrl,data,function(datas){
				if (datas.status) {
					$("#goods-stock-tip").hide();
					$("#gtid").attr('value',datas.gtid);
					$("#inven-num").html(datas.msg);
				}else{
					$("#inven-num").html(datas.gtid);
					$("#goods-stock-tip").show();
					$("#goods-stock-tip").html(datas.msg);
				}
			},"json");
		}
		
	});
	
	
	
	$("#gds-lx-area .gds-lx").click(function(){
		$(this).addClass("gds-lxt").siblings().removeClass("gds-lxt");
	});
	
	//数量加+1
	$("#num-add").click(function(){
		var oldNum = $("#num-input").val();
		var num=1;
		var total = oldNum*1+num*1;
		var kucun = parseInt($("#inven-num").html());
		var gtid = $("#gtid").val();
		$("#goods-stock-tip").hide();
		if (!gtid) {
			//没有选择,提示
			$("#goods-stock-tip").show();
			$("#goods-stock-tip").html('请您商品选择颜色和尺码哦^_^');
			return;
		}
		/*
		if (!kucun){
			hd_alert({
	            message: '库存不足^_^',//显示内容
	            timeout: 1,//显示时间
	        });
			return;
		}*/
		if (total > kucun) {
			$("#goods-stock-tip").show();
			$("#goods-stock-tip").html('您所填写的商品数量已超过了库存/(ㄒoㄒ)/~~');
		    return;
		}
		$("#num-input").attr('value',total);
		//获取隐藏表单的数值
		
//		var gid = $("input[name=gid]").val();
		/*if (gtid) {
			//已经选择尺码和颜色了,异步请求
			var data = {
					'gtid' : gtid,
					'gid' : gid
			};
			//异步请求修改库存量
			$.post(addUrl,data,function(data){
				if (data.status) {
					$("#num-input").attr('value',total);
					//修改库存值
					$("#inven-num").html(data.msg);
				}else{
					hd_alert({
			            message: datas.msg,//显示内容
			            timeout: 1,//显示时间
			       });
				}
			},"json");
			
		}else{
			//没有选择,提示
			hd_alert({
	            message: '请您商品选择颜色和尺码哦^_^',//显示内容
	            timeout: 1,//显示时间
	       });
		}*/
	});
	
	//数量加-1
	$("#num-reduce").click(function(){
		var oldNum = $("#num-input").val();
		var num=1;
		var total = oldNum*1-num*1;
		$("#goods-stock-tip").hide();
		if (total == 0){
			$("#goods-stock-tip").show();
			$("#goods-stock-tip").html('购买数量不能为0,请您重新选择/(ㄒoㄒ)/~~');
			total=1;
			return;
		}
		$("#num-input").attr('value',total);
		//获取隐藏表单的数值
		/*var gtid = $("#gtid").val();
		var gid = $("input[name=gid]").val();
		if (gtid) {
			//已经选择尺码和颜色了,异步请求
			var data = {
					'gtid' : gtid,
					'gid' : gid
			};
			//异步请求修改库存量
			$.post(minusUrl,data,function(data){
				if (data.status) {
					$("#num-input").attr('value',total);
					//修改库存值
					$("#inven-num").html(data.msg);
				}else{
					hd_alert({
			            message: datas.msg,//显示内容
			            timeout: 1,//显示时间
			       });
				}
			},"json");
			
		}else{
			//没有选择,提示
			hd_alert({
	            message: '请您选择商品颜色和尺码哦^_^',//显示内容
	            timeout: 1,//显示时间
	       });
		}*/
		
	});
	
	
	//加入购物车
	$("#J_BuyCart").click(function(){
		var gtid = $("#gtid").val();
		var gid = $("input[name=gid]").val();
		var num = $("#num-input").val();
		var kucun = parseInt($("#inven-num").html());
		if (kucun) {
			var data = {
					'gid' : gid,
					'gtid' : gtid,
					'num' : num
			};
			//异步请求 加入购物车
			$.post(joinCart,data,function(data){
				 if (data.status) {
//					  window.location.reload();
					 $("#cart-hide-area").fadeIn(300);
					 $(".floorNum").html(data.tatol);
					 if (!data.first) {
						 window.location.reload();
					 }
//		              $("#cart-hide-area").fadeIn(300);
//		              $("#mgj-my-cart").location.reload();
					  /*hd_alert({
				            message: data.msg,//显示内容
				            timeout: 1,//显示时间
				            success : function(){
				            	//显示加入成功界面
				            	window.location.reload();
				            	$("#cart-hide-area").fadeIn(300);
				            }
				       });*/
				 }
			},"json");
			
		}else{
			hd_alert({
	            message: '请您选择尺码和颜色^_^',//显示内容
	            timeout: 1,//显示时间
	        })
	   }
	});
	
	
	//立即购买表单提交
	$("#J_BuyNow").click(function(){
		var gtid = $("#gtid").val();
		var kucun = parseInt($("#inven-num").html());
		if (!kucun) {
			hd_alert({
	            message: '请您选择尺码和颜色^_^',//显示内容
	            timeout: 1,//显示时间
	        })
			return false;
		}
		$("#cartForm").submit();
	});
	
	//去结算提示
	$("#settleUrl").click(function(){
		var uid = parseInt($(this).attr('uid'));
		if (!uid) {
			//友情提示,并且跳转登录页
			hd_alert({
	            message: '您还没有登录/(ㄒoㄒ)/~~',//显示内容
	            timeout: 1,//显示时间
	            success : function(){
	            	location.href = Root + "/" + "H_log.html";
	            }
	       });
		} else {
			location.href = Root + "/" + "H_C_a_0.html";
		}
		
	});
	
	
	//购物车计算总价 减法
	$(".num-reduces").on('click',function(){
		//获取旧数量
		var oldNum = $(this).siblings(".num-input").val();
		//获取价格
		var price = $(this).attr('price');
		//获取当前的父级
		var totalPrObj = $(this).parents(".totalPr");
		//获得货品ID
		var glid = $(this).attr('glid');
		//获取总价格
		var totalPrice = parseInt($("#totalPrice").html()) - parseInt(price);
		//获取小计价格
		var sumRed = totalPrObj.find(".cart_deep_red");
		var _this = $(this);
		//获取当前的库存值
		var inventory = parseInt($(this).attr('inventory'));
		
		
		//数量减一
		var num=1;
		var total = oldNum*1-num*1;
		//计算小计价格
		var sumPrice = total * parseInt(price);
		//判断购买数量
		if (total == 0){
			hd_alert({
	            message: '购买数量不能为0,请您重新选择!',//显示内容
	            timeout: 1,//显示时间
	        });
			total=1;
			return;
		}
		
		//异步请求库存量
		$.post(desNumUrl,{'glid' : glid},function(data){
			if (data.status) {
				_this.siblings(".num-input").attr('value',total);
				//计算出价格
				$("#totalPrice").html(totalPrice);
				//修改小计价格
				sumRed.html("¥ " + sumPrice);
				//给删除按钮属性赋值小计价格
				totalPrObj.find(".delete").attr('mgprice',sumPrice);
			}
			/*else{
				hd_alert({
		            message: data.msg,//显示内容
		            timeout: 1,//显示时间
		        });
			}*/
		},"json");
		
		
	});
	
	//购物车计算总价 加法
	$(".num-adds").on('click',function(){
		//获取旧数量
		var oldNum = $(this).siblings(".num-input").val();
		//获取价格
		var price = $(this).attr('price');
		//获取当前的父级
		var totalPrObj = $(this).parents(".totalPr");
		//获得货品ID
		var glid = $(this).attr('glid');
		//获取总价格
		var totalPrice = parseInt($("#totalPrice").html()) + parseInt(price);
		//获取小计价格
		var sumRed = totalPrObj.find(".cart_deep_red");
		var _this = $(this);
		//获取当前的库存值
		var inventory = parseInt($(this).attr('inventory'));
		
		//数量加一
		var num=1;
		var total = oldNum*1+num*1;
		//判断当前库存
		if (total >= inventory) {
			hd_alert({
	            message: '您所填写的商品数量已超过了库存/(ㄒoㄒ)/~~',//显示内容
	            timeout: 1,//显示时间
	        });
			return;
		}
		
		//计算小计价格
		var sumPrice = total * parseInt(price);
		
		
		//异步请求库存量
		$.post(AddnumUrl,{'glid' : glid},function(data){
			if (data.status) {
				_this.siblings(".num-input").attr('value',total);
				//计算出价格
				$("#totalPrice").html(totalPrice);
				//修改小计价格
				sumRed.html("¥ " + sumPrice);
				//给删除按钮属性赋值小计价格
				totalPrObj.find(".delete").attr('mgprice',sumPrice);
			}else{
				hd_alert({
		            message: data.msg,//显示内容
		            timeout: 1,//显示时间
		        });
			}
		},"json");
		
	});
	
	
	//我的购物车删除操作
	$(".totalPr .delete").on('click',function(){
		if (confirm('确定要移除该商品/(ㄒoㄒ)/~~')) {
			//获得货品ID
			var glid = $(this).attr('glid');
			//获取小计价格
			var mgprice = $(this).attr('mgprice');
			//获取当前的父级
			var totalPrObj = $(this).parents(".totalPr");
			
			//异步处理删除
			$.post(delNumUrl,{'glid' :glid},function(data){
				if (data.status) {
					//删除成功,移除当前
					totalPrObj.fadeOut(300);
					//更新总价格
					$("#totalPrice").html(data.msg);
					//更新商品数量
					$(".goodsNum").html(data.tatol);
					//如果商品总数为零,那么重载一下页面
					if (data.tatol == 0) {
						 window.location.reload();
					}
				}
			},"json");
		}
	});
	
	//异步添加收货地址 【确认订单区域】
	$("#siteDataFrom").submit(function(){
		var siteData = $("#siteDataFrom").serialize();
		var phone = $("input[name=phone]").val();
		var consignee = $("input[name=consignee]").val();
		var postalcode = $("input[name=postalcode]").val();
		var street = $("input[name=street]").val();
		var city = $("#city").val();
		var siteLive = $("#siteLive").attr("live");
		
		//必须全部填写才发送异步
		if (city !='' && postalcode !='' && consignee !='' && street !='' && phone.match(/^(13[0-9]|14[0-9]|15[0-9]|18[0-9])\d{8}$/i)) {
			$.post(siteUrl,siteData,function(data){
				if (data.status) {
					//操作成功,隐藏地址输入栏
					hd_alert({
			            message: data.msg,//显示内容
			            timeout: 1,//显示时间
			            success : function(){
			            	$("#addressbox_warp").fadeOut(300);
			            	setTimeout(function(){
			            		if (siteLive == 1) {
			            			location.href=Root + "/" + "H_U_site_0.html";
			            		}else{
			            			location.href=Root + "/" + "H_C_a_0.html";
			            		}
			            	},80);
			            }
			        });
				}else{
					hd_alert({
			            message: data.msg,//显示内容
			            timeout: 1,//显示时间
			        });
				}
			},"json");
		}
		//阻止表单刷新
		return false;
	});
	
	//异步修改地址设为默认
	$(".J_default").on('click',function(){
		var _this = $(this);
		var status = $(this).attr('status');
		
		if (status == 1) {
			hd_alert({
	            message: '该地址已经是默认了^_^',//显示内容
	            timeout: 1,//显示时间
	        });
	        return;
		}
		var sid = $(this).attr('sid');
		$.post(defaultUrl,{'sid' : sid},function(data){
			if (data.status) {
				hd_alert({
		            message: data.msg,//显示内容
		            timeout: 1,//显示时间
		            success : function () {
		            	//修改最外层样式
		            	_this.parents(".addr_section").addClass('addr-section-cur').siblings(".addr_section").removeClass('addr-section-cur');
		            	//修改默认值
		            	_this.html('已为默认').parents(".addr_section").siblings().find(".J_default").html("设为默认");
		            	//修改默认的样式
		            	_this.addClass('J-default-a').parents(".addr_section").siblings().find(".J_default").removeClass("J-default-a");
		            	//修改状态值
		            	_this.parents(".addr_section").siblings().find(".J_default").attr('status',0);
		            }
		        });
			}else{
				hd_alert({
		            message: data.msg,//显示内容
		            timeout: 1,//显示时间
		        });
			}
		},'json');
	});
	
	//异步删除收货地址
	$(".nobd").on('click',function(){
		var sid = $(this).attr('sid');
		var _this = $(this);
		$.post(delSiteUrl,{'sid' : sid},function(data){
			if (data.status) {
				hd_alert({
		            message: data.msg,//显示内容
		            timeout: 1,//显示时间
		            success : function(){
		            	_this.parents(".addr_section").fadeOut(300);
		            }
		        });
			}else{
				hd_alert({
		            message: data.msg,//显示内容
		            timeout: 1,//显示时间
		        });
			}
		},'json');
	});
	
	//确定订单 确定并且付款 异步操作
	$("#cart-surebtn").click(function(){
		//获取收货地址的ID
		var sid = $(".J-default-a").attr('sid');
		$.post(orderUrl,{'sid' : sid},function(data){
			if (data.status) {
				hd_alert({
		            message: data.msg,//显示内容
		            timeout: 1,//显示时间
		            success : function () {
		            	//跳转支付页
		            	location.href = 'H_C_ali_' + data.oid + '.html';
		            }
		        });
			}else{
				hd_alert({
		            message: data.msg,//显示内容
		            timeout: 1,//显示时间
		        });
			}
		},"json");
	});
	
	//确认并付款 支付页
	$(".J_payOrder").click(function(){
		//付款方式
		var payMethod = $("input[name=paymethod]:checked").val();
		//订单id
		var oid = $("#J_Oid").val();
		//我的余额
		var pay = parseInt($("#J_Num").find(".num").text());
		//商品总余额
		var goods = parseInt($("#J_Goods_num").text());
		if (goods > pay) {
			hd_alert({
	            message: '余额不足/(ㄒoㄒ)/',//显示内容
	            timeout: 1,//显示时间
	        });
			return false;
		}
		var datainfo = {
				'oid' : oid,
				'payMethod' : payMethod,
				'goods' : goods
		}
		$.post(payAjaxUrl,datainfo,function(data){
			if (data.status) {
				hd_alert({
		            message: data.msg,//显示内容
		            timeout: 1,//显示时间
		            success : function(){
		            	location.href= Root  + "/" + 'H_U_mt_0.html';
		            }
		        });
			}else{
				hd_alert({
		            message: data.msg,//显示内容
		            timeout: 1,//显示时间
		        });
			}
		},"json");
	});
	
	//我的订单 取消订单
	$(".order-remove").on('click',function(){
			if (confirm('确认要取消该订单？')) {
				var oid = $(this).attr('oid');
				var glid = $(this).attr('glid');
				var obj = $(this).parents(".order-table");
				var num = parseInt(obj.find(".quantity").text());
				datas = {
						'oid' : oid,
						'num' : num,
						'glid' : glid
				}
				$.post(delOrderUrl,datas,function(data){
						if (data.status) {
							obj.fadeOut(500);
						}else{
							hd_alert({
					            message: data.msg,//显示内容
					            timeout: 1,//显示时间
					        });
						}
				},"json");
			}
	});
	
	//我的订单 确认收货
	$(".order-confirm").on('click',function(){
			var oid = $(this).attr('oid');
			$.post(confirmOrderUrl,{'oid':oid},function(data){
					if (data.status) {
						hd_alert({
				            message: data.msg,//显示内容
				            timeout: 1,//显示时间
				            success : function (){
				            	window.location.reload();
				            }
				        });
					}else{
						hd_alert({
				            message: data.msg,//显示内容
				            timeout: 1,//显示时间
				        });
					}
			},"json");
	});
	
	//提醒卖家发货
	$(".order-remind").on('click',function(){
		hd_alert({
            message: '感谢您的支持,我们会尽快发货^_^',//显示内容
            timeout: 1,//显示时间
        });
	});
});
