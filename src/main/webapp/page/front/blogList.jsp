<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%-- 
	杨小龙   2017-02-22 博客列表
--%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>文章|Yang博客</title>
	<meta name="baidu-site-verification" content="sg90BcKL4I" />
	<meta name="description" content="${info.summary }"/>
	<meta name="keywords" content="${info.typeName }">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="HandheldFriendly" content="true">
	<link rel="shortcut icon" href="<%=basePath%>/images/front/yang.ico">
	<!--[if lt IE 9]>
		<script src="js/front/html5.js"></script>
		<script src="js/front/css3-mediaqueries.js"></script>
	<![endif]-->
	<link rel="stylesheet" type="text/css" href="<%=basePath%>/css/front/ngg_k2.css">
	<link rel="stylesheet" type="text/css" href="<%=basePath%>/css/front/style.css">
	<link rel="stylesheet" type="text/css" href="<%=basePath%>/font-awesome-4.3.0/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="<%=basePath%>/css/front/os.css">
	
	<script type="text/javascript" src="<%=basePath%>/js/front/jquery.min.js"></script>
	<script type="text/javascript" src="<%=basePath%>/js/front/main.js"></script>
	<script type="text/javascript" src="<%=basePath%>/js/front/swfobject.js"></script>
	<script type="text/javascript" src="<%=basePath%>/js/front/fancybox.js"></script>
	<script type="text/javascript" src="<%=basePath%>/js/front/slides.js"></script>
	<script type="text/javascript" src="<%=basePath%>/js/front/jquery.qrcode.min.js"></script>
	<script type="text/javascript" src="<%=basePath%>/js/front/jquery-ias.js.js"></script>
	<script type="text/javascript" src="<%=basePath%>/js/front/jquery.lazyload.js.js"></script>
	<script type="text/javascript" src="<%=basePath%>/js/front/tipso.js"></script>
	<script type="text/javascript" src="<%=basePath%>/js/front/script.js"></script>
	<script type="text/javascript" src="<%=basePath%>/js/front/flexisel.js"></script>
	<!--[if lt IE 9]>
	<script src="../js/modernizr.js"></script>
	<![endif]-->
</head>
<body class="archive category category-daily category-2" style="transform: none;">
	<div id="page" class="hfeed site" style="transform: none;">
		<jsp:include page="header.jsp"></jsp:include>
		
		<nav class="breadcrumb">
			<a class="crumbs" title="返回首页" href="<%=basePath%>/index.do"><i class="fa fa-home"></i> 首页</a>
<!-- 			<i class="fa fa-angle-right"></i><a href="javascript:void(0)">日志文摘</a> -->
			<i class="fa fa-angle-right"></i>文章 
		</nav>
		
		<div id="content" class="site-content" style="transform: none;">
			<div class="clear"></div>
			<section id="primary" class="content-area">
				<main id="main" class="site-main" role="main">
					<jsp:include page="article.jsp"></jsp:include>
				</main>
				<nav class="navigation pagination" role="navigation">
					<h2 class="screen-reader-text">文章导航</h2>
					<div class="nav-links"><span class="page-numbers current"><span class="screen-reader-text">第 </span>1<span class="screen-reader-text"> 页</span></span>
						<a class="page-numbers" href="javascript:void(0)"><span class="screen-reader-text">第 </span>2<span class="screen-reader-text"> 页</span></a>
						<a class="next page-numbers" href="javascript:void(0)"><i class="fa fa-angle-right"></i></a>
					</div>
				</nav>
			</section>
			<div id="sidebar" class="widget-area all-sidebar" style="position: relative; overflow: visible; box-sizing: border-box; min-height: 1px;">
				<div class="theiaStickySidebar" style="padding-top: 0px; padding-bottom: 1px; position: static; transform: none; top: 0px; left: 910.125px;">
					<div class="wow" data-wow-delay="0.5s"
						<jsp:include page="recentArticle.jsp"></jsp:include>
						<jsp:include page="category.jsp"></jsp:include>	
					</div>
					<div class="sidebar-roll">
						<jsp:include page="hotCommentArticle.jsp"></jsp:include>
					</div>
					<!-- 读者墙 end -->
					<div class="wow fadeInUp" data-wow-delay="0.5s">
	
					</div>
				</div>
			</div>
			<div class="clear"></div>
			<div class="clear"></div>
			<div class="wow fadeInUp" data-wow-delay="0.3s"></div>
		</div>
		<jsp:include page="footer.jsp" /> 
	</div>
</body>
</html>