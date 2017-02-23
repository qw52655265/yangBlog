/**
 * 博客首页
 * 2016-08-02
 */
$(function(){
	
	
	/*轮播插件配置*/
	$('.quake-slider').quake({ effects: ['fade','swirlFadeIn', 'swirlFadeOut', 'swirlFadeIn', 'linearPealReverse', 'slideIn', 'swirlFadeIn', 'explodeFancy'],
	    thumbnails: true,
	    captionOpacity: '0.3',
	    captionsSetup: [
			{
			    "orientation": "bottom",
			    "slides": [0, 1],
			    "callback": captionAnimateCallback
			},
			{
			    "orientation": "top",
			    "slides": [2, 3],
			    "callback": captionAnimateCallback
			}
			,
			{
			    "orientation": "left",
			    "slides": [4, 5],
			    "callback": captionAnimationCallback1
			}
			,
			{
			    "orientation": "right",
			    "slides": [6, 7],
			    "callback": captionAnimationCallback1
			}
		]
	});

	function captionAnimateCallback(captionWrapper, captionContainer, orientation) {
	    captionWrapper.css({ left: '-670px' }).stop(true, true).animate({ left: 0 }, 500);
	    captionContainer.css({ left: '-670px' }).stop(true, true).animate({ left: 0 }, 500);
	}
	function captionAnimationCallback1(captionWrapper, captionContainer, orientation) {
	    captionWrapper.css({ top: '-150px' }).stop(true, true).animate({ top: 0 }, 500);
	    captionContainer.css({ top: '-150px' }).stop(true, true).animate({ top: 0 }, 500);
	}
	/*轮播插件配置end*/
	
//	$('body').on('click', '#topnav ul a', function(){
//		$(this).addClass('topnav_current');
//		$(this).siblings().removeClass('topnav_current');
//	});
	
});


