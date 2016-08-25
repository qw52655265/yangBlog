<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8" />
	<title>yang </title>
	<meta name="baidu-site-verification" content="sg90BcKL4I" />
	<meta name="keywords" content="yang,前端开发,个人博客,web开发" />
	<meta name="description" content="yang博客是以web前端技术为主旨、记录学习历程的个人独立博客，致力于分享前端技术。" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
	<meta name="HandheldFriendly" content="true" />
	
	<link rel="stylesheet" type="text/css" href="<%=path %>/bootstrap/css/bootstrap.css" />
	<link rel="stylesheet" type="text/css" href="<%=path %>/bootstrap/css/bootstrap-theme.css" />
	<link rel="stylesheet" type="text/css" href="<%=path %>/css/a1.css" />
	<link rel="stylesheet" type="text/css" href="<%=path %>/css/a2.css" />
	
	<script type="text/javascript" src="<%=path %>/js/jquery-2.2.4.js"></script>
	
</head>
<body>
	<!-- 页头 -->	
	<jsp:include page="page/header.jsp"></jsp:include>
	<!-- 页头 end-->	
	<!-- 主页 -->
	<div class="container" style="margin-top:50px;">
		<div style="display:block;width:65%;float:left;">
			<div style="float:right;width:100%;">
				<!-- 轮播 -->
				<jsp:include page="slicebox/slicebox.jsp"></jsp:include>
			</div>
			
			<div style="margin-top:-50px;float:right;width:100%;">
				<div></div>
				<div class="wrapper">
					<!-- 文章列表 -->
					<jsp:include page="page/article.jsp"></jsp:include>
				</div>
			</div>
		</div>
		<div style="float:right;width:35%;display:block;margin-top:10px;">
			<jsp:include page="page/slidebar.jsp"></jsp:include>
		</div>
	</div>
	<!-- 主页end -->
	<!-- 页尾 -->
	<jsp:include page="page/footer.jsp"></jsp:include>
	<!-- 页尾 end-->
</body>
</html>

