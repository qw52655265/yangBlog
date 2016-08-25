<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%--
	杨小龙   2016-08-01 登录
--%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width,initial-scale=1" />
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<link rel="stylesheet" type="text/css" href="<%=path %>/css/admin/myanimate.css" />
		<link rel="stylesheet" type="text/css" href="<%=path %>/css/admin/login.css">
		<script type="text/javascript" src="<%=path %>/js/admin/jquery.js"></script>
 		<script type="text/javascript" src="<%=path %>/js/admin/common.js"></script>
 		<script type="text/javascript" src="<%=path %>/js/admin/login.js"></script>
		<title>登录</title>
	</head>
	<body>
		<div class="perspective">
			<div class="form_div">
				<div>管理员登录</div>
				<div>
					<i class="fa">&#xe604;</i>
					<input placeholder="Username" type="text" id="userName"/>
					<i class="fa validate">&#xe606;</i>
				</div>
				<div>
					<i class="fa">&#xe605;</i>
					<input placeholder="Password" type="password" id="password"/>
					<i class="fa validate">&#xe606;</i>
				</div>
				<input class="submit_button" type="submit" value="Log In"/>
				<div id="errorInfo" style="color:red;font-size:12px;margin-left:40px" class="animated"></div>
			</div>
			<div class="login_loading">
				<div></div>
				<div>Please wait...</div>
			</div>
		</div>
	</body>
</html>
