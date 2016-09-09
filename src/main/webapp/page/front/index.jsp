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
<!-- 	<meta name="viewport" content="width=device-width,initail-scale=1.0,maximum-scale=1.0,user-scalable=no"> -->
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="HandheldFriendly" content="true">



<!-- 	<meta charset="UTF-8"> -->
<!-- 	<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no"> -->
<!-- 	<meta http-equiv="Cache-Control" content="no-transform"> -->
<!-- 	<meta http-equiv="Cache-Control" content="no-siteapp"> -->
<!-- 	<title>不忘初心 | 相知相守，在身边在一起。</title> -->
<!-- 	<meta name="description" content="品味人生的酸甜苦辣，感受生活的点滴幸福；相知相守，在身边在一起；不忘初心情侣博客，博主：Allenlan，Sinkinto。"> -->
<!-- 	<meta name="keywords" content="不忘初心,方得始终,网络日志,心情日志,情感日志,爱情日志,博客日志,情侣博客,个人网站,个人博客,胡言乱语,Allenlan,Sinkinto"> -->
	<link rel="shortcut icon" href="<%=path%>/images/front/yang.ico">
<!-- 	<link rel="apple-touch-icon" sizes="114x114" href="img/favicon.png"> -->
	<!--<link rel="profile" href="http://gmpg.org/xfn/11">-->
	<!--<link rel="pingback" href="http://www.allenlan.com/xmlrpc.php">-->
	<!--[if lt IE 9]>
		<script src="js/front/html5.js"></script>
		<script src="js/front/css3-mediaqueries.js"></script>
	<![endif]-->
	<!--<script src=" http://hm.baidu.com/h.js?367468d520a8fc6788806dd7bb76f9ed" type="text/javascript"></script>-->
	<link rel="stylesheet" id="NextGEN-css" href="css/front/ngg_k2.css" type="text/css" media="screen">
	<link rel="stylesheet" id="style-css" href="css/front/style.css" type="text/css" media="all">
	<link rel="stylesheet" id="style-css" href="font-awesome-4.3.0/css/font-awesome.min.css" type="text/css" media="all">
	<link rel="stylesheet" id="open-social-style-css" href="css/front/os.css" type="text/css" media="all">
	<script type="text/javascript" src="js/front/jquery.min.js"></script>
	<script type="text/javascript" src="js/front/main.js"></script>
	<script type="text/javascript" src="js/front/swfobject.js"></script>
	<script type="text/javascript" src="js/front/fancybox.js"></script>
	<script type="text/javascript" src="js/front/slides.js"></script>
	<script type="text/javascript" src="js/front/jquery.qrcode.min.js"></script>
	<script type="text/javascript" src="js/front/jquery-ias.js.js"></script>
	<script type="text/javascript" src="js/front/jquery.lazyload.js.js"></script>
	<script type="text/javascript" src="js/front/tipso.js"></script>
	<script type="text/javascript" src="js/front/script.js"></script>
	<script type="text/javascript" src="js/front/flexisel.js"></script>
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
<%-- 		<header id="masthead" class="site-header">
			<nav id="top-header">
				<div class="top-nav">
				</div>
			</nav>
			<!-- #top-header -->
			<div id="menu-box">
				<div id="top-menu"> 
					<!-- <span class="nav-search"><i class="fa fa-search"></i></span> 
					<span class="mobile-login"><a href="#login" id="login-mobile"><i class="fa fa-sun-o"></i></a></span>-->
					<hgroup class="logo-site">
						<h1 class="site-title">
							<a href="javascript:void(0)">
								<img src="<%=path %>/images/front/logo.png" alt="欢迎访问xiaolong883.com">
							</a>
						</h1>
					</hgroup>
					<!-- .logo-site -->
					<div id="site-nav-wrap">
						<div id="sidr-close">
							<a href="#sidr-close" class="toggle-sidr-close">×</a>
						</div>
						<nav id="site-nav" class="main-nav">
							<a href="#sidr-main" id="navigation-toggle" class="bars"><i class="fa fa-bars"></i></a>
							<div class="">
								<ul id="" class="down-menu nav-menu sf-js-enabled sf-arrows">
									<li id="menu-item-2" class="menu-item menu-item-type-custom menu-item-object-custom current-menu-item current_page_item menu-item-home menu-item-2"><a href="javascript:void(0)"><i class="fa-home fa"></i><span class="font-text">首页</span></a></li>
									<li id="menu-item-3" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children menu-item-3"><a class="sf-with-ul"><i class="fa-bars fa"></i><span class="font-text">分类</span></a>
										<ul class="sub-menu" style="display: none;">
											<li id="menu-item-5" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-5"><a href="javascript:void(0)"><i class="fa-file-text fa"></i><span class="font-text">日志文摘</span></a></li>
											<li id="menu-item-7" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-7"><a href="javascript:void(0)"><i class="fa-gittip fa"></i><span class="font-text">有你有我</span></a></li>
											<li id="menu-item-6" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-6"><a href="javascript:void(0)"><i class="fa-pencil-square fa"></i><span class="font-text">生活随笔</span></a></li>
											<li id="menu-item-4" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-4"><a href="javascript:void(0)"><i class="fa-cog fa"></i><span class="font-text">站点更新</span></a></li>
										</ul>
									</li>
									<li id="menu-item-90" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-90"><a href="javascript:void(0)"><i class="fa-folder-open fa"></i><span class="font-text">归档</span></a></li>
									<li id="menu-item-54" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-54"><a href="javascript:void(0)"><i class="fa-book fa"></i><span class="font-text">微语</span></a></li>
									<li id="menu-item-91" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-91"><a href="javascript:void(0)"><i class="fa-camera-retro fa"></i><span class="font-text">相册</span></a></li>
									<li id="menu-item-92" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-92"><a href="javascript:void(0)"><i class="fa-music fa"></i><span class="font-text">音乐</span></a></li>
									<li id="menu-item-93" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-93"><a href="javascript:void(0)"><i class="fa-user-plus fa"></i><span class="font-text">友链</span></a></li>
									<li id="menu-item-114" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-114"><a href="javascript:void(0)"><i class="fa-comments fa"></i><span class="font-text">留言</span></a></li>
								</ul>
							</div>
						</nav>
						<!-- #site-nav -->
					</div>
					<!-- #site-nav-wrap -->
					<div class="clear"></div>
				</div>
				<!-- #top-menu -->
			</div>
			<!-- #menu-box -->
		</header>--%>
		<jsp:include page="header.jsp"></jsp:include>
		<!-- #masthead 
		<div id="search-main">
			<div id="searchbar">
				<form method="get" id="searchform" action="http://www.allenlan.com/"> <input type="text" value="" name="s" id="s" placeholder="输入搜索内容" required="">
					<button type="submit" id="searchsubmit">搜索</button>
				</form>
			</div>
			<div class="clear"></div>
		</div>-->
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
<%-- 					<!-- 博文列表 -->
					<c:choose>
						<c:when test="${empty blogList.row}"></c:when>
						<c:otherwise>
							<c:forEach items="${blogList.row }" var="c" varStatus="v">
								<div class="wow" data-wow-delay="0.3s">
									<article id="post-211" class="post-211 post type-post status-publish format-standard hentry category-we tag-hui-jia tag-ru-guo tag-xing-fu tag-xin-qing tag-si-xiang tag-ai-qing tag-sheng-huo tag-dian-ying">
										<figure class="thumbnail">
											<div class="load">
												<a href="javascript:void(0)">
													<img src="<%=path%>/${c.img}" data-original="" alt="${c.title }" style="display: block;">
												</a>
											</div>
											<span class="cat">
												<a href="javascript:void(0)">${c.typeName }</a>
											</span>
										</figure>
										<header class="entry-header">
											<h2 class="entry-title">
												<a href="javascript:void(0)" rel="bookmark">${c.title }</a>
											</h2>
										</header>
										<!-- .entry-header -->
										<div class="entry-content">
											<div class="archive-content"> ${c.summary }... </div>
											<span class="title-l"></span>
											<span class="entry-meta">
												<span class="author">
													<img alt="avatar" src="" class="avatar avatar-40" width="40" height="40">
													<a href="javascript:void(0)" title="由${c.author }发布" rel="author">${c.author }</a>&nbsp;
												</span>
												<span class="date"><i class="fa fa-clock-o"></i>&nbsp;${c.createdate }&nbsp;</span>
												<span class="views"><i class="fa fa-eye"></i>&nbsp;阅读${c.hitcount }次</span>&nbsp; 
												<span class="comment"> <i class="fa fa-comments-o"></i>&nbsp;
													<a href="javascript:void(0)">评论${c.commentcount }条</a>
												</span>
											</span>
											<div class="clear"></div>
										</div>
										<!-- .entry-content -->
										<span class="entry-more">
											<a href="javascript:void(0)" rel="bookmark">阅读全文</a>
										</span>
									</article>
									<!-- #post -->
								</div>
							</c:forEach>
						</c:otherwise>
					</c:choose>
					<!-- 博文列表end -->--%>
					<jsp:include page="article.jsp"></jsp:include>
				</main>
