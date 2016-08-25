<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%-- 
	杨小龙   2016-08-02 博客首页
--%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
	<title>Yang个人博客 - 专注于WEB开发技术</title>
	<meta name="baidu-site-verification" content="sg90BcKL4I" />
	<meta name="keywords" content="Yang,前端开发,个人博客,web开发" />
	<meta name="description" content="Yang博客是以web前端技术为主旨、记录学习历程的个人独立博客，致力于分享前端技术。" />
<!-- 	<meta name="viewport" content="width=device-width,initail-scale=1.0,maximum-scale=1.0,user-scalable=no"> -->
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="HandheldFriendly" content="true">
	
	<link rel="stylesheet" href="<%=path %>/css/base.css">
	<link rel="stylesheet" href="<%=path %>/css/index.css">
	<link rel="stylesheet" href="<%=path %>/quake-slider/css/quake.slider.css">
	<link rel="stylesheet" href="<%=path %>/quake-slider/css/demo.css">
	<script type="text/javascript" src="<%=path %>/js/admin/jquery.js"></script>
	<script type="text/javascript" src="<%=path %>/quake-slider/js/jquery-migrate-1.2.1.js"></script>
	<script type="text/javascript" src="<%=path %>/quake-slider/js/quake.slider.js"></script>
	<script type="text/javascript" src="<%=path %>/js/index.js"></script>
	<!--[if lt IE 9]>
	<script src="js/modernizr.js"></script>
	<![endif]-->
	<!-- 返回顶部调用 begin -->
<!-- 	<script type="text/javascript" src="js/up/jquery.js"></script> -->
<!-- 	<script type="text/javascript" src="js/up/js.js"></script> -->
	<!-- 返回顶部调用 end-->
</head>
<body>
	<header>
		<div class="logo f_l"><a href="javascript:void(0)"><img src="images/logo.png"></a></div>
		<nav id="topnav" class="f_r">
			<ul>
				<a href="<%=path %>/index.do" target="_self"  class="topnav_current">首页</a> 
				<a href="javascript:void(0)" target="_blank">关于我</a> 
				<a href="javascript:void(0)" target="_blank">文章</a> 
				<a href="javascript:void(0)" target="_blank">心情</a> 
				<a href="javascript:void(0)" target="_blank">相册</a> 
				<a href="javascript:void(0)" target="_blank">留言</a>
			</ul>
			<script src="<%=path %>/js/nav.js"></script> 
		</nav>
	</header>
	<article>
		<div class="l_box f_l">
			<!-- 轮播图 -->
			<div class="wrapper">
		  		<div class="quake-slider">
		            <div class="quake-slider-images">
		                <a target="_blank" href="javascript:void(0)">
		                    <img src="images/1.jpg" alt="Clean Business Free Business Website Premium Template" />
		                </a>
		                <a target="_blank" href="javascript:void(0)">
		                    <img src="images/2.jpg" alt="Free Premium HTML Admin/Backend Template for Web Applications" />
		                </a>
		                <a target="_blank" href="javascript:void(0)">
		                    <img src="images/3.jpg" alt="Free HTML jQuery Portfolio Template" />
		                </a>
		            </div>
		            <div class="quake-slider-captions">
		                <div class="quake-slider-caption">
		                	Clean Business, 
		                    <span class='quake-highlight'>
		                    	<a target="_blank" href="javascript:void(0)">Premium HTML Template.</a>
		                    </span>
		                    A Free Business Website Template.
		                </div>
		                <div class="quake-slider-caption">
		                	BlueWhale Admin, 
		                	<span class='quake-highlight'><a target="_blank" href="javascript:void(0)">Premium HTML Admin Template.</a></span>
		                	Free Premium Admin Template.               
		             	</div>
		                <div class="quake-slider-caption">
		                    SearchMeme, 
		                    <span class='quake-highlight'><a target="_blank" href="javascript:void(0)">Fancy Search Box.</a></span> 
	                        jQuery Plugin for On Demand Search Box.                
		                </div>
		            </div>
		        </div>
			</div>
	  		<!-- 轮播图  end-->
	  
	  		<!-- 文章推荐 -->
			<div class="topnews">
				<h2>
					<b>文章</b>推荐
				</h2>
				<c:choose>
					<c:when test="${empty blogList.row }"></c:when>
					<c:otherwise>
						<c:forEach items="${blogList.row }" var="c" varStatus="v">
								<div class="blogs">
									<figure><img src="<%=path%>/${c.img}"></figure>
									<ul>
										<h3><a href="javascript:void(0)">${c.title }</a></h3>
										<p><a href="javascript:void(0)">${c.summary }</a></p>
										<p class="autor">
											<span class="lm f_l"><a href="javascript:void(0)">${c.typeName }</a></span>
											<span class="dtime f_l">${c.createdate }</span>
											<span class="viewnum f_r">浏览（<a href="javascript:void(0)">${c.hitcount }</a>）</span>
											<span class="pingl f_r">评论（<a href="javascript:void(0)">${c.commentcount }</a>）</span>
										</p>
									</ul>
								</div>
						</c:forEach>
					</c:otherwise>
				</c:choose>
				
