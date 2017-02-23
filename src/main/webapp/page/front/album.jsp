<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%-- 
	杨小龙   2017-02-22 相册
--%>
<!DOCTYPE html>
<html>
<head>

	<meta charset="UTF-8">
	<title>相册|Yang博客</title>
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
	<link rel="stylesheet" id="highlight-css" href="http://www.allenlan.com/wp-content/themes/Allenlan/css/highlight.css?ver=Allen" type="text/css" media="all">
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
	<style>
		.nmsingle-container,
		.nms-list,
		.nmhotcom {
			max-width: px
		}
		
		.nm-copyright {
			display: none;
		}
		.fancybox-margin {
			margin-right: 0px;
		}
		.theiaStickySidebar:after {
			content: "";
			display: table;
			clear: both;
		}
	</style>
</head>
<body class="page-template page-template-pages page-template-template-album page-template-pagestemplate-album-php page page-id-14">
	<div id="page" class="hfeed site">
		<jsp:include page="header.jsp"></jsp:include>
		
		<nav class="breadcrumb">
			<a class="crumbs" title="返回首页" href="<%=basePath%>/index.do"><i class="fa fa-home"></i> 首页</a>
			<i class="fa fa-angle-right"></i>相册
		</nav>
		
		<div id="content" class="site-content">
			<div class="clear"></div>
			<style type="text/css">
				.album-header h1 {
					font-size: 16px;
					font-size: 1.6rem;
					line-height: 30px;
					text-align: center;
					margin: 0 0 15px 0;
				}
				
				.photo-title {
					font-size: 13px;
					margin: 10px -21px 10px -21px;
					padding: 0 15px;
					border-bottom: 1px solid #ebebeb;
					border-left: 5px solid #0088cc;
				}
				
				@media screen and (max-width: 1920px) {
					.ngg-album-compact h4 {
						font-size: 15px;
					}
				}
				
				@media screen and (max-width: 1024px) {
					.ngg-album-compact {
						width: 190px;
					}
					.ngg-album-compactbox {
						width: 180px;
					}
					.ngg-gallery-thumbnail img {
						width: 166px;
					}
				}
				
				@media screen and (max-width: 800px) {
					.ngg-album-compact {
						width: 145px;
					}
					.ngg-album-compactbox {
						height: 145px;
						width: 135px;
					}
					.ngg-album-compact h4 {
						width: 135px;
						font-size: 14px;
					}
					.ngg-gallery-thumbnail img {
						width: 158px;
					}
				}
				
				@media screen and (max-width: 640px) {
					.ngg-album-compact {
						width: 140px;
					}
					.ngg-album-compactbox {
						width: 130px;
					}
					.ngg-album-compact h4 {
						font-size: 14px;
					}
					.ngg-gallery-thumbnail img {
						width: 120px;
					}
				}
				
				@media screen and (max-width: 320px) {
					.ngg-album-compact {
						height: 200px;
						width: 130px;
					}
					.ngg-album-compactbox {
						height: 135px;
						width: 120px;
					}
					.ngg-album-compact h4 {
						width: 125px;
						font-size: 13px;
					}
					.ngg-gallery-thumbnail img {
						width: 107px;
					}
				}
			</style>
			<main id="main" class="site-main" role="main">
				<article id="post-14" class="post-14 page type-page status-publish hentry">
					<header class="album-header">
						<h1 class="entry-title">相册</h1>
						<h3 class="photo-title">分享快乐每一分！</h3> 
					</header>
					<!-- .entry-header -->
					<div class="entry-content">
						<div class="single-content">
							<div class="ngg-albumoverview">
								<c:choose>
									<c:when test="${empty  list.row}">qweqwe</c:when>
									<c:otherwise>
										<c:forEach items="${list.row }" var="c" varStatus="v">
											<div class="ngg-album-compact">
												<div class="ngg-album-compactbox">
													<div class="ngg-album-link">
														<a class="Link" href="<%=basePath%>/getAlbumInfo/${c.photoId}.do">
															<img class="Thumb" alt="${c.url }" src="<%=basePath%>/${c.url}">
														</a>
													</div>
												</div>
												<h4><a class="ngg-album-desc" title="${c.name }" href="<%=basePath%>/getAlbumInfo/${c.photoId}.do">${c.name }</a></h4>
												<p><strong>${c.photoCount }</strong> 张图片</p>
											</div>
										</c:forEach>
									</c:otherwise>
								</c:choose>
								<div class="ngg-clear"></div>
							</div>
						</div>
						<div style="height:50px"></div>
						<div class="clear"></div>
					</div>
				</article>
			</main>
			<div class="clear"></div>
			<div class="wow fadeInUp" data-wow-delay="0.3s"></div>
		</div>
		<jsp:include page="footer.jsp" /> 
		
	</div>
</body>
</html>