<%-- 				<!-- 分页 -->
				<nav class="navigation pagination" role="navigation">
					<h2 class="screen-reader-text">文章导航</h2>
					<div class="nav-links">
						<span class="page-numbers current">
							<span class="screen-reader-text">第 </span>1
							<span class="screen-reader-text"> 页</span>
						</span>
						<a class="page-numbers" href="javascript:void(0)">
							<span class="screen-reader-text">第 </span>2
							<span class="screen-reader-text"> 页</span>
						</a>
						<span class="page-numbers dots">…</span>
						<a class="page-numbers" href="javascript:void(0)">
							<span class="screen-reader-text">第 </span>5
							<span class="screen-reader-text"> 页</span>
						</a>
						<a class="next page-numbers" href="javascript:void(0)">
							<i class="fa fa-angle-right"></i>
						</a>
					</div>
				</nav>
				<!-- 分页end -->--%>
			</div>
			<!-- .content-area -->
			<div id="sidebar" class="widget-area">
				<div class="wow" data-wow-delay="0.5s">
				<%-- 
					<aside id="about-2" class="widget widget_about">
						<h3 class="widget-title">
							<i class="fa fa-bars"></i>关于本站
						</h3>
						<div id="feed_widget">
							<span class="feed-about">
								<div class="about-main">
									<div class="about-img">
										<img src="http://www.allenlan.com/wp-content/themes/logo.png">
									</div>
									<div class="about-name">不忘初心博客<br>男主：Allenlan<br>女主：Sinkinto</div>
									<div class="about-the">品味人生的酸甜苦辣，<br>感受生活的点滴幸福！</div>
								</div>
								<div class="clear"></div>
								<ul>
									<li class="weixin">
										<span class="tipso_style" id="tip-w" data-tipso="<div id=&quot;weixin-qr&quot;><img src=&quot;http://www.allenlan.com/wp-content/themes/Allenlan/images/weixin.png&quot;/></div>">
											<a title="微信"><i class="fa fa-weixin"></i></a>
										</span>
									</li>
									<li class="tqq">
										<a target="blank" href="javascript:void(0)" title="QQ在线"><i class="fa fa-qq"></i></a>
									</li>
									<li class="tsina">
										<a title="" href="javascript:void(0)" target="_blank"><i class="fa fa-pinterest-square"></i></a>
									</li>
									<li class="feed">
										<a title="订阅" href="javascript:void(0)" target="_blank"><i class="fa fa-rss"></i></a>
									</li>
								</ul>
								<div class="about-inf">
									<span class="about-pn">文章 69</span>
									<span class="about-cn">留言 234</span>
								</div>
							</span>
						</div>
						<div class="clear"></div>
					</aside>
				--%>	
					
					
