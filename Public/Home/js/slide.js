$(function(){
	/*轮播图 区域*/
	var n =0;
	var slideLi = $(".slide-box a");
	var h = slideLi.length;
	var spotLi = $(".hd-slide li");
	var times;
	//显示第一张大图
	$(".slide-box a:gt(0)").hide();
	clearInterval(times);
	autoPlay();
	function autoPlay(){
		times = setInterval(function(){
			n++;
			if(n>=h)n=0; 
			slideLi.eq(n).fadeIn(500).siblings().fadeOut(500);
			spotLi.eq(n).addClass("cur").siblings().removeClass("cur");
		},3000);
	}
	
	/*给最外层加移入移出事件*/
	$(".slide-area").hover(function(){
		$(this).find(".prev").show().siblings(".next").show();
		clearInterval(times);
	},function(){
		autoPlay();
		$(this).find(".prev").hide().siblings(".next").hide();
	});

	/*给小方块加移入移出事件*/
	spotLi.mouseenter(function(){
		var index = $(this).index();
		n = index;
		slideLi.eq(index).fadeIn(300).siblings().fadeOut(300);
		spotLi.eq(index).addClass("cur").siblings().removeClass("cur");
	});

	/*右边点击+*/
	$(".slide-area .next").click(function(){
		n++;
		if(n==h)n=0;
		slideLi.eq(n).fadeIn(300).siblings().fadeOut(300);
		spotLi.eq(n).addClass("cur").siblings().removeClass("cur");
	});
	/*左边点击-*/
	$(".slide-area .prev").click(function(){
		if(n==0)n=h;
		n--;
		slideLi.eq(n).fadeIn(300).siblings().fadeOut(300);
		spotLi.eq(n).addClass("cur").siblings().removeClass("cur");
	});


	
});