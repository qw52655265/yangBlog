<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%-- 
	杨小龙   2016-06-23  管理员头部
--%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width,initial-scale=1" />
    <link rel="stylesheet" href="<%=path %>/Flat-UI-master/dist/css/vendor/bootstrap.min.css">
    <link rel="stylesheet" href="<%=path %>/Flat-UI-master/dist/css/flat-ui.css">
	<link rel="stylesheet" href="<%=path %>/font-awesome-4.3.0/css/font-awesome.css">
	<link rel="stylesheet" href="<%=path %>/css/admin/header.css"/>
	<script type="text/javascript" src="<%=path %>/js/admin/jquery.js"></script>
	<script type="text/javascript" src="<%=path %>/Flat-UI-master/dist/js/flat-ui.min.js"></script>
	<script type="text/javascript" src="<%=path %>/Flat-UI-master/dist/js/application.js"></script>
	<script type="text/javascript" src="<%=path %>/js/admin/common.js"></script>
	<script type="text/javascript" src="<%=path %>/js/admin/index.js"></script>
	<script type="text/javascript" src="<%=path %>/js/admin/header.js"></script>
	<title></title>
</head>
<body>
   	<nav class="navbar navbar-inverse navbar-static-top navbar-me">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-collapse">
				<span class="sr-only">Toggle</span>
			</button>
			<a class="navbar-brand" href="javascript:void(0)"><i class="fa fa-skyatlas blod"></i></a>
		</div>
		<div class="collapse navbar-collapse" id="navbar-collapse">
			<ul class="nav navbar-nav">
				<li class="active"><a href="<%=path %>/admin/right.do" target="right"><i class="fa fa-home"></i> 首页</a></li>
				<li><a href="javascript:void(0)" target="_blank"><i class="fa fa-desktop"></i> 网站首页</a></li>
				<li><a href="javascript:void(0)" target="right"><i class="fa fa-child"></i> 管理员</a></li>
				<li><a href="javascript:void(0)" target="right"><i class="fa fa-gear"></i> 修改密码</a></li>
				<li><a href="javascript:void(0)" onclick="logout()"><i class="fa fa-unlock"></i> 退出</a></li>
			</ul>
			<ul class="nav navbar-nab navbar-right">
				<li><p class="navbar-text"><i class="fa fa-pied-piper-alt"></i> 欢迎您: ${user.userName } !</p></li>
			</ul>
		</div>
	</nav>
</body>

</html>
