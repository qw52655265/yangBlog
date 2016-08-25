<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%-- 
	杨小龙   2016-06-23  右侧内容
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
	<script type="text/javascript" src="<%=path %>/js/admin/common.js"></script>
	<title></title>
</head>
<body>
	<div class="container-fluid">
    	<div class="row">
			<!-- 右侧内容 -->
    		<div class="right-content" >
    			<div class="right-title">
    				<i class="fa fa-volume-up"></i> <span id="notice" class="label label-success"></span>
    			</div>
    			<div class="right-work">
    				<div class="right-shortcut">
    					<ul><i class="fa fa-angle-double-right"></i> 快捷操作</ul>
    					<ul>
    						<li><a href="javascript:void(0)" target="right"><i class="fa fa-file-code-o"></i> 新增博文</a></li>
    						<li><a href="javascript:void(0)" target="right"><i class="fa fa-sliders"></i> 新增博客分类</a></li>
    						<li><a href="javascript:void(0)"><i class="fa fa-comment"></i> 作品评论</a></li>
    						<li><a href="javascript:void(0)"><i class="fa fa-bullhorn"></i> 发布公告</a></li>
    						<li><a href="javascript:void(0)"><i class="fa fa-retweet"></i> 首页滚动图片</a></li>
    					</ul>
    				</div>
    				<div class="right-baseInfo">
    					<ul><i class="fa fa-angle-double-right"></i> 系统基本信息</ul>
    					<ul>
    						<table>
    							<tr>
    								<td class="tdleft">图片尺寸：</td>
    								<td class="tdright">主页滚动（635*280）、文章图片（200*123）、插件库（620*400）</td>
    							</tr>
    							<tr>
    								<td class="tdleft">操作系统：</td>
    								<td class="tdright" id="SysName">WINNT</td>
    							</tr>
    							<tr>
    								<td class="tdleft">运行环境：</td>
    								<td class="tdright" id="RunEnv">Apache/2.2.21 (Win64) PHP/5.3.10</td>
    							</tr>
    							<tr>
    								<td class="tdleft">版本号：</td>
    								<td class="tdright" id="Version">v-1.0</td>
    							</tr>
    							<tr>
    								<td class="tdleft">上传限制：</td>
    								<td class="tdright" id="UploadSize">2M</td>
    							</tr>
    							<tr>
    								<td class="tdleft">北京时间：</td>
    								<td class="tdright" id="BeijingTime">2015年7月10日 9:10:45</td>
    							</tr>
    							<tr>
    								<td class="tdleft">服务器域名/IP：</td>
    								<td class="tdright" id="SiteName">localhost [ 127.0.0.1 ]</td>
    							</tr>
    							<tr>
    								<td class="tdleft">Host：</td>
    								<td class="tdright" id="Host">127.0.0.1</td>
    							</tr>
    						</table>
    					</ul>
    				</div>
    				<div class="right-help">
    					<ul><i class="fa fa-angle-double-right"></i> 使用帮助</ul>
    					<ul>
    						<li>官方交流地址： <a href="javascript:void(0)"><i class="fa fa-h-square "></i> 帮助信息</a></li>
    					</ul>
    				</div>
    			</div>
    		</div>
		</div>
	</div>
</body>

</html>