<%-- 					<aside id="new_cat-2" class="widget widget_new_cat">
						<h3 class="widget-title">
							<i class="fa fa-bars"></i>最新文章
						</h3>
						<div class="new_cat">
							<ul>
								<li>
									<figure class="thumbnail">
										<div class="load">
											<a href="javascript:void(0)"><img src="http://www.allenlan.com/wp-content/themes/Allenlan/img/loading.png" data-original="http://www.allenlan.com/wp-content/themes/Allenlan/img/random/18.jpg" alt="找一个愿意听你讲废话的人"></a>
										</div>
									</figure>
									<div class="new-title">
										<a href="javascript:void(0)" rel="bookmark">找一个愿意听你讲废话的人</a>
									</div>
									<div class="date">08/03</div>
									<span class="views"><i class="fa fa-eye"></i> 107次</span>
								</li>
								<li>
									<figure class="thumbnail">
										<div class="load">
											<a href="javascript:void(0)">
											<img src="http://www.allenlan.com/wp-content/themes/Allenlan/img/loading.png" data-original="http://www.allenlan.com/wp-content/themes/Allenlan/img/random/4.jpg" alt="八月"></a>
										</div>
									</figure>
									<div class="new-title">
										<a href="javascript:void(0)" rel="bookmark">八月</a>
									</div>
									<div class="date">08/01</div>
									<span class="views"><i class="fa fa-eye"></i> 63次</span>
								</li>
								<li>
									<figure class="thumbnail">
										<div class="load">
											<a href="javascript:void(0)">
											<img src="http://www.allenlan.com/wp-content/themes/Allenlan/img/loading.png" data-original="http://www.allenlan.com/wp-content/themes/Allenlan/img/random/11.jpg" alt="无眠讽刺的夜"></a>
										</div>
									</figure>
									<div class="new-title">
										<a href="javascript:void(0)" rel="bookmark">无眠讽刺的夜</a>
									</div>
									<div class="date">07/15</div> <span class="views"><i class="fa fa-eye"></i> 148次</span>
								</li>
								<li>
									<figure class="thumbnail">
										<div class="load">
											<a href="javascript:void(0)">
											<img src="http://www.allenlan.com/wp-content/themes/Allenlan/img/loading.png" data-original="http://www.allenlan.com/wp-content/themes/Allenlan/img/random/13.jpg" alt="一年三个月"></a>
										</div>
									</figure>
									<div class="new-title">
										<a href="javascript:void(0)" rel="bookmark">一年三个月</a>
									</div>
									<div class="date">06/25</div> <span class="views"><i class="fa fa-eye"></i> 197次</span>
								</li>
								<li>
									<figure class="thumbnail">
										<div class="load">
											<a href="javascript:void(0)">
											<img src="http://www.allenlan.com/wp-content/themes/Allenlan/img/loading.png" data-original="http://www.allenlan.com/wp-content/themes/Allenlan/timthumb.php?src=http://www.allenlan.com/wp-content/uploads/2016/05/201605301719.png&amp;w=280&amp;h=210&amp;zc=1" alt="你没有底线，他就没有原则"></a>
										</div>
									</figure>
									<div class="new-title">
										<a href="javascript:void(0)" rel="bookmark">你没有底线，他就没有原则</a>
									</div>
									<div class="date">05/30</div> <span class="views"><i class="fa fa-eye"></i> 234次</span>
								</li>
							</ul>
						</div>
						<div class="clear"></div>
					</aside>--%>
					<jsp:include page="recentArticle.jsp"></jsp:include>
