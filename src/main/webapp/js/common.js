/**
 * 博客公用
 */
$(function(){
	
	inintTopnav();
	
});

/**
 * 初始化页面导航，为当前页面的导航【li】加上id
 */
function inintTopnav(){
	var index = $('#index').val();
	var navLi = $('#topnav ul li').eq(index).attr('id','topnav_current');
}

window.onload = function ()
{
	var oLi = document.getElementById("tab").getElementsByTagName("li");
	var oUl = document.getElementById("ms-main").getElementsByTagName("div");
	
	for(var i = 0; i < oLi.length; i++)
	{
		oLi[i].index = i;
		oLi[i].onmouseover = function ()
		{
			for(var n = 0; n < oLi.length; n++) oLi[n].className="";
			this.className = "cur";
			for(var n = 0; n < oUl.length; n++) oUl[n].style.display = "none";
			oUl[this.index].style.display = "block"
		}	
	}
}