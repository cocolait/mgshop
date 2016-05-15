$(function(){
		//商品属性表单验证 开始
		$('#addAttrForm').validate({
			gtname: {
	               rule: {
	                    required: true
	                },
	                error: {
	                    required: '属性名称必须填写哦^_^'
	                },
	                success: 'ok'
	            },
	            goods_type_tid: {
	                rule: {
	                    required: true
	                },
	                error: {
	                    required: '商品类型必须选择哦^_^'
	                },
	                success: 'ok'
	            },
	            gtvalue: {
	                rule: {
	                    required: true
	                },
	                error: {
	                    required: '属性值必须填写哦^_^'
	                },
	                success: 'ok'
	            }
	       });
		 //商品属性表单验证 结束
		
		//商品分类表单验证  开始
		$('#addCategoryForm').validate({
			cname: {
	               rule: {
	                    required: true
	                },
	                error: {
	                    required: '商品分类名称必须填写哦^_^'
	                },
	                success: 'ok'
	            },
	            goods_attr_tid: {
	                rule: {
	                    required: true
	                },
	                error: {
	                    required: '类型必须选择哦^_^'
	                },
	                success: 'ok'
	            },
	           csort: {
	                rule: {
	                    required: true,
	                    num : '1,65535'
	                },
	                error: {
	                    required: '排序必须填写哦^_^',
	                    num: '排序必须是数字哦^_^'
	                },
	                success: 'ok'
	            }
	       });
		//商品分类表单验证 结束
		
		//品牌列表表单验证 开始
		$('#addBrandForm').validate({
			bname: {
	               rule: {
	                    required: true
	                },
	                error: {
	                    required: '品牌名称必须填写哦^_^'
	                },
	                success: 'ok'
	            },
	            bsort: {
	                rule: {
	                    required: true,
	                    num : '1,65535'
	                },
	                error: {
	                    required: '品牌排序必须填写哦^_^',
	                    num: '品牌排序必须是数字'
	                },
	                success: 'ok'
	            }
	       });
		//品牌列表表单验证 结束
		
		//商品表单 添加  编辑  开始
		$('#addGoodsForm').validate({
			category_cid: {
	               rule: {
	                    required: true
	                },
	                error: {
	                    required: '所属分类必须选择哦^_^'
	                },
	                success: 'ok'
	            },
	            brand_bid: {
		               rule: {
		                    required: true
		                },
		                error: {
		                    required: '所属品牌必须选择哦^_^'
		                },
		                success: 'ok'
		         },
		         goods_type_tid: {
		               rule: {
		                    required: true
		                },
		                error: {
		                    required: '所属商品类型必须选择哦^_^'
		                },
		                success: 'ok'
		         },
		         gname: {
		               rule: {
		                    required: true
		                },
		                error: {
		                    required: '商品名称必须填写哦^_^'
		                },
		                success: 'ok'
		            },
		            unit: {
			               rule: {
			                    required: true
			                },
			                error: {
			                    required: '记件单位必须填写哦^_^'
			                },
			                success: 'ok'
			            },
			            marketprice: {
				               rule: {
				                    required: true,
				                    num : '1,65535'
				                },
				                error: {
				                    required: '市场价必须填写哦^_^',
				                    num : '市场价必须填写数字哦^_^'
				                },
				                success: 'ok'
				            },
				            shopprice: {
					               rule: {
					                    required: true,
					                    num : '1,65535'
					                },
					                error: {
					                    required: '商城价必须填写哦^_^',
					                    num : '商城价必须填写数字哦^_^'
					                },
					                success: 'ok'
					            },
					            repertory: {
					               rule: {
					                    required: true,
					                    num : '1,65535'
					                },
					                error: {
					                    required: '商品库存必须填写哦^_^',
					                    num : '商品库存必须填写数字哦^_^'
					                },
					                success: 'ok'
					            }
	       });
		//商品表单 添加  编辑  结束
		
		//添加货品 表单
		$('#goodsListAddForm').validate({
				inventory : {
		               rule: {
		                    required: true,
		                    num : '1,65535'
		                },
		                error: {
		                    required: '库存必须填写哦^_^',
		                    num : '库存必须填写数字哦^_^'
		                },
		                success: 'ok'
		          }
	       });
		//添加货品 结束
		
		//验证商品详细和售后服务
		$("#addGoodsForm").submit(function(){
			if ($("input[name=gnumber]").val()) {
				if (!ue.hasContents()) {
					hd_alert({
			            message: '商品详细必须填写^_^',//显示内容
			            timeout: 3,//显示时间
			       });
					return false;
				}else if (!ue2.hasContents()) {
					hd_alert({
			            message: '售后服务必须填写^_^',//显示内容
			            timeout: 3,//显示时间
			       });
					return false;
				}
				return true;
			}
		});
		
		//物流详情表单 开始
		$('#LogisticsForm').validate({
			logname: {
	               rule: {
	                    required: true
	                },
	                error: {
	                    required: '发货人必须填写哦^_^'
	                },
	                success: 'ok'
	            },
	            address: {
	                rule: {
	                    required: true,
	                    minlen: 5,
	                    maxlen : 100
	                },
	                error: {
	                    required: '请您填写详细的发货地址^_^',
	                    minlen : '最少不能少于5个字^_^',
	                    maxlen : '最多不能超过100个字'
	                },
	                success: 'ok'
	            },
	            company: {
	                rule: {
	                    required: true
	                },
	                error: {
	                    required: '物流公司必须选择哦^_^'
	                },
	                success: 'ok'
	            },
	            cellphone: {
	                rule: {
	                    required: true,
	                    phone: true
	                },
	                error: {
	                    required: '请您填写发货人的手机号码^_^',
	                    phone: '请您填写正确的手机号码^_^'
	                },
	                success: 'ok'
	            },
	            zipcode: {
	                rule: {
	                    required: true,
	                    num: '100000,999999'
	                },
	                error: {
	                    required: '请您填写邮政编码^_^',
	                    num : '邮政编码必须为数字,并且不能超过6位^_^'
	                },
	                success: 'ok'
	            },
	            tel: {
	                rule: {
	                    required: true
	                },
	                error: {
	                    required: '请您客服号码^_^'
	                },
	                success: 'ok'
	            }
	       });
		//物流详情表单 结束
		
		//栏目图片管理 表单
		$("#cateFormOne").validate({
					cid : {
		               rule: {
		                    required: true
		                },
		                error: {
		                    required: '分类必须选择^_^'
		                },
		                success: 'ok'
		          }
	       });
		//栏目图片管理 表单 结束
		
		
		//友情链接表单
		$("#addLinkForm").validate({
				lname : {
		               rule: {
		                    required: true
		                },
		                error: {
		                    required: '友情名称必须填写^_^'
		                },
		                success: 'ok'
		          },
		          url : {
		               rule: {
		                    required: true,
		                    http : true
		                },
		                error: {
		                    required: 'Url必须填写^_^',
		                    http : '请填写正确http地址'
		                },
		                success: 'ok'
		          }
	       });
		//栏目图片管理 表单 结束
		
		//系统设置 修改密码 表单
		$("#sysUserForm").validate({
				pwd : {
		               rule: {
		                    required: true
		               },
		                error: {
		                    required: '旧密码必须填写^_^'
		                },
		                success: 'ok'
		          },
		          password : {
		               rule: {
		                    required: true,
		                    minlen : 5
		                },
		                error: {
		                    required: '新密码必须填写^_^',
		                    minlen : '新密码不能小于5位'
		                },
		                success: 'ok'
		          },
		          password2 : {
		               rule: {
		                    required: true,
		                    confirm: 'password'
		                },
		                error: {
		                    required: '确认新密码必须填写^_^',
		                    confirm : '两次密码输入不一致'
		                },
		                success: 'ok'
		          }
	       });
		//系统设置 修改密码 表单 结束
		
		
});