<%-- 					<aside id="ngg-images-3" class="widget ngg_images">
						<h3 class="widget-title"><i class="fa fa-bars"></i>相册图片</h3>
						<div class="ngg-widget entry-content">
							<a href="http://www.allenlan.com/wp-content/gallery/youwan/IMG_0271.JPG" title="" class="fancybox"><img src="http://www.allenlan.com/wp-content/gallery/youwan/thumbs/thumbs_IMG_0271.JPG" width="135" height="135" title="忠仑公园" alt="忠仑公园"></a>
							<a href="http://www.allenlan.com/wp-content/gallery/youwan/IMG_0274.JPG" title="" class="fancybox"><img src="http://www.allenlan.com/wp-content/gallery/youwan/thumbs/thumbs_IMG_0274.JPG" width="135" height="135" title="忠仑公园" alt="忠仑公园"></a>
							<a href="http://www.allenlan.com/wp-content/gallery/youwan/image_1.jpg" title="" class="fancybox"><img src="http://www.allenlan.com/wp-content/gallery/youwan/thumbs/thumbs_image_1.jpg" width="135" height="135" title="蔡塘看电影" alt="蔡塘看电影"></a>
							<a href="http://www.allenlan.com/wp-content/gallery/kekeoryatou/13916048885447.jpg" title="" class="fancybox"><img src="http://www.allenlan.com/wp-content/gallery/kekeoryatou/thumbs/thumbs_13916048885447.jpg" width="135" height="135" title="中山公园" alt="中山公园"></a>
						</div>
						<div class="clear"></div>
					</aside>--%>
<%-- 					<aside id="categories-2" class="widget widget_categories">
						<h3 class="widget-title"><i class="fa fa-bars"></i>分类目录</h3>
						<ul>
							<li class="cat-item cat-item-2"><a href="http://www.allenlan.com/category/daily/">日志文摘</a></li>
							<li class="cat-item cat-item-3"><a href="http://www.allenlan.com/category/we/">有你有我</a></li>
							<li class="cat-item cat-item-4"><a href="http://www.allenlan.com/category/essay/">生活随笔</a></li>
							<li class="cat-item cat-item-5"><a href="http://www.allenlan.com/category/share/">站点更新</a></li>
						</ul>
						<div class="clear"></div>
					</aside>--%>
					<jsp:include page="category.jsp"></jsp:include>
					
				</div>
				<div class="sidebar-roll">
<%-- 					<!-- 热评文章 -->
					<aside id="hot_comment-2" class="widget widget_hot_comment">
						<h3 class="widget-title"><i class="fa fa-bars"></i>热评文章</h3>
						<div id="hot_comment_widget">
							<ul>
								<li><span class="li-icon li-icon-1">1</span><a href="javascript:void(0)" rel="bookmark" title=" (20条评论)">找一个愿意听你讲废话的人</a></li>
								<li><span class="li-icon li-icon-2">2</span><a href="javascript:void(0)" rel="bookmark" title=" (12条评论)">清明伤怀又逢雨</a></li>
								<li><span class="li-icon li-icon-3">3</span><a href="javascript:void(0)" rel="bookmark" title=" (12条评论)">无眠讽刺的夜</a></li>
								<li><span class="li-icon li-icon-4">4</span><a href="javascript:void(0)" rel="bookmark" title=" (11条评论)">你没有底线，他就没有原则</a></li>
								<li><span class="li-icon li-icon-5">5</span><a href="javascript:void(0)" rel="bookmark" title=" (9条评论)">有个爱情杀手叫做婚姻时差（选自网络）</a></li>
								<li><span class="li-icon li-icon-6">6</span><a href="javascript:void(0)" rel="bookmark" title=" (9条评论)">看清了所以看轻了</a></li>
								<li><span class="li-icon li-icon-7">7</span><a href="javascript:void(0)" rel="bookmark" title=" (9条评论)">在厦门，穷是一种什么体会？</a></li>
								<li><span class="li-icon li-icon-8">8</span><a href="javascript:void(0)" rel="bookmark" title=" (7条评论)">等天亮</a></li>
								<li><span class="li-icon li-icon-9">9</span><a href="javascript:void(0)" rel="bookmark" title=" (6条评论)">这下雨的天气，我缺失了一颗心</a></li>
								<li><span class="li-icon li-icon-10">10</span><a href="javascript:void(0)" rel="bookmark" title=" (6条评论)">一年三个月</a></li>
							</ul>
						</div>
						<div class="clear"></div>
					</aside>
					<!-- 热评文章 end -->--%>
					<jsp:include page="hotCommentArticle.jsp"></jsp:include>
				</div>
				<div class="wow fadeInUp" data-wow-delay="0.5s">
