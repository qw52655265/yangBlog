<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%-- 
	杨小龙   2016-08-01 相片管理
--%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width,initial-scale=1" />
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<link rel="stylesheet" type="text/css" href="<%=path %>/bootstrap-3.3.5-dist/css/bootstrap.css">
		<link rel="stylesheet" type="text/css" href="<%=path %>/font-awesome-4.3.0/css/font-awesome.css">
		<link rel="stylesheet" type="text/css" href="<%=path %>/css/admin/showBo.css" />
		<link rel="stylesheet" type="text/css" href="<%=path %>/css/admin/article.css">
		<link type="text/css" rel="stylesheet" href="<%=path %>/plupload-2.1.9/js/jquery.plupload.queue/css/jquery.plupload.queue.css" media="screen" />
		<script type="text/javascript" src="<%=path %>/js/admin/jquery.js"></script>
		<script type="text/javascript" src="<%=path %>/bootstrap-3.3.5-dist/js/bootstrap.js"></script>
		<script type="text/javascript" src="<%=path %>/js/admin/showBo.js"></script>
		<script type="text/javascript" src="<%=path %>/js/admin/common.js"></script>
		<script type="text/javascript" src="<%=path %>/plupload-2.1.9/js/plupload.full.min.js"></script>
		<script type="text/javascript" src="<%=path %>/plupload-2.1.9/js/i18n/zh_CN.js"></script>
		<script type="text/javascript" src="<%=path %>/plupload-2.1.9/js/jquery.plupload.queue/jquery.plupload.queue.js"></script>
		<script type="text/javascript" src="<%=path %>/js/uploadPhoto.js"></script>
 		<script type="text/javascript" src="<%=path %>/js/admin/PhotoList.js"></script>
		<title>相片管理</title>
	</head>
	<body>
		<div class="container-fluid">
	    	<ol class="breadcrumb">
			  <li><a href="<%=path%>/admin/right.do"><i class="fa fa-home"></i> 首页</a></li>
			  <li><a href="<%=path%>/admin/photo/getPhotoList.do">相册管理</a></li>
			  <li class="active">相片管理</li>
			</ol>
			<div class="article-body">
				<div class="panel panel-default">
					<div class="panel-heading">
						<h5 class="panel-title">相片列表</h5>
					</div>
					<div class="panel-body">
						<div class="btn-group">
							<a href="javascript:void(0)" class="btn btn-default" onclick="selectAll()"><i class="fa fa-list-ol"></i> 全选</a>
							<a href="javascript:void(0)" class="btn btn-default" data-toggle="modal" data-target="#uploadFile"><i class="fa fa-plus-square"></i> 添加相片</a>
							<a href="javascript:void(0)" onclick="deletePhotoBatch()" class="btn btn-default"><i class="fa fa-trash-o"></i> 批量删除</a>
						</div>
					</div>
					<input type="hidden" id="parentId" value="${parentId }" />
					<div id="photoList">
						<c:choose>
							<c:when test="${empty list.row }"></c:when>
							<c:otherwise>
								<c:forEach items="${list.row }" var="c" varStatus="v">
									<div class="photoListItem">
										<div class="img-thumbnail photoListImg" >
											<div style="height:150px;overflow: hidden;" >
												<a href="javascript:void(0)">
													<img alt="" src="<%=path %>/${c.url}"  style="width:200px;position: relative;"/>
												</a>
											</div>
										</div>
										<div class="photoListItemName"><a href="javascript:void(0)">${c.name }</a></div>
										<i class="fa fa-square-o photoCheck" value="${c.photoId }" data-toggle="tooltip" data-placement="top" title="选择"></i>
										<i class="fa fa-close photoDelete" data-toggle="tooltip" data-placement="top" title="删除" onclick="deletePhoto('${c.photoId}')"></i>
									</div>
								</c:forEach>
							</c:otherwise>
						</c:choose>
					</div>
				</div>
			</div>
		</div>
		<!-- 上传文件静态框 -->
		<div class="modal fade" id="uploadFile" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog modal-xs">
				<div class="modal-content">
					<div class="modal-header">
						<span>上传图片</span>
						<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
					</div>
					<div class="modal-body">
						<p class="help-block">建议文件大小不要超过5M</p>
						<div id="uploader">
							<p>Your browser doesn't have Flash, Silverlight or HTML5 support.</p>
						</div>
					</div>
					<!-- 图片预览 -->
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal" >关闭</button>
					</div>
				</div>
			</div>
		</div>
	</body>
</html>
