$(function(){
		//用户信息表单验证 开始
		$('#UserinfoForm').validate({
			trunname: {
	               rule: {
	                    required: true
	                },
	                error: {
	                    required: '请您填写你的大名哦^_^'
	                },
	                success: 'ok'
	            },
	            city: {
	                rule: {
	                    required: true
	                },
	                error: {
	                    required: '请您选择所在地哦^_^'
	                },
	                success: 'ok'
	            },
	            sex: {
	                rule: {
	                    required: true
	                },
	                error: {
	                    required: '请您选择性别哦^_^'
	                },
	                success: 'ok'
	            },
	            profession: {
	                rule: {
	                    required: true
	                },
	                error: {
	                    required: '请您选择职业哦^_^'
	                },
	                success: 'ok'
	            },
	            constellation: {
	                rule: {
	                    required: true
	                },
	                error: {
	                    required: '请您选择星座哦^_^'
	                },
	                success: 'ok'
	            }
	           
	       });
		//用户信息表单验证 结束
		
		//收货地址表单  开始
		$('#siteDataFrom').validate({
				city: {
	                rule: {
	                    required: true
	                },
	                error: {
	                    required: '请您选择所在地^_^'
	                },
	                success: 'ok'
	            },
	            postalcode: {
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
	            street: {
	                rule: {
	                    required: true,
	                    minlen: 5,
	                    maxlen : 100
	                },
	                error: {
	                    required: '请您填写详细的收货地址^_^',
	                    minlen : '最少不能少于5个字^_^',
	                    maxlen : '最多不能超过100个字'
	                },
	                success: 'ok'
	            },
	            consignee: {
	                rule: {
	                    required: true
	                },
	                error: {
	                    required: '请您填写收货人的姓名^_^'
	                },
	                success: 'ok'
	            },
	            phone: {
	                rule: {
	                    required: true,
	                    phone: true
	                },
	                error: {
	                    required: '请您填写收货人的手机号码^_^',
	                    phone: '请您填写正确的手机号码^_^'
	                },
	                success: 'ok'
	            }
	           
	       });
		//收货地址表单  结束
});