<%-- 					<!-- 读者墙 end -->
					<aside id="readers-2" class="widget widget_readers">
						<h3 class="widget-title"><i class="fa fa-bars"></i>读者墙</h3>
						<div id="readers_widget" class="readers">
							<div class="readers-avatar"><li><a href="javascript:void(0)" title="生晓's blog 13 个脚印" target="_blank" rel="external nofollow"><img alt="avatar" src="http://www.allenlan.com/wp-content/uploads/gravatar/d69c11da1092e4e90969482ba0b20746-s48.jpg" class="avatar avatar-48" width="48" height="48"></a></li></div>
							<div class="readers-avatar"><li><a href="javascript:void(0)" title="商易链母婴B2b 11 个脚印" target="_blank" rel="external nofollow"><img alt="avatar" src="http://www.allenlan.com/wp-content/uploads/gravatar/b0f295b9aae2dd656d737022c789b109-s48.jpg" class="avatar avatar-48" width="48" height="48"></a></li></div>
							<div class="readers-avatar"><li><a href="javascript:void(0)" title="软膜天花 10 个脚印" target="_blank" rel="external nofollow"><img alt="avatar" src="http://www.allenlan.com/wp-content/uploads/gravatar/9b98e10ced4f05004d4813dd43d04071-s48.jpg" class="avatar avatar-48" width="48" height="48"></a></li></div>
							<div class="readers-avatar"><li><a href="javascript:void(0)" title="以歌。先生 8 个脚印" target="_blank" rel="external nofollow"><img alt="avatar" src="http://www.allenlan.com/wp-content/uploads/gravatar/d1b1d42fa053c7033ad43c0206fb6504-s48.jpg" class="avatar avatar-48" width="48" height="48"></a></li></div>
							<div class="readers-avatar"><li><a href="javascript:void(0)" title="柒爱博客 6 个脚印" target="_blank" rel="external nofollow"><img alt="avatar" src="http://www.allenlan.com/wp-content/uploads/gravatar/8450e9c40f8eaf4ed9dd2e7b353c7971-s48.jpg" class="avatar avatar-48" width="48" height="48"></a></li></div>
							<div class="readers-avatar"><li><a href="javascript:void(0)" title="破晓起飞 5 个脚印" target="_blank" rel="external nofollow"><img alt="avatar" src="http://www.allenlan.com/wp-content/uploads/gravatar/473f50ef80e045aaf3168962f300859c-s48.jpg" class="avatar avatar-48" width="48" height="48"></a></li></div>
							<div class="readers-avatar"><li><a href="javascript:void(0)" title="跨境电商 3 个脚印" target="_blank" rel="external nofollow"><img alt="avatar" src="http://www.allenlan.com/wp-content/uploads/gravatar/02b3eff215cf1acdc112c0d7e98e83a9-s48.jpg" class="avatar avatar-48" width="48" height="48"></a></li></div>
							<div class="readers-avatar"><li><a href="javascript:void(0)" title="萤火虫 3 个脚印" target="_blank" rel="external nofollow"><img alt="avatar" src="http://www.allenlan.com/wp-content/uploads/gravatar/1224c20f5f81544bac23382385ea893a-s48.jpg" class="avatar avatar-48" width="48" height="48"></a></li></div>
							<div class="readers-avatar"><li><a href="javascript:void(0)" title="刘仔很忙 3 个脚印" target="_blank" rel="external nofollow"><img alt="avatar" src="http://www.allenlan.com/wp-content/uploads/gravatar/35f37554fc27baec865618bc2afbe521-s48.jpg" class="avatar avatar-48" width="48" height="48"></a></li></div>
							<div class="readers-avatar"><li><a href="javascript:void(0)" title="成都卫校 3 个脚印" target="_blank" rel="external nofollow"><img alt="avatar" src="http://www.allenlan.com/wp-content/uploads/gravatar/da96a984a27f657b2b1da1f08c3c534f-s48.jpg" class="avatar avatar-48" width="48" height="48"></a></li></div>
							<div class="readers-avatar"><li><a href="javascript:void(0)" title="起点终站 3 个脚印" target="_blank" rel="external nofollow"><img alt="avatar" src="http://www.allenlan.com/wp-content/uploads/gravatar/434d12a46c18c7dc4b6c342797387da9-s48.jpg" class="avatar avatar-48" width="48" height="48"></a></li></div>
							<div class="readers-avatar"><li><a href="javascript:void(0)" title="蒸汽回收机 3 个脚印" target="_blank" rel="external nofollow"><img alt="avatar" src="http://www.allenlan.com/wp-content/uploads/gravatar/efbb1ce94368b6c9d60f3e31314e7974-s48.jpg" class="avatar avatar-48" width="48" height="48"></a></li></div>
							<div class="readers-avatar"><li><a href="javascript:void(0)" title="点我收录您 2 个脚印" target="_blank" rel="external nofollow"><img alt="avatar" src="http://www.allenlan.com/wp-content/uploads/gravatar/b235e03d79bfae10f70fc145cbbf39e7-s48.jpg" class="avatar avatar-48" width="48" height="48"></a></li></div>
							<div class="readers-avatar"><li><a href="javascript:void(0)" title="每天签到赚10元 2 个脚印" target="_blank" rel="external nofollow"><img alt="avatar" src="http://www.allenlan.com/wp-content/uploads/gravatar/b4925c9b2dd82b95ee3773159e33f8f2-s48.jpg" class="avatar avatar-48" width="48" height="48"></a></li></div>
							<div class="readers-avatar"><li><a href="javascript:void(0)" title="畅游文学 2 个脚印" target="_blank" rel="external nofollow"><img alt="avatar" src="http://www.allenlan.com/wp-content/uploads/gravatar/2b8bd4850ce9f9910dd944630ca9b507-s48.jpg" class="avatar avatar-48" width="48" height="48"></a></li></div>
							<div class="readers-avatar"><li><a href="javascript:void(0)" title="xxf 2 个脚印" target="_blank" rel="external nofollow"><img alt="avatar" src="http://www.allenlan.com/wp-content/uploads/gravatar/808920611562e93409d1b55aa4e4e91e-s48.jpg" class="avatar avatar-48" width="48" height="48"></a></li></div>
							<div class="readers-avatar"><li><a href="javascript:void(0)" title="米粒博客 2 个脚印" target="_blank" rel="external nofollow"><img alt="avatar" src="http://www.allenlan.com/wp-content/uploads/gravatar/ed59b723771011b92c2ffe6a768ffbfd-s48.jpg" class="avatar avatar-48" width="48" height="48"></a></li></div>
							<div class="readers-avatar"><li><a href="javascript:void(0)" title="侧耳倾听 2 个脚印" target="_blank" rel="external nofollow"><img alt="avatar" src="http://www.allenlan.com/wp-content/uploads/gravatar/bc4e29b0d4a91174fb3f42a189779b4c-s48.jpg" class="avatar avatar-48" width="48" height="48"></a></li></div>
							<div class="clear"></div>
						</div>
						<div class="clear"></div>
					</aside>
					<!-- 读者墙 end -->--%>
