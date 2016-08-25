<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%-- 
	杨小龙   2016-06-23  管理员左侧导航栏
--%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width,initial-scale=1" />
    <link rel="stylesheet" href="<%=path %>/Flat-UI-master/dist/css/vendor/bootstrap.min.css">
    <link rel="stylesheet" href="<%=path %>/Flat-UI-master/dist/css/flat-ui.css">
	<link rel="stylesheet" href="<%=path %>/font-awesome-4.3.0/css/font-awesome.css">
	<link rel="stylesheet" href="<%=path %>/css/admin/index.css">
	<script type="text/javascript" src="<%=path %>/js/admin/jquery.js"></script>
	<script type="text/javascript" src="<%=path %>/Flat-UI-master/dist/js/flat-ui.min.js"></script>
	<script type="text/javascript" src="<%=path %>/Flat-UI-master/dist/js/application.js"></script>
	<title></title>
	<style>
		body{background:rgba(142,142,142,0.1);}
	</style>
</head>
<body>
	<div class="container-fluid">
    	<div class="row">
			<!-- 左侧导航 -->
    		<div class="col-md-2 col-xs-0 left-menu" >
    			<ul><span style="font-size: 16px;font-weight: bold;"><i class="fa fa-list"></i> 菜单</span></ul>
    			<ul><i class="fa fa-yelp"></i> 常用操作
    				<li><a href="<%=path %>/admin/blog/getBlogList.do" target="right"><i class="fa fa-paper-plane"></i> 博文管理</a></li>
    				<li><a href="<%=path %>/admin/dict/getDictionaryList.do" target="right"><i class="fa fa-tasks"></i> 分类管理</a></li>
<!--     				<li><a href="javascript:void(0)" target="right"><i class="fa fa-drupal"></i> 留言管理</a></li> -->
    				<li><a href="<%=path %>/admin/music/getMusicList.do" target="right"><i class="fa fa-music"></i> 音乐管理</a></li>
    				<li><a href="<%=path %>/admin/photo/getPhotoList.do" target="right"><i class="fa fa-image"></i> 相册管理</a></li>
<!--     				<li><a href="javascript:void(0)" target="right"><i class="fa fa-puzzle-piece"></i> 插件管理</a></li> -->
    				<li><a href="<%=path %>/admin/link/getLinkList.do" target="right"><i class="fa fa-link"></i> 友情链接</a></li>
    			</ul>
    			<ul><i class="fa fa-gears"></i> 系统管理
    				<li><a href="javascript:void(0)" target="right"><i class="fa fa-wrench"></i> SEO</a></li>
    			</ul>
    		</div>
		</div>
	</div>
</body>

</html>
