function login_button_click(id,link){
	var back = location.href;
	if('wordpress'==id){
		location.href = link;
	}else{
		try{
			if(open_social_param('redirect_to')){
				back = open_social_param('redirect_to');
			}else if(document.loginform&&document.loginform.redirect_to){
				back = document.loginform.redirect_to.value;
			}
		}catch(e){
			back = location.href;
		}
		if(back.indexOf('profile.php')>0 && back.indexOf('updated')<0) back = back.indexOf('?')>0 ? (back + '&updated=1') : (back + '?updated=1');
		location.href=(link?link:'/')+'?connect='+id+'&action=login&back='+escape(back);
	}
}

function login_button_unbind_click(id,link){
	var back = location.href;
	if(back.indexOf('profile.php')>0 && back.indexOf('updated')<0) back = back.indexOf('?')>0 ? (back + '&updated=1') : (back + '?updated=1');
	location.href=(link?link:'/')+'?connect='+id+'&action=unbind&back='+escape(back);
}

function share_button_click(link,ev){
	if(link=='QRCODE'){
		if(!window.jQuery) return;
		var elm = ev.srcElement || ev.target;
		var qrDiv = jQuery(elm).parent().find('.open_social_qrcode');
		if(!qrDiv.find('canvas').length){
			qrDiv.qrcode({width:180,height:180,correctLevel:0,background:'#fff',foreground:'#111',text:location.href});
		}
		qrDiv.toggle(250);
	}else{
		var url = encodeURIComponent(location.href);
		var title = encodeURIComponent(document.title + (window.jQuery ? (': ' + jQuery('.entry-content').text().replace(/\r|\n|\t/g,'').replace(/ +/g,' ').replace(/<!--(.*)\/\/-->/g,'').substr(0,80)+'.. ') : ''));
		var pic = '';
		window.jQuery && jQuery('#content .entry-content img,#content > article img,#content p > img').each(function(){pic+=(pic?'||':'')+encodeURIComponent(jQuery(this).attr('src'));});
		window.open(link.replace("%URL%",url).replace("%TITLE%",title).replace("%PIC%",pic),'xmOpenWindow','width=600,height=480,menubar=0,scrollbars=1,resizable=1,status=1,titlebar=0,toolbar=0,location=1');
	}
}

function open_social_cookie(name){  
    var arr = document.cookie.split('; ');
    for(var i = 0; i < arr.length; i++){
        var temp = arr[i].split('=');
        if(temp[0] == name){
            return unescape(temp[1]);
        }
    }
    return '';
}

function open_social_param(name){
	var aParams = document.location.search.substr(1).split('&');
	for (var i = 0; i < aParams.length; i++){
		var aParam = aParams[i].split('=');
		if(decodeURIComponent(aParam[0]) == name) return decodeURIComponent(aParam[1]);
	}
	return '';
}

window.jQuery && jQuery(document).ready(function($){
    var user = open_social_cookie('wp_open_social_login');
	if(user){
        $('#os_user_name').html(user.split('|')[0]);
        $('#os_user_email').html(user.split('|')[1]);
        $('#os_user_avatar').html(user.split('|')[2]);
    };
	if(window.wx){
		os_wechat_init['debug'] = false;
		os_wechat_init['jsApiList'] = ['onMenuShareAppMessage','onMenuShareTimeline'];
		wx.config(os_wechat_init);
		wx.ready(function(){
			var shareData = {
				title: document.title,
				desc: jQuery('article .entry-content').text().replace(/\r|\n|\t/g,'').replace(/ +/g,' ').replace(/<!--(.*)\/\/-->/g,'').substr(0,50),
				link: location.href,
				imgUrl: jQuery('#content > article img').eq(0).attr('src') || ''
			};
			wx.onMenuShareAppMessage(shareData);
			wx.onMenuShareTimeline(shareData);
		});
		wx.error(function(res){
		 	window.console && console.log(res.errMsg);
		});
	};
    try{
    	$('.open_social_box').tooltip({ position: { my: "left top+5", at: "left bottom" }, show: { effect: "blind", duration: 200 } });
    }catch(e){}
    //Mozilla/5.0 (iPhone; CPU iPhone OS 9_1 like Mac OS X) AppleWebKit/601.1.46 (KHTML, like Gecko) Mobile/13B143 MicroMessenger/6.3.6 NetType/WIFI Language/zh_CN 
    var ua = navigator.userAgent;
    if(/ Mobile/.test(ua)){
    	$('.login_icon_wechat').hide();
    	if(/MicroMessenger\//.test(ua)) $('.login_icon_wechat_mp').css('display','inline-block');
    }
	$("img.avatar[ip*='.']").each(
		function(){
			$(this).click(
				function(){
					window.open("https://www.baidu.com/s?wd="+$(this).attr('ip'));
				});
	});
	$('.comment-content a,.comments-area a.url').each(
		function(){$(this).attr('target','_blank');}
	);
    var float_button = $("#open_social_float_button");
	if(!$("#respond")[0]) $('#open_social_float_button_comment').hide();
    $(window).scroll(function() {
		if(float_button[0]){
	        if ($(window).scrollTop() >= 300) {
	            $('#open_social_float_button').fadeIn(250);
	        } else {
	            $('#open_social_float_button').fadeOut(250);
	        }
		}
    });
    $('#open_social_float_button_top').click(function() {
        $('html,body').animate({
            scrollTop: '0px'
        },
        100);
    });
    $('#open_social_float_button_comment').click(function() {
        $('html,body').animate({
            scrollTop: $('#respond').offset().top
        },
        200);
    });
});