<%-- 					<!-- 近期评论 -->
					<aside id="recent_comments-2" class="widget widget_recent_comments">
						<h3 class="widget-title"><i class="fa fa-bars"></i>近期评论</h3>
						<div id="message" class="message-widget">
							<ul>
								<li><a href="javascript:void(0)" title="友链"> <img alt="avatar" src="http://www.allenlan.com/wp-content/uploads/gravatar/49f937f54e742e97b002510444b4fa01-s64.jpg" class="avatar avatar-64" width="64" height="64"> <span class="comment_author"><strong>爱佳</strong></span> 友链已添加 爱佳´Sblog http://www.539150.top/</a></li>
								<li><a href="javascript:void(0)" title="找一个愿意听你讲废话的人"> <img alt="avatar" src="http://www.allenlan.com/wp-content/uploads/gravatar/754cf36cf4466de525a3dea80b247d1c-s64.jpg" class="avatar avatar-64" width="64" height="64"> <span class="comment_author"><strong>Sinkinto</strong></span> 所以相爱容易，相处难。婚姻长期还是短期也是态度决定的。</a></li>
								<li><a href="javascript:void(0)" title="留言"> <img alt="avatar" src="http://www.allenlan.com/wp-content/uploads/gravatar/bbed565b306b8046c43be51dac196fd6-s64.jpg" class="avatar avatar-64" width="64" height="64"> <span class="comment_author"><strong>米粒堆</strong></span> 您好 ，换个链接，可以吗？米粒堆 http://www.milidui.com/</a></li>
								<li><a href="javascript:void(0)" title="留言"> <img alt="avatar" src="http://www.allenlan.com/wp-content/uploads/gravatar/2b886b663cee307a827a38cd02979492-s64.jpg" class="avatar avatar-64" width="64" height="64"> <span class="comment_author"><strong>文案怎么写</strong></span> 博主的文笔很不错，仰慕已久，特来拜会。若能有幸能得到博主的回访，必将欣喜若狂。</a></li>
								<li><a href="javascript:void(0)" title="留言"> <img alt="avatar" src="http://www.allenlan.com/wp-content/uploads/gravatar/9cbf37cce17bbd79ed0f9777a60b4837-s64.jpg" class="avatar avatar-64" width="64" height="64"> <span class="comment_author"><strong>侧耳倾听</strong></span> 来看看。。。 </a></li>
								<li><a href="javascript:void(0)" title="找一个愿意听你讲废话的人"> <img alt="avatar" src="http://www.allenlan.com/wp-content/uploads/gravatar/5865a3ce5a7d2d1367df2becdf2d0ad6-s64.jpg" class="avatar avatar-64" width="64" height="64"> <span class="comment_author"><strong>江太公</strong></span> 这有点难。短期可以，长期难。 </a></li>
								<li><a href="javascript:void(0)" title="找一个愿意听你讲废话的人"> <img alt="" ip="" src="//q.qlogo.cn/qqapp/101213224/48D67DC22556E6E46A79AF85E71E5969/100" class="avatar avatar-64" width="64"> <span class="comment_author"><strong>Luking</strong></span> 支持支持 </a></li>
								<li><a href="javascript:void(0)" title="找一个愿意听你讲废话的人"> <img alt="avatar" src="http://www.allenlan.com/wp-content/uploads/gravatar/b1a29c80856470fc1329bdc13c972a88-s64.jpg" class="avatar avatar-64" width="64" height="64"> <span class="comment_author"><strong>卢松松博客</strong></span> 从百度点进来的，支持一下，希望站长您多出一些好文章。</a></li>
								<li><a href="javascript:void(0)" title="厦门的三月"> <img alt="avatar" src="http://www.allenlan.com/wp-content/uploads/gravatar/ee9b33e677eb1f6d40e4eeaf67d1e856-s64.jpg" class="avatar avatar-64" width="64" height="64"> <span class="comment_author"><strong>不点儿</strong></span> 好想去厦门，上次也是唯一一次去厦门实在去年暑假把<img src="http://www.allenlan.com/wp-content/themes/Allenlan/img/smilies/icon_mrgreen.gif" alt=":mrgreen:" class="wp-smiley" style="height: 1em; max-height: 1em;"> </a></li>
								<li style="border: none;"><a href="javascript:void(0)" title="你没有底线，他就没有原则"> <img alt="avatar" src="http://www.allenlan.com/wp-content/uploads/gravatar/ee9b33e677eb1f6d40e4eeaf67d1e856-s64.jpg" class="avatar avatar-64" width="64" height="64"> <span class="comment_author"><strong>不点儿</strong></span> 不必把一份情谊维持得如此委曲求全。这句话说的对，支持一个</a></li>
							</ul>
						</div>
						<div class="clear"></div>
					</aside>
					<!-- 近期评论 end -->--%>
				</div>
			</div>
			<div class="clear"></div>
			<div class="clear"></div>