<!-- 				<div class="blogs"> -->
<!-- 					<figure><img src="images/05.jpg"></figure> -->
<!-- 					<ul> -->
<!-- 						<h3><a href="javascript:void(0)">住在手机里的朋友</a></h3> -->
<!-- 						<p>通信时代，无论是初次相见还是老友重逢，交换联系方式，常常是彼此交换名片，然后郑重或是出于礼貌用手机记下对方的电话号码。在快节奏的生活里，我们不知不觉中就成为住在别人手机里的朋友。又因某些意外，变成了别人手机里匆忙的过客，这种快餐式的友谊 ...</p> -->
<!-- 						<p class="autor"> -->
<!-- 							<span class="lm f_l"><a href="javascript:void(0)">个人博客</a></span> -->
<!-- 							<span class="dtime f_l">2014-02-19</span> -->
<!-- 							<span class="viewnum f_r">浏览（<a href="javascript:void(0)">459</a>）</span> -->
<!-- 							<span class="pingl f_r">评论（<a href="javascript:void(0)">30</a>）</span></p> -->
<!-- 					</ul> -->
<!-- 				</div> -->
			</div>
	    	<!-- 文章推荐 end -->
		</div>
		
		
		<div class="r_box f_r">
<!-- 			<div class="tit01"> -->
<!-- 				<h3>关注我</h3> -->
<!-- 				<div class="gzwm"> -->
<!-- 					<ul> -->
<!-- 						<li><a class="xlwb" href="javascript:void(0)" target="_blank">新浪微博</a></li> -->
<!-- 						<li><a class="txwb" href="javascript:void(0)" target="_blank">腾讯微博</a></li> -->
<!-- 						<li><a class="rss" href="javascript:void(0)" target="_blank">RSS</a></li> -->
<!-- 						<li><a class="wx" href="javascript:void(0)">邮箱</a></li> -->
<!-- 					</ul> -->
<!-- 				</div> -->
<!-- 			</div> -->
	    	<!--tit01 end-->
