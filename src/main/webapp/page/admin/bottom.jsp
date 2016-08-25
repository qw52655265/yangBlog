<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%-- 
	杨小龙   2016-06-23  底部
--%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width,initial-scale=1" />
	<link rel="stylesheet" href="<%=path %>/bootstrap-3.3.5-dist/css/bootstrap.css">
	<link rel="stylesheet" href="<%=path %>/font-awesome-4.3.0/css/font-awesome.css">
	<link rel="stylesheet" href="<%=path %>/css/admin/index.css">
	<title></title>
</head>
<body>
	<div class="container-fluid">
    	<div class="row">
			<div class="col-md-12 bottom-content" >V 1.0</div>
		</div>
	</div>
</body>

</html>