<%-- 			<div class="wow fadeInUp" data-wow-delay="0.3s">
				<div id="links">
					<ul>
						<li id="linkcat-47" class="linkcat">
							<h2>首页链接</h2>
							<ul class="xoxo blogroll">
								<span class="lx7"><span class="link-f"><a href="javascript:void(0)" title="这苦涩的根必将会迎来满园芬芳！" target="_blank">柒爱博客</a></span></span>
								<span class="lx7"><span class="link-f"><a href="javascript:void(0)" title="专注于PHP与HTML5开发" target="_blank">风色幻想</a></span></span>
								<span class="lx7"><span class="link-f"><a href="javascript:void(0)" title="西宁首个自媒体博客。" target="_blank">生晓's Blog</a></span></span><span class="lx7"><span class="link-f"><a href="http://www.dawnfly.cn/" title="专注于技术开发,分享行业内最新动态,热衷地学习各种流行技术" target="_blank">破晓博客</a></span></span>
								<span class="lx7"><span class="link-f"><a href="javascript:void(0)" title="专注企业营销SEO、SEM和软膜天花、壁画壁纸 ！" target="_blank">邓明科博客</a></span></span><span class="lx7"><span class="link-f"><a href="https://loveteemo.com/" title="青春因为爱情而美丽，青春就要有青春的活力" target="_blank">青春博客</a></span></span>
								<span class="lx7"><span class="link-f"><a href="javascript:void(0)" title="收入国内优秀独立博客！" target="_blank">中国博客联盟</a></span></span><span class="lx7"><span class="link-f"><a href="http://www.whisperto.net" title="侧耳倾听，个人博客，侧耳倾听个人博客" target="_blank">侧耳倾听</a></span></span>
								<span class="lx7"><span class="link-f"><a href="javascript:void(0)" title="胡新春的个人博客网提供IT技术博文、网站模板下载、博文欣赏。" target="_blank">胡新春博客</a></span></span><span class="lx7"><span class="link-f"><a href="http://blog.iov.me" title="别为不属于你的观众，演绎你不擅长的人生！" target="_blank">随心说</a></span></span>
								<span class="lx7"><span class="link-f"><a href="javascript:void(0)" title="一个致力于分享web互联网技术和个人情感生活的优秀个人博客网站" target="_blank">萤火虫博客</a></span></span><span class="lx7"><span class="link-f"><a href="http://www.blogtime.cc/" title="经流年，梦回曲水边" target="_blank">时光博客</a></span></span>
								<span class="lx7"><span class="link-f"><a href="javascript:void(0)" title="倾听时间，书写生活" target="_blank">艳莜日记</a></span></span><span class="lx7"><span class="link-f"><a href="http://czduban.com" title="依然在追寻自己的梦想，并努力着，现实的一切苦楚都将化作一股力量，驱使我向前！" target="_blank">以歌。先生</a></span></span>
								<span class="lx7"><span class="link-f"><a href="javascript:void(0)" title="记录程序员奋斗路上和生活中的点滴。" target="_blank">阿佩博客</a></span></span><span class="lx7"><span class="link-f"><a href="http://blog.hellozwh.com/" target="_blank">起点终站</a></span></span><span class="lx7"><span class="link-f"><a href="http://www.milidui.com/" title="堆出美好生活" target="_blank">米粒堆</a></span></span>
								<span class="lx7"><span class="link-f"><a href="javascript:void(0)" title="爱佳博客" target="_blank">爱佳´Sblog</a></span></span>
							</ul>
						</li>
						<span class="lx7"><span class="link-f"><li><a href="javascript:void(0)" target="_blank" title="全部链接">更多链接<i class="icon-li"></i></a></li></span></span>
					</ul>
					<div class="clear"></div>
				</div>
			</div>--%>
		</div>
<%-- 		<!-- .site-content -->
		<footer id="colophon" class="site-footer" role="contentinfo">
			<div class="site-info"> Copyright © 2013-2016 <a href="javascript:void(0)">Yang博客</a>. Powered by <a title="一个优美、先进的个人信息发布平台。" href="//cn.wordpress.org/" target="_blank" rel="external nofollow">WordPress</a>. <span class="add-info"> <a href="javascript:void(0)" target="_blank" rel="nofollow">网站地图</a> . <a href="javascript:void(0)" target="_blank" rel="nofollow">备案号未申请</a> . <a href="javascript:void(0)" target="_blank" rel="external nofollow"> 站点统计</a> </span>					</div>
			<!-- .site-info -->
		</footer>--%>
		<jsp:include page="footer.jsp"></jsp:include>
		<!-- .site-footer -->
<%-- 		<div id="login">
			<div class="login-t">用户登录</div>
			<form action="http://www.allenlan.com/wp-login.php?redirect_to=http%3A%2F%2Fwww.allenlan.com%2Fto-find-a-person-willing-to-listen-to-your-crap.html" method="post" id="loginform"> <input type="username" name="log" id="log" placeholder="名称" required=""> <input type="password" name="pwd" id="pwd" placeholder="密码" required="">
				<div class="open_social_box login_box">
					<div class="login_button login_icon_qq" onclick="login_button_click('qq','http://www.allenlan.com/')" title="使用 QQ 登陆"></div>
					<div class="login_button login_icon_sina" onclick="login_button_click('sina','http://www.allenlan.com/')" title="使用 Sina 登陆"></div>
				</div> <input type="submit" id="submit" value="登录"> <input type="hidden" name="redirect_to" value="admin"> <label><input type="checkbox" name="rememberme" id="modlogn_remember" value="yes" checked="checked" alt="Remember Me">自动登录</label> <a href="http://www.allenlan.com/wp-login.php?action=lostpassword">&nbsp;&nbsp;忘记密码？</a>					</form>
			<div class="login-b"></div>
		</div>
		<script>
			window._bd_share_config = {
				"common": {
					"bdSnsKey": {},
					"bdText": "",
					"bdMini": "2",
					"bdMiniList": false,
					"bdPic": "",
					"bdStyle": "1",
					"bdSize": "16"
				},
				"share": {
					"bdSize": 16
				}
			};
			with(document) 0[(getElementsByTagName('head')[0] || body).appendChild(createElement('script')).src = 'http://bdimg.share.baidu.com/static/api/js/share.js?v=89860593.js?cdnversion=' + ~(-new Date() / 36e5)];
		</script>--%>
<%-- 		<ul id="scroll">
			<div class="log log-no">
				<li><a class="log-button" title="文章目录"><i class="fa fa-bars"></i></a></li>
				<div class="log-prompt" style="display: none;">
					<div class="log-arrow">文章目录</div>
				</div>
			</div>
			<li><a class="scroll-h" title="返回顶部"><i class="fa fa-angle-up"></i></a></li>
			<li><a name="gb2big5" id="gb2big5" href="javascript:StranBody()" title="繁體"><span>繁</span></a></li>
			<li><a href="javascript:void(0)" class="qr" title="二维码"><i class="fa fa-qrcode"></i><span class="qr-img"><div id="output"><img class="alignnone" src=""></div></span></a></li>
			<script type="text/javascript">
				$(document).ready(function() {
					if (!+[1, ]) {
						present = "table";
					} else {
						present = "canvas";
					}
					$('#output').qrcode({
						render: present,
						text: window.location.href,
						width: "150",
						height: "150"
					});
				});
			</script>
			<li><a class="scroll-b" title="转到底部"><i class="fa fa-angle-down"></i></a></li>
		</ul>--%>
		<jsp:include page="scrollbar.jsp"></jsp:include>
<%-- 		<script type="text/javascript">
			document.onkeydown = chang_page;

			function chang_page(e) {
				var e = e || event,
					keycode = e.which || e.keyCode;
				if (keycode == 37) location = 'http://www.allenlan.com/';
				if (keycode == 39) location = 'http://www.allenlan.com/page/2/';
			}
		</script>--%>
<%-- 		<!-- 雪花插件 -->
		<canvas class="snow-canvas" speed="1" interaction="false" size="2" count="50" opacity="0.00001" start-color="rgba(253,252,251,1)" end-color="rgba(251,252,253,0.3)" wind-power="0" image="false" width="1366" height="150"></canvas>
		<canvas class="snow-canvas" speed="3" interaction="true" size="6" count="30" start-color="rgba(253,252,251,1)" end-color="rgba(251,252,253,0.3)" opacity="0.00001" wind-power="2" image="false" width="1366" height="150"></canvas>
		<script type="text/javascript" src="http://www.allenlan.com/wp-content/themes/Allenlan/images/snow-plugin.js"></script>
		<script>
			$(function() {
				$(".snow-canvas").snow();
			});
		</script>
		<style type="text/css">
			.snow-canvas {
				display: block;
				width: 100%;
				height: 100%;
				top: 0;
				left: 0;
				position: fixed;
				pointer-events: none;
				z-index: 100001;
			}
		</style>--%>
		<script type="text/javascript" src="<%=path %>/js/front/superfish.js"></script>
		<script type="text/javascript" src="<%=path %>/js/front/gb2big5.js"></script>
<%-- 		<script type="text/javascript" src="<%=path %>/js/front/os.js"></script>--%>
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