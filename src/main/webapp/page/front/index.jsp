<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%-- 
	杨小龙   2016-09-01 博客首页
--%>
<!DOCTYPE html>
<html>
<head>

	<meta charset="UTF-8">
	<title>Yang个人博客 - 专注于WEB开发技术</title>
	<meta name="baidu-site-verification" content="sg90BcKL4I" />
	<meta name="keywords" content="Yang,前端开发,个人博客,web开发" />
	<meta name="description" content="Yang博客是以web前端技术为主旨、记录学习历程的个人独立博客，致力于分享前端技术。" />
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
	<style>
		.nmsingle-container,.nms-list,.nmhotcom {max-width: px}
		.nm-copyright {display: none;}
	</style>
	<!-- <meta name="NextGEN" version="1.9.13" /> -->
	<script src="js/front/share.js"></script>
	<style type="text/css">
		.fancybox-margin {margin-right: 0px;}
	</style>
	<link rel="stylesheet" href="css/front/share_style1_16.css">
</head>

<body class="home blog" style="">
	<div id="page" class="hfeed site">
		<jsp:include page="header.jsp"></jsp:include>
		<!-- 滚动公告 -->
 		<nav class="breadcrumb">
			<div class="bull"><i class="fa fa-volume-up"></i> </div>
			<div id="scrolldiv">
				<div class="scrolltext">
					<ul style="margin-top: 0px;">
						<li>Sinkinto：<a href="javascript:void(0)" rel="”bookmark&quot;" title="查看更多微语">08月14日 - “做好每个人都要离开的准备，离开你抛弃你”</a></li>
						<li>Allenlan：<a href="javascript:void(0)" rel="”bookmark&quot;" title="查看更多微语">08月13日 - 死是种什么感觉，很向往，解脱！！！</a></li>
						<li>Sinkinto：<a href="javascript:void(0)" rel="”bookmark&quot;" title="查看更多微语">08月08日 - 梦魇</a></li>
						<li>Allenlan：<a href="javascript:void(0)" rel="”bookmark&quot;" title="查看更多微语">08月24日 - 每一个平凡的人，都有一个不平凡的人生。</a></li>
						<li>Sinkinto：<a href="javascript:void(0)" rel="”bookmark&quot;" title="查看更多微语">08月23日 - 昨晚梦到傅小司救我，我是立夏。</a></li>
					</ul>
				</div>
			</div>
			<script type="text/javascript">
				$(document).ready(function() {
					$("#scrolldiv").textSlider({
						line: 1,
						speed: 300,
						timer: 5000
					});
				})
			</script>
		</nav>
		<!-- 滚动公告 end -->
		<div id="content" class="site-content">
			<div class="clear"></div>
			<div id="primary" class="content-area">
				<main id="main" class="site-main" role="main">
					<div id="slideshow" class="wow" data-wow-delay="0.3s">
						<ul class="rslides callbacks callbacks1" id="slider" style="max-width: 1200px;">
							<li id="callbacks1_s0" class="callbacks1_on" style="display: block; float: left; position: relative; opacity: 1; z-index: 2; transition: opacity 800ms ease-in-out;">
								<a href="javascript:void(0)" target="_blank" rel="bookmark">
									<img src="<%=path %>/images/front/30225848bkq9.jpg" alt="一年三个月">
								</a>
								<p class="slider-caption">一年三个月</p>
							</li>
							<li id="callbacks1_s1" style="float: none; position: absolute; opacity: 0; z-index: 1; display: list-item; transition: opacity 800ms ease-in-out;" class="">
								<a href="javascript:void(0)" target="_blank" rel="bookmark">
									<img src="<%=path %>/images/front/xifubushirennai.jpg" alt="你想要的幸福是什么样子的？">
								</a>
								<p class="slider-caption">你想要的幸福是什么样子的？</p>
							</li>
							<li id="callbacks1_s2" style="float: none; position: absolute; opacity: 0; z-index: 1; display: list-item; transition: opacity 800ms ease-in-out;" class="">
								<a href="javascript:void(0)" target="_blank" rel="bookmark">
									<img src="<%=path %>/images/front/jintian.jpg" alt="博客更换为linux主机驱动">
								</a>
								<p class="slider-caption">博客更换为linux主机驱动</p>
							</li>
						</ul>
						<a href="javascript:void(0)" class="callbacks_nav callbacks1_nav prev"><i class="fa fa-angle-left"></i></a>
						<a href="javascript:void(0)" class="callbacks_nav callbacks1_nav next"><i class="fa fa-angle-right"></i></a>
						<ul class="callbacks_tabs callbacks1_tabs">
							<li class="callbacks1_s1 callbacks_here"><a href="javascript:void(0)" class="callbacks1_s1">1</a></li>
							<li class="callbacks1_s2"><a href="javascript:void(0)" class="callbacks1_s2">2</a></li>
							<li class="callbacks1_s3"><a href="javascript:void(0)" class="callbacks1_s3">3</a></li>
						</ul>
					</div>
					<jsp:include page="article.jsp"></jsp:include>
				</main>
			</div>
			<!-- .content-area -->
			<div id="sidebar" class="widget-area">
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
			<div class="clear"></div>
			<div class="clear"></div>

		</div>

		<jsp:include page="footer.jsp"></jsp:include>
		<!-- .site-footer -->
		<jsp:include page="scrollbar.jsp"></jsp:include>

		<script type="text/javascript" src="<%=path %>/js/front/superfish.js"></script>
		<script type="text/javascript" src="<%=path %>/js/front/gb2big5.js"></script>
	</div>
	<div id="overlay"></div>
	<div id="overlay"></div>
	<div id="sidr-main" class="sidr left">
		<div class="sidr-inner"><a href="#sidr-close" class="sidr-class-toggle-sidr-close">×</a></div>
		<div class="sidr-inner"> <a href="#sidr-main" id="sidr-id-navigation-toggle" class="sidr-class-bars"><i class="sidr-class-fa sidr-class-fa-bars"></i></a>
			<div class="sidr-class-menu-%sidr-class-e4%sidr-class-b8%sidr-class-bb%sidr-class-e8%sidr-class-a6%sidr-class-81%sidr-class-e5%sidr-class-af%sidr-class-bc%sidr-class-e8%sidr-class-88%sidr-class-aa-container">
				<ul id="sidr-id-menu-%sidr-id-e4%sidr-id-b8%sidr-id-bb%sidr-id-e8%sidr-id-a6%sidr-id-81%sidr-id-e5%sidr-id-af%sidr-id-bc%sidr-id-e8%sidr-id-88%sidr-id-aa" class="sidr-class-down-menu sidr-class-nav-menu sidr-class-sf-js-enabled sidr-class-sf-arrows">
					<li id="sidr-id-menu-item-2" class="sidr-class-menu-item sidr-class-menu-item-type-custom sidr-class-menu-item-object-custom sidr-class-current-menu-item sidr-class-current_page_item sidr-class-menu-item-home sidr-class-menu-item-2"><a href="http://www.allenlan.com"><i class="sidr-class-fa-home sidr-class-fa"></i><span class="sidr-class-font-text">首页</span></a></li>
					<li id="sidr-id-menu-item-3" class="sidr-class-menu-item sidr-class-menu-item-type-custom sidr-class-menu-item-object-custom sidr-class-menu-item-has-children sidr-class-menu-item-3"><a class="sidr-class-sf-with-ul"><i class="sidr-class-fa-bars sidr-class-fa"></i><span class="sidr-class-font-text">分类</span></a>
						<ul class="sidr-class-sub-menu">
							<li id="sidr-id-menu-item-5" class="sidr-class-menu-item sidr-class-menu-item-type-taxonomy sidr-class-menu-item-object-category sidr-class-menu-item-5"><a href="javascript:void(0)"><i class="sidr-class-fa-file-text sidr-class-fa"></i><span class="sidr-class-font-text">日志文摘</span></a></li>
							<li id="sidr-id-menu-item-7" class="sidr-class-menu-item sidr-class-menu-item-type-taxonomy sidr-class-menu-item-object-category sidr-class-menu-item-7"><a href="javascript:void(0)"><i class="sidr-class-fa-gittip sidr-class-fa"></i><span class="sidr-class-font-text">有你有我</span></a></li>
							<li id="sidr-id-menu-item-6" class="sidr-class-menu-item sidr-class-menu-item-type-taxonomy sidr-class-menu-item-object-category sidr-class-menu-item-6"><a href="javascript:void(0)"><i class="sidr-class-fa-pencil-square sidr-class-fa"></i><span class="sidr-class-font-text">生活随笔</span></a></li>
							<li id="sidr-id-menu-item-4" class="sidr-class-menu-item sidr-class-menu-item-type-taxonomy sidr-class-menu-item-object-category sidr-class-menu-item-4"><a href="javascript:void(0)"><i class="sidr-class-fa-cog sidr-class-fa"></i><span class="sidr-class-font-text">站点更新</span></a></li>
						</ul>
					</li>
					<li id="sidr-id-menu-item-90" class="sidr-class-menu-item sidr-class-menu-item-type-post_type sidr-class-menu-item-object-page sidr-class-menu-item-90"><a href="javascript:void(0)"><i class="sidr-class-fa-folder-open sidr-class-fa"></i><span class="sidr-class-font-text">归档</span></a></li>
					<li id="sidr-id-menu-item-54" class="sidr-class-menu-item sidr-class-menu-item-type-post_type sidr-class-menu-item-object-page sidr-class-menu-item-54"><a href="javascript:void(0)"><i class="sidr-class-fa-book sidr-class-fa"></i><span class="sidr-class-font-text">微语</span></a></li>
					<li id="sidr-id-menu-item-91" class="sidr-class-menu-item sidr-class-menu-item-type-post_type sidr-class-menu-item-object-page sidr-class-menu-item-91"><a href="javascript:void(0)"><i class="sidr-class-fa-camera-retro sidr-class-fa"></i><span class="sidr-class-font-text">相册</span></a></li>
					<li id="sidr-id-menu-item-92" class="sidr-class-menu-item sidr-class-menu-item-type-post_type sidr-class-menu-item-object-page sidr-class-menu-item-92"><a href="javascript:void(0)"><i class="sidr-class-fa-music sidr-class-fa"></i><span class="sidr-class-font-text">音乐</span></a></li>
					<li id="sidr-id-menu-item-93" class="sidr-class-menu-item sidr-class-menu-item-type-post_type sidr-class-menu-item-object-page sidr-class-menu-item-93"><a href="javascript:void(0)"><i class="sidr-class-fa-user-plus sidr-class-fa"></i><span class="sidr-class-font-text">友链</span></a></li>
					<li id="sidr-id-menu-item-114" class="sidr-class-menu-item sidr-class-menu-item-type-post_type sidr-class-menu-item-object-page sidr-class-menu-item-114"><a href="javascript:void(0)"><i class="sidr-class-fa-comments sidr-class-fa"></i><span class="sidr-class-font-text">留言</span></a></li>
				</ul>
			</div>
		</div>
	</div>
</body>

</html>