<!-- 	    	<div class="ad300x100"> <img src="images/05.jpg"> </div> -->

			<div class="moreSelect" id="lp_right_select"> 
				<div class="ms-top">
					<ul class="hd" id="tab">
						<li class="cur"><a href="javascript:void(0)">点击排行</a></li>
						<li><a href="javascript:void(0)">最新文章</a></li>
						<li><a href="javascript:void(0)">站长推荐</a></li>
					</ul>
				</div>
				<div class="ms-main" id="ms-main">
					<div style="display: block;" class="bd bd-news" >
						<ul>
						  <li><a href="javascript:void(0)" target="_blank">住在手机里的朋友</a></li>
						  <li><a href="javascript:void(0)" target="_blank">教你怎样用欠费手机拨打电话</a></li>
						  <li><a href="javascript:void(0)" target="_blank">原来以为，一个人的勇敢是，删掉他的手机号码...</a></li>
						  <li><a href="javascript:void(0)" target="_blank">手机的16个惊人小秘密，据说99.999%的人都不知</a></li>
						  <li><a href="javascript:void(0)" target="_blank">你面对的是生活而不是手机</a></li>
						  <li><a href="javascript:void(0)" target="_blank">豪雅手机正式发布! 在法国全手工打造的奢侈品</a></li>
						</ul>
					</div>
					<div  class="bd bd-news">
						<ul>
						  <li><a href="javascript:void(0)" target="_blank">原来以为，一个人的勇敢是，删掉他的手机号码...</a></li>
						  <li><a href="javascript:void(0)" target="_blank">手机的16个惊人小秘密，据说99.999%的人都不知</a></li>
						  <li><a href="javascript:void(0)" target="_blank">住在手机里的朋友</a></li>
						  <li><a href="javascript:void(0)" target="_blank">教你怎样用欠费手机拨打电话</a></li>
						  <li><a href="javascript:void(0)" target="_blank">你面对的是生活而不是手机</a></li>
						  <li><a href="javascript:void(0)" target="_blank">豪雅手机正式发布! 在法国全手工打造的奢侈品</a></li>
						</ul>
					</div>
					<div class="bd bd-news">
						<ul>
						  <li><a href="javascript:void(0)" target="_blank">手机的16个惊人小秘密，据说99.999%的人都不知</a></li>
						  <li><a href="javascript:void(0)" target="_blank">你面对的是生活而不是手机</a></li>
						  <li><a href="javascript:void(0)" target="_blank">住在手机里的朋友</a></li>
						  <li><a href="javascript:void(0)" target="_blank">豪雅手机正式发布! 在法国全手工打造的奢侈品</a></li>
						  <li><a href="javascript:void(0)" target="_blank">教你怎样用欠费手机拨打电话</a></li>
						  <li><a href="javascript:void(0)" target="_blank">原来以为，一个人的勇敢是，删掉他的手机号码...</a></li>
						</ul>
					</div>
				</div>
				<!--ms-main end --> 
			</div>
		    <!--切换卡 moreSelect end -->
		    
	    	<!-- 标签云 -->
			<div class="cloud">
				<h3>标签云</h3>
				<ul>
					<li><a href="javascript:void(0)">个人博客</a></li>
					<li><a href="javascript:void(0)">web开发</a></li>
					<li><a href="javascript:void(0)">前端设计</a></li>
					<li><a href="javascript:void(0)">Html</a></li>
					<li><a href="javascript:void(0)">CSS3</a></li>
					<li><a href="javascript:void(0)">Html5+css3</a></li>
					<li><a href="javascript:void(0)">百度</a></li>
					<li><a href="javascript:void(0)">Javasript</a></li>
					<li><a href="javascript:void(0)">web开发</a></li>
					<li><a href="javascript:void(0)">前端设计</a></li>
					<li><a href="javascript:void(0)">Html</a></li>
					<li><a href="javascript:void(0)">CSS3</a></li>
					<li><a href="javascript:void(0)">Html5+css3</a></li>
					<li><a href="javascript:void(0)">百度</a></li>
				</ul>
			</div>
			<!-- 标签云end -->
			
			<!-- 图文推荐 -->			
			<div class="tuwen">
				<h3>图文推荐</h3>
				<ul>
					<li>
						<a href="javascript:void(0)"><img src="images/05.jpg"><b>住在手机里的朋友</b></a>
						<p>
							<span class="tulanmu"><a href="/">手机配件</a></span>
							<span class="tutime">2015-02-15</span>
						</p>
					</li>
					<li>
						<a href="javascript:void(0)"><img src="images/05.jpg"><b>住在手机里的朋友</b></a>
						<p>
							<span class="tulanmu"><a href="/">手机配件</a></span>
							<span class="tutime">2015-02-15</span>
						</p>
					</li>
					<li>
						<a href="javascript:void(0)"><img src="images/05.jpg"><b>住在手机里的朋友</b></a>
						<p>
							<span class="tulanmu"><a href="/">手机配件</a></span>
							<span class="tutime">2015-02-15</span>
						</p>
					</li>
					<li>
						<a href="javascript:void(0)"><img src="images/05.jpg"><b>住在手机里的朋友</b></a>
						<p>
							<span class="tulanmu"><a href="/">手机配件</a></span>
							<span class="tutime">2015-02-15</span>
						</p>
					</li>
					<li>
						<a href="javascript:void(0)"><img src="images/05.jpg"><b>住在手机里的朋友</b></a>
						<p>
							<span class="tulanmu"><a href="/">手机配件</a></span>
							<span class="tutime">2015-02-15</span>
						</p>
					</li>
				</ul>
			</div>
			<!-- 图文推荐end -->

<!-- 	    <div class="ad"> <img src="images/05.jpg"> </div> -->
	    
	    	<!-- 友情链接 -->
			<div class="links">
				<h3><span>[<a href="javascript:void(0)">申请友情链接</a>]</span>友情链接</h3>
				<ul>
					<li><a href="javascript:void(0)">杨青个人博客</a></li>
					<li><a href="javascript:void(0)">web开发</a></li>
					<li><a href="javascript:void(0)">前端设计</a></li>
					<li><a href="javascript:void(0)">Html</a></li>
					<li><a href="javascript:void(0)">CSS3</a></li>
					<li><a href="javascript:void(0)">Html5+css3</a></li>
					<li><a href="javascript:void(0)">百度</a></li>
				</ul>
			</div>
			<!-- 友情链接end -->
		</div>
		<!--r_box end --> 
	</article>
	<footer>
		<p class="ft-copyright">兔小白博客 Design by DanceSmile 蜀ICP备11002373号-1</p>
<!-- 		<div id="tbox"><a id="togbook" href="/"></a> <a id="gotop" href="javascript:void(0)"></a></div> -->
	</footer>
</body>
</html>