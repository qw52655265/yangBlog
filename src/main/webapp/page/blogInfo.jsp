<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%-- 
	杨小龙   2016-08-03 博客详细
--%>
<!DOCTYPE html>
<html>
<head>
	<title>${info.title }</title>
	<meta charset="utf-8">
	<meta name="description" content="${requestScope.Article.description }"/>
	<meta name="keywords" content="${requestScope.Article.articleTypeName }">
	<meta name="viewport" content="width=device-width,initail-scale=1.0,maximum-scale=1.0,user-scalable=no">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="HandheldFriendly" content="true">
	
	<link rel="stylesheet" href="<%=path %>/font-awesome-4.3.0/css/font-awesome.css">
	<link rel="stylesheet" href="<%=path %>/css/base.css">
	<link rel="stylesheet" href="<%=path %>/css/index.css">
	<link rel="stylesheet" href="<%=path %>/css/animate.css">
	<link rel="stylesheet" href="<%=path %>/css/animate.css">
	<link rel="stylesheet" href="<%=path %>/css/blogInfo.css">

	<script type="text/javascript" src="<%=path %>/js/admin/jquery.js"></script>
	<script type="text/javascript" src="<%=path %>/quake-slider/js/jquery-migrate-1.2.1.js"></script>
	<script type="text/javascript" src="<%=path %>/js/common.js"></script>
	<!--[if lt IE 9]>
	<script src="js/modernizr.js"></script>
	<![endif]-->
	<!-- 返回顶部调用 begin -->
<!-- 	<script type="text/javascript" src="js/up/jquery.js"></script> -->
<!-- 	<script type="text/javascript" src="js/up/js.js"></script> -->
	<!-- 返回顶部调用 end-->
</head>
<body>
	<input id="index" type="hidden" value="1"/>
	<div class="WB_miniblog" style="">
	<!-- 头部 -->
	<jsp:include page="header1.jsp" />
	<!-- 头部 end -->
	<div id="page">
	<article>
		<div class="l_box f_l">
	  
	  		<!-- 博文详情 -->
			<div class="topnews">
				<div class="article_info">
					<a href="<%=path%>/index.do"><i class="fa fa-home"></i></a> >
					<a href="<%=path %>/getBlogList/all/all.do" >文章</a> > 
					<span class="articleTitle">${info.title }</span>
				</div>
				
				<div class="article_text">
					<div class="articleInfo_title articleTitle">${info.title }</div>
					<div class="articleInfo_info">
						<span id="ArticleTypeName"><i class="fa fa-bookmark-o"></i> ${info.typeName }</span>
						<span id="Author"><i class="fa fa-user"></i> ${info.author }</span>
						<span id="LastDate"><i class="fa fa-clock-o"></i> ${info.createdate }</span>
						<span id="ClickNum"><i class="fa fa-eye"></i> ${info.hitcount }</span>
						<span id="Pingl"><i class="fa fa-comments-o"></i> ${info.commentcount }条评论</span>
					</div>
<!-- 					<div class="loading" align="center"><img alt="" src="images/loading.gif"><span>努力加载中......</span></div> -->
					<div class="articleInfo_content">
					${info.content }
					</div>
					<div id="TagName">标签：</div>
					<div class="articleInfo_next">
						<c:choose>
							<c:when test="${prev.result == '0' }">
								<span class="articleInfo_next0">上一篇：<span id="prevArticle"><span style="color:gray">无数据</span></span></span>
							</c:when>
							<c:otherwise>
								<span class="articleInfo_next0">上一篇：<span id="prevArticle"><a href="<%=path%>/getBlogInfo/${prev.id}.do">${prev.title }</a></span></span>
							</c:otherwise>
						</c:choose>
						
						<c:choose>
							<c:when test="${next.result == '0' }">
								<span class="articleInfo_next1">下一篇：<span id="nextArticle"><span style="color:gray">无数据</span></span></span>
							</c:when>
							<c:otherwise>
								<span class="articleInfo_next1">下一篇：<span id="nextArticle"><a href="<%=path%>/getBlogInfo/${next.id}.do">${next.title }</a></span></span>
							</c:otherwise>
						</c:choose>
					</div>
					<!-- 多说评论框 start -->
					<div class="ds-thread" data-thread-key="" data-title="${info.title }" data-url="<%=path%>/getBlogInfo/${info.id }.do"></div>
					<!-- 多说评论框 end -->
					<!-- 多说公共JS代码 start (一个网页只需插入一次) -->
					<script type="text/javascript">
					var duoshuoQuery = {short_name:"yangblog"};
						(function() {
							var ds = document.createElement('script');
							ds.type = 'text/javascript';ds.async = true;
							ds.src = (document.location.protocol == 'https:' ? 'https:' : 'http:') + '//static.duoshuo.com/embed.js';
							ds.charset = 'UTF-8';
							(document.getElementsByTagName('head')[0] 
							 || document.getElementsByTagName('body')[0]).appendChild(ds);
						})();
						</script>
					<!-- 多说公共JS代码 end -->
				</div>
			</div>
	    	<!-- 博文详情 end -->
		</div>
		
		<!-- 右侧侧边栏 -->
		<div class="r_box f_r">
			<!-- 排行榜 -->
			<jsp:include page="ranking.jsp" />
			<!-- 排行榜end -->
		</div>
		<!-- 右侧侧边栏 end --> 
	</article>
	</div>
<%----%> 	<jsp:include page="footer.jsp" /> 
	</div>
	
</body>
</html>