$(function(){
	$('#loginOut').click(function(){
		var isOut = confirm('退出登录？');
		if (isOut) {
			return true;	
		} else {
			return false;
		}
	});

	/*$('.Pub').click(function(){
		var msg = $(this).children('img').attr('title');
		var isPub = confirm('确定' + msg + '?');
		if (isPub) {
			return true;	
		} else {
			return false;
		}
	});*/


	$('input[level=1]').click(function(){
			var inputs = $(this).parents('.app').find('input');
			$(this).attr('checked') ? inputs.attr('checked','checked') : inputs.removeAttr('checked');
	});

	$(".level-child").on('click',function(){
		var inputs = $(this).parents(".app-ce").find("input");
		$(this).attr('checked') ? inputs.attr('checked','checked') : inputs.removeAttr('checked');
	});

	$(".add-role").on('click',function(){
		var obj = $(this).parents(".control-group").clone();
		obj.find(".add-role").remove();
		$("#last-sp").before(obj);
	});
		
	/*修改栏目和品牌的显示与否
	function toggleShow(url,table,id,field,obj){
	$.post(url,{table:table,id:id,field:field},function(data){
		if(data.err == 1){
			alert(data.msg);
		}else{
			
			var src = data.msg ? publicUrl+'img/yes.gif' : publicUrl+'img/no.gif';
			$(obj).attr('src',src);
		}
	},'json');*/
	/*}
	function saveSort(url,id,obj,table){
	var sort=$(obj).val();
	var data=null;
	if(table=='shop_category'){
		data={cat_id:id,sort:sort,table:table}
	}else{
		data={brand_id:id,sort:sort,table:table}
	}
	$.post(url,data,function(res){
		if(res){
			$(obj).val(sort);
		}
	});
	}*/



});