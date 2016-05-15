$(function() {
	//栏目移入移出事件

	$(".primary-nav-list .primary-nav-li").each(function(n) {
		$(this).hover(function() {
			var hei = n * 42 + "px";
			$(".primary-nav-list .primary-nav-li").eq(n).find(".nav-hide").show();
			$(".primary-nav-list .primary-nav-li").eq(n).addClass("nav-line-cur");
			$(".primary-nav-list .primary-nav-li").eq(n).find(".nav-line").show();
			$(".primary-nav-list .primary-nav-li").eq(n).find(".nav-line").css('top',hei);
		}, function() {
			$(".primary-nav-list .primary-nav-li").eq(n).find(".nav-hide").hide();
			$(".primary-nav-list .primary-nav-li").eq(n).removeClass("nav-line-cur");
			$(".primary-nav-list .primary-nav-li").eq(n).find(".nav-line").hide();
		});
	});

	//首页头部 弹出搜索框 
	$(".sticky-search-container").hide();
	$(window).scroll(function() {
		var top = $(this).scrollTop();
		if (top > 500) {
			$(".sticky-search-container").fadeIn(500);
		} else {
			$(".sticky-search-container").fadeOut(300);
		}
	});

});