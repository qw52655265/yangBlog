/**
 * 
 */
$(function(){
	$(window).keydown(function(event){
		if(event.keyCode=="13"){
			$(".submit_button").click();
		}
	});
	if(top.location!=self.location){
		parent.window.open(self.location,"_self");
	}
	$(".submit_button").click(function(){
		var userName=$("#userName").val();
		var password=$("#password").val();
		if(userName==""){
			$("#errorInfo").text("用户名不能为空哦!");
			$("#errorInfo").addClass("fadeInRight");
			$("#userName").focus();
			return false;
		}else{
			
		}
		if(password==""){
			$("#errorInfo").text("密码不能为空哦!");
			$("#password").focus();
			$("#errorInfo").addClass("fadeInRight");
			return false;
		}
		$(".form_div").addClass("bounceOut");
		$(".form_div").removeClass("bounceIn");
		$(".login_loading").addClass("login_fadeInLeft");
		$(".login_loading").removeClass("login_fadeOutLeft");
		$.ajax({
			url:projectAllName+"/login/dologin.do",
			async:false,
			type : "POST",
			dataType : 'JSON',
			data:{"loginName":userName,"passWord":password},
			success:function(json){
				if(json.result=="1"){
					window.location.href=projectAllName + "/admin/index.do"; 
				}else{
					$("#password").focus();
					$("#errorInfo").text("用户名或密码错误！");
					$("#errorInfo").addClass("fadeInRight");
					setTimeout(function(){$(".form_div").addClass("bounceIn");$(".form_div").removeClass("bounceOut");$(".login_loading").addClass("login_fadeOutLeft");$(".login_loading").removeClass("login_fadeInLeft");},1000);
					return false;
				}
			}
		});
	});
	//输入框focus动画
	$("input[type=text],input[type=password]").focusin(function(){
		$(this).prev().animate({"opacity":"1"},300);
	});
	$("input[type=text],input[type=password]").focusout(function(){
		$(this).prev().animate({"opacity":"0.5"},300);
	});
	$("input[type=text],input[type=password]").keyup(function(){
		if($(this).val()!=""){
			$(this).next("i").addClass("validate-yes");
		}else{
			$(this).next("i").removeClass("validate-yes");
		}
	});
});
