<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path;
%>
<link rel="stylesheet" href="<%=path %>/css/Begin.css" />
<header id="masthead" class="site-header">

	<div id="menu-box">
		<div id="top-menu">
			<span class="nav-search"><i class="fa fa-search"></i></span> 
			<span class="mobile-login">
				<a href="#login" id="login-mobile"><i class="fa fa-sun-o"></i></a>
			</span>
			<hgroup class="logo-site">
				<h1 class="site-title">
					<a href="http://www.1mayi.com/">
						<img src="http://www.1mayi.com/wp-content/uploads/logo-220x50.png" alt="蚂蚁博客">
					</a>
				</h1>
			</hgroup>
			<!-- .logo-site -->

			<div id="site-nav-wrap">
				<div id="sidr-close">
					<a href="#sidr-close" class="toggle-sidr-close">×</a>
				</div>
				<nav id="site-nav" class="main-nav">
					<a href="#sidr-main" id="navigation-toggle" class="bars"><i
						class="fa fa-bars"></i></a>
					<div class="menu-%e5%af%bc%e8%88%aa%e8%8f%9c%e5%8d%95-container">
						<ul id="menu-%e5%af%bc%e8%88%aa%e8%8f%9c%e5%8d%95"
							class="down-menu nav-menu sf-js-enabled sf-arrows">
							<li id="menu-item-5641" class="menu-item menu-item-type-custom menu-item-object-custom current-menu-item current_page_item menu-item-home menu-item-5641">
								<a title="返回蚂蚁博客首页" href="http://www.1mayi.com/">
									<i class="fa-home fa"></i>
									<span class="font-text">返回首页</span>
								</a>
							</li>
							<li id="menu-item-1255"
								class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-has-children menu-item-1255"><a
								title="电声技术：音箱设计|音响技术|喇叭原理|分频器设计|音质评价|声学基础和音响相关技术书籍"
								href="http://www.1mayi.com/electroacoustic-technology/"
								class="sf-with-ul"><i class="fa-volume-up fa"></i><span
									class="font-text">电声技术</span></a>
								<ul class="sub-menu" style="display: none;">
									<li id="menu-item-1256"
										class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-1256"><a
										title="声学基础知识分享"
										href="http://www.1mayi.com/electroacoustic-technology/shengxue-basis/">声学基础</a></li>
									<li id="menu-item-1645"
										class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-1645"><a
										title="电声方面音响技术书籍分享"
										href="http://www.1mayi.com/electroacoustic-technology/yinxiangjishu-book-download/">电声书籍</a></li>
									<li id="menu-item-1153"
										class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-1153"><a
										title="电声设计模拟软件（音箱设计，分频器设计，箱体设计，频响阻抗测试等）"
										href="http://www.1mayi.com/electroacoustic-technology/diansheng-software/">电声软件</a></li>
									<li id="menu-item-1150"
										class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-has-children menu-item-1150"><a
										title="音箱设计相关基础知识分享"
										href="http://www.1mayi.com/electroacoustic-technology/pro-loudspeaker/"
										class="sf-with-ul">音箱设计</a>
										<ul class="sub-menu" style="display: none;">
											<li id="menu-item-1314"
												class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-1314"><a
												title="音箱设计箱体结构方面知识分享"
												href="http://www.1mayi.com/electroacoustic-technology/pro-loudspeaker/speaker-box/">箱体</a></li>
											<li id="menu-item-1259"
												class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-1259"><a
												title="音箱设计中分频器调试|设计,电路原理图线路板绘制等技巧"
												href="http://www.1mayi.com/electroacoustic-technology/pro-loudspeaker/yinxiang-frequency-divider/">分频器</a></li>
											<li id="menu-item-1262"
												class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-1262"><a
												title="音箱设计中扬声器|喇叭的基础知识分享"
												href="http://www.1mayi.com/electroacoustic-technology/pro-loudspeaker/speaker/">扬声器</a></li>
										</ul></li>
									<li id="menu-item-1258"
										class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-has-children menu-item-1258"><a
										title="音响技术基础知识分享"
										href="http://www.1mayi.com/electroacoustic-technology/audio-technique/"
										class="sf-with-ul">音响技术</a>
										<ul class="sub-menu" style="display: none;">
											<li id="menu-item-1157"
												class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-1157"><a
												title="音质评价，听音的技巧及训练和相关术语分享"
												href="http://www.1mayi.com/electroacoustic-technology/yinzhipingjia/">音质评价</a></li>
											<li id="menu-item-1270"
												class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-1270"><a
												title="最新的音响行业动态和音响企业信息分享"
												href="http://www.1mayi.com/electroacoustic-technology/yinxiang-hangye/">音响行业</a></li>
										</ul></li>
									<li id="menu-item-2208"
										class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-2208"><a
										title="电声器材（音箱，耳机，功放，调音台等）基础知识分享"
										href="http://www.1mayi.com/electroacoustic-technology/electroacoustic-equipment/">电声器材</a></li>
								</ul></li>
							<li id="menu-item-3934"
								class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-has-children menu-item-3934"><a
								title="高品质无损音乐合集|经典歌曲专辑下载"
								href="http://www.1mayi.com/high-quality-music/"
								class="sf-with-ul"><i class="fa-music fa"></i><span
									class="font-text">无损音乐</span></a>
								<ul class="sub-menu" style="display: none;">
									<li id="menu-item-6070"
										class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-has-children menu-item-6070"><a
										title="经典歌曲专辑下载|无损音乐合集打包下载"
										href="http://www.1mayi.com/high-quality-music/zhuanji-heji/"
										class="sf-with-ul">专辑合集</a>
										<ul class="sub-menu" style="display: none;">
											<li id="menu-item-3937"
												class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-3937"><a
												title="周杰伦jay所有音乐歌曲合集专辑下载"
												href="http://www.1mayi.com/high-quality-music/zhuanji-heji/jay-music-download/">周杰伦专辑</a></li>
											<li id="menu-item-3938"
												class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-3938"><a
												title="张国荣音乐歌曲合集专辑下载"
												href="http://www.1mayi.com/high-quality-music/zhuanji-heji/zhangguorong-music-download/">张国荣专辑</a></li>
											<li id="menu-item-3936"
												class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-3936"><a
												title="刘若英音乐歌曲合集专辑下载"
												href="http://www.1mayi.com/high-quality-music/zhuanji-heji/liuruoying-music-download/">刘若英专辑</a></li>
											<li id="menu-item-3935"
												class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-3935"><a
												title="刘德华音乐歌曲合集专辑下载"
												href="http://www.1mayi.com/high-quality-music/zhuanji-heji/andy-lau-album-download/">刘德华专辑</a></li>
											<li id="menu-item-7109"
												class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-7109"><a
												title="班得瑞音乐合集歌曲打包专辑下载"
												href="http://www.1mayi.com/high-quality-music/zhuanji-heji/zhuanji-bandari/">班得瑞专辑</a></li>
											<li id="menu-item-7110"
												class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-7110"><a
												title="神秘园音乐合集歌曲打包专辑下载"
												href="http://www.1mayi.com/high-quality-music/zhuanji-heji/zhuanji-shenmiyuan/">神秘园专辑</a></li>
											<li id="menu-item-3941"
												class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-3941"><a
												title="齐秦音乐歌曲合集专辑下载"
												href="http://www.1mayi.com/high-quality-music/zhuanji-heji/qiqin-zhuanji-download/">齐秦专辑</a></li>
										</ul></li>
									<li id="menu-item-3939"
										class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-3939"><a
										title="高品质无损音乐经典歌曲音乐下载"
										href="http://www.1mayi.com/high-quality-music/singles/">经典歌曲</a></li>
									<li id="menu-item-3940"
										class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-3940"><a
										title="试音天碟无损音乐歌曲合集打包专辑下载"
										href="http://www.1mayi.com/high-quality-music/auditiondisk-download/">试音天碟</a></li>
								</ul></li>
							<li id="menu-item-3924"
								class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-has-children menu-item-3924"><a
								title="个人喜欢的经典电影下载分享"
								href="http://www.1mayi.com/classic-movies/" class="sf-with-ul"><i
									class="fa-film fa"></i><span class="font-text">经典电影</span></a>
								<ul class="sub-menu" style="display: none;">
									<li id="menu-item-3926"
										class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-3926"><a
										title="个人喜欢的经典动作电影下载分享"
										href="http://www.1mayi.com/classic-movies/action-movies/">动作电影</a></li>
									<li id="menu-item-3925"
										class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-3925"><a
										title="个人喜欢的经典剧情电影下载分享"
										href="http://www.1mayi.com/classic-movies/plot-film/">剧情电影</a></li>
									<li id="menu-item-3927"
										class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-3927"><a
										title="个人喜欢的经典动漫电影下载分享"
										href="http://www.1mayi.com/classic-movies/animation-film/">动漫电影</a></li>
									<li id="menu-item-3928"
										class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-3928"><a
										title="个人喜欢的经典励志电影下载分享"
										href="http://www.1mayi.com/classic-movies/inspirational-films/">励志电影</a></li>
									<li id="menu-item-3929"
										class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-3929"><a
										title="个人喜欢的经典喜剧电影下载分享"
										href="http://www.1mayi.com/classic-movies/funny-movies/">喜剧电影</a></li>
									<li id="menu-item-3930"
										class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-3930"><a
										title="个人喜欢的经典战争电影下载分享"
										href="http://www.1mayi.com/classic-movies/war-films/">战争电影</a></li>
									<li id="menu-item-3931"
										class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-3931"><a
										title="个人喜欢的经典爱情电影下载分享"
										href="http://www.1mayi.com/classic-movies/love-movies/">爱情电影</a></li>
									<li id="menu-item-3932"
										class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-3932"><a
										title="个人喜欢的经典科幻电影下载分享"
										href="http://www.1mayi.com/classic-movies/science-fiction-movies/">科幻电影</a></li>
									<li id="menu-item-3933"
										class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-3933"><a
										title="个人喜欢的经典魔幻电影下载分享"
										href="http://www.1mayi.com/classic-movies/magic-films/">魔幻电影</a></li>
								</ul></li>
							<li id="menu-item-1266"
								class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-has-children menu-item-1266"><a
								title="wordpress个人博客网站建站的技巧及性能优化"
								href="http://www.1mayi.com/wordpress/" class="sf-with-ul"><i
									class="fa-file-word-o fa"></i><span class="font-text">wordpress</span></a>
								<ul class="sub-menu" style="display: none;">
									<li id="menu-item-1269"
										class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-1269"><a
										title="wordpress个人博客网站建站的技巧"
										href="http://www.1mayi.com/wordpress/wordpress-jiqiao/">wordpress技巧</a></li>
									<li id="menu-item-3811"
										class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-3811"><a
										title="实用的wordpress插件分享|安装教程"
										href="http://www.1mayi.com/wordpress/wordpress-plug-in/">wordpress插件</a></li>
									<li id="menu-item-1268"
										class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-1268"><a
										title="经典好用的wordpress主题分享|修改技巧"
										href="http://www.1mayi.com/wordpress/wordpress-zhuti/">wordpress主题</a></li>
									<li id="menu-item-1267"
										class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-1267"><a
										title="wordpress个人博客网站SEO技巧"
										href="http://www.1mayi.com/wordpress/wordpress-seo/">wordpress
											SEO</a></li>
								</ul></li>
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