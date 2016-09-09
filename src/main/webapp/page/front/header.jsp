<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path;
%>
<!-- 我来组成头部 -->
<header id="masthead" class="site-header">
	<nav id="top-header">
		<div class="top-nav">
		</div>
	</nav>
	<!-- #top-header -->
	<div id="menu-box">
		<div id="top-menu"> 
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
							<li id="menu-item-3" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-has-children menu-item-3"><a href="javascript:void(0)" class="sf-with-ul"><i class="fa-bars fa"></i><span class="font-text">分类</span></a>
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
</header>
<!-- 我来组成头部 end-->