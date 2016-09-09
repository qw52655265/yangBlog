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
	<link rel="stylesheet" href="<%=path %>/css/animate.css">
	<link rel="stylesheet" href="<%=path %>/quake-slider/css/quake.slider.css">
	<link rel="stylesheet" href="<%=path %>/quake-slider/css/demo.css">
	<script type="text/javascript" src="<%=path %>/js/admin/jquery.js"></script>
	<script type="text/javascript" src="<%=path %>/quake-slider/js/jquery-migrate-1.2.1.js"></script>
	<script type="text/javascript" src="<%=path %>/quake-slider/js/quake.slider.js"></script>
	<script type="text/javascript" src="<%=path %>/js/common.js"></script>
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
	<input id="index" type="hidden" value="0"/>
	<div class="WB_miniblog">
	<!-- 头部 -->
	<jsp:include page="header2.jsp" />
	<!-- 头部 end -->
	<div id="page">
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
			<jsp:include page="article1.jsp" />
	    	<!-- 文章推荐 end -->
		</div>
		
		
		<div class="r_box f_r">
			<!-- 排行榜 -->
			<jsp:include page="ranking.jsp" />
			<!-- 排行榜end -->
		    
	    	<!-- 标签云 -->
			<jsp:include page="tag.jsp" />
			<!-- 标签云end -->
			
			<!-- 图文推荐 -->			
<!-- 			<div class="tuwen"> -->
<!-- 				<h3>图文推荐</h3> -->
<!-- 				<ul> -->
<!-- 					<li> -->
<!-- 						<a href="javascript:void(0)"><img src="images/05.jpg"><b>住在手机里的朋友</b></a> -->
<!-- 						<p> -->
<!-- 							<span class="tulanmu"><a href="/">手机配件</a></span> -->
<!-- 							<span class="tutime">2015-02-15</span> -->
<!-- 						</p> -->
<!-- 					</li> -->
<!-- 					<li> -->
<!-- 						<a href="javascript:void(0)"><img src="images/05.jpg"><b>住在手机里的朋友</b></a> -->
<!-- 						<p> -->
<!-- 							<span class="tulanmu"><a href="/">手机配件</a></span> -->
<!-- 							<span class="tutime">2015-02-15</span> -->
<!-- 						</p> -->
<!-- 					</li> -->
<!-- 					<li> -->
<!-- 						<a href="javascript:void(0)"><img src="images/05.jpg"><b>住在手机里的朋友</b></a> -->
<!-- 						<p> -->
<!-- 							<span class="tulanmu"><a href="/">手机配件</a></span> -->
<!-- 							<span class="tutime">2015-02-15</span> -->
<!-- 						</p> -->
<!-- 					</li> -->
<!-- 					<li> -->
<!-- 						<a href="javascript:void(0)"><img src="images/05.jpg"><b>住在手机里的朋友</b></a> -->
<!-- 						<p> -->
<!-- 							<span class="tulanmu"><a href="/">手机配件</a></span> -->
<!-- 							<span class="tutime">2015-02-15</span> -->
<!-- 						</p> -->
<!-- 					</li> -->
<!-- 					<li> -->
<!-- 						<a href="javascript:void(0)"><img src="images/05.jpg"><b>住在手机里的朋友</b></a> -->
<!-- 						<p> -->
<!-- 							<span class="tulanmu"><a href="/">手机配件</a></span> -->
<!-- 							<span class="tutime">2015-02-15</span> -->
<!-- 						</p> -->
<!-- 					</li> -->
<!-- 				</ul> -->
<!-- 			</div> -->
			<!-- 图文推荐end -->

<!-- 	    <div class="ad"> <img src="images/05.jpg"> </div> -->
	    
	    	<!-- 友情链接 -->
			<jsp:include page="link.jsp" />
			<!-- 友情链接end -->
		</div>
		<!--r_box end --> 
	</article>
	</div>
	</div>
	<jsp:include page="footer.jsp" />
</body>
</html>