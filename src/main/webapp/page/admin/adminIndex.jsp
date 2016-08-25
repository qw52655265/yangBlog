<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%-- 
	杨小龙   2016-06-23  管理员首页
--%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Yang个人博客后台管理</title>
</head>
<frameset rows="53,*,30" cols="*" border="0" framespacing="0" noresize="noresize">
	<frame name="header" src="<%=path %>/admin/header.do"/>
	<frameset rows="*" cols="200,*">
		<frame name="left" src="<%=path %>/admin/left.do" border="0" style="background: rgba(142,142,142,0.1);border-right: 1px solid #1abc9c;"/>
		<frame name="right" src="<%=path %>/admin/right.do" border="0" />
	</frameset>
	<frame name="bottom" src="<%=path %>/admin/bottom.do"/>
</frameset>
<body></body>

</html>
