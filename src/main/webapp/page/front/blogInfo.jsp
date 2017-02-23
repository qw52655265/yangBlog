<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%-- 
	杨小龙   2017-02-22 博客详细
--%>
<!DOCTYPE html>
<html>
<head>

	<meta charset="UTF-8">
	<title>${info.title }</title>
	<meta name="baidu-site-verification" content="sg90BcKL4I" />
	<meta name="keywords" content="${info.typeName }">
	<meta name="description" content="${info.summary }"/>
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
	
	<script type="text/javascript" src="<%=basePath%>/syntaxhighlighter_3.0.83/scripts/shCore.js"></script>
	<script type="text/javascript" src="<%=basePath%>/syntaxhighlighter_3.0.83/scripts/shAutoloader.js"></script>
	<script type="text/javascript" src="<%=basePath%>/js/front/loderConfig.js"></script>
	<link rel="stylesheet" type="text/css" href="<%=basePath%>/syntaxhighlighter_3.0.83/styles/shCore.css">
	<link rel="stylesheet" type="text/css" href="<%=basePath%>/syntaxhighlighter_3.0.83/styles/shCoreDefault.css">
	<!--[if lt IE 9]>
	<script src="../js/modernizr.js"></script>
	<![endif]-->
	<script type="text/javascript">SyntaxHighlighter.all();</script>
</head>
<body class="post-template-default single single-post postid-211 single-format-standard" style="transform: none;">
	<div id="page" class="hfeed site" style="transform: none;">
		<jsp:include page="header.jsp"></jsp:include>
		
		<nav class="breadcrumb">
			<a class="crumbs" title="返回首页" href="<%=basePath%>/index.do"><i class="fa fa-home"></i> 首页</a>
			<i class="fa fa-angle-right"></i><a href="<%=basePath%>/getBlogList/all/all.do" rel="category tag">文章</a>
			<i class="fa fa-angle-right"></i>${info.title }
		</nav>
		
		<div id="content" class="site-content" style="transform: none;">
			<div class="clear"></div>
			<div id="primary" class="content-area">
				<main id="main" class="site-main" role="main">
					<article id="post-211" class="post-211 post type-post status-publish format-standard hentry category-we tag-hui-jia tag-ru-guo tag-xing-fu tag-xin-qing tag-si-xiang tag-ai-qing tag-sheng-huo tag-dian-ying">
						<header class="entry-header">
							<h1 class="entry-title">${info.title }</h1> 
						</header>
						<div class="entry-content">
							<div class="single-content">${info.content }</div>
							<div class="clear"></div>
							<div id="social"></div>
							<footer class="single-footer">
								<ul class="single-meta">
									<li class="time">2016年08月03日</li>
									<li class="comment">评论${info.commentcount }条
									</li>
									<li class="views">阅读${info.hitcount }次</li>
									<li class="baidu_record"></li>
								</ul>
<!-- 									<ul id="fontsize">A+</ul> -->
								<div class="single-cat-tag">
									<div class="single-cat">
										作者：<a href="javascript:void(0)" title="由${info.author }" rel="author">${info.author }</a>
										&nbsp;&nbsp;发布日期：${info.createdate }
										&nbsp;&nbsp;所属分类：<a href="javascript:void(0)" rel="category tag">${info.typeName }</a>
									</div>
									<div class="single-tag">标签：
										<a href="javascript:void(0)" rel="tag">测试</a>
									</div>
								</div>
							</footer>
							<div class="clear"></div>
						</div>
					</article>
					<div id="single-widget">
						<div class="wow" data-wow-delay="0.3s"></div>
						<div class="clear"></div>
					</div>
					<div class="wow" data-wow-delay="0.3s"></div>
					<nav class="nav-single wow" data-wow-delay="0.3s">
						<c:choose>
							<c:when test="${prev.result == '0' }">
								<span class="meta-nav"><span class="post-nav">没有了<br></span>已是最新文章</span>
							</c:when>
							<c:otherwise>
								<a href="<%=basePath%>/getBlogInfo/${prev.id}.do" rel="prev"><span class="meta-nav"><span class="post-nav"><i class="fa fa-angle-left"></i> 上一篇</span><br>${prev.title }</span></a>
							</c:otherwise>
						</c:choose>
						<c:choose>
							<c:when test="${next.result == '0' }">
								<span class="meta-nav"><span class="post-nav">没有了<br></span>已是最后一篇</span>
							</c:when>
							<c:otherwise>
								<a href="<%=basePath%>/getBlogInfo/${next.id}.do" rel="next"><span class="meta-nav"><span class="post-nav">下一篇 <i class="fa fa-angle-right"></i></span><br>${next.title }</span></a>
							</c:otherwise>
						</c:choose>
						<div class="clear"></div>
					</nav>
					<div class="scroll-comments"></div>
				</main>
			</div>
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