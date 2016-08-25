$(function(){
	//头部导航栏效果
	$("#navbar-collapse ul li").click(function(){
		$("#navbar-collapse ul li").removeClass("active");
		$(this).addClass("active");
	});
});

