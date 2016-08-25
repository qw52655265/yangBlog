<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%-- 
	杨小龙   2016-06-24  博文编辑
--%>
<!DOCTYPE html>
<html>
	<head>
		<base href="<%=basePath%>" />
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width,initial-scale=1" />
		<link type="text/css" rel="stylesheet" href="<%=path %>/bootstrap-3.3.5-dist/css/bootstrap.css">
		<link type="text/css" rel="stylesheet" href="<%=path %>/font-awesome-4.3.0/css/font-awesome.css">
		<link type="text/css" rel="stylesheet" href="<%=path %>/css/admin/showBo.css" />
		<link type="text/css" rel="stylesheet" href="<%=path %>/css/admin/article.css">
		<link type="text/css" rel="stylesheet" href="<%=path %>/plupload-2.1.9/js/jquery.plupload.queue/css/jquery.plupload.queue.css" media="screen" />
		<script type="text/javascript" src="<%=path %>/js/admin/jquery.js"></script>
	    <script type="text/javascript" src="<%=path %>/ueditor/ueditor.config.js" charset="utf-8"></script>
	    <script type="text/javascript" src="<%=path %>/ueditor/ueditor.all.js" charset="utf-8"> </script>
	    <script type="text/javascript" src="<%=path %>/ueditor/lang/zh-cn/zh-cn.js" charset="utf-8"></script>
		<script type="text/javascript" src="<%=path %>/bootstrap-3.3.5-dist/js/bootstrap.js"></script>
		<script type="text/javascript" src="<%=path %>/js/admin/showBo.js"></script>
		<script type="text/javascript" src="<%=path %>/js/admin/common.js"></script>
		<script type="text/javascript" src="<%=path %>/plupload-2.1.9/js/plupload.full.min.js"></script>
		<script type="text/javascript" src="<%=path %>/plupload-2.1.9/js/i18n/zh_CN.js"></script>
		<script type="text/javascript" src="<%=path %>/plupload-2.1.9/js/jquery.plupload.queue/jquery.plupload.queue.js"></script>
		<script type="text/javascript" src="<%=path %>/js/upload.js"></script>
		<script type="text/javascript" src="<%=path %>/js/admin/blogAdd.js"></script>
		<title>博文编辑</title>
	</head>
	<body>
		<input id="clickNum" type="hidden" value="0"/>
		<input id="articleId" type="hidden" value="<%=request.getParameter("articleId")%>"/>
		<div class="container-fluid">
	    	<ol class="breadcrumb">
			  <li><a href="<%=path%>/admin/right.do"><i class="fa fa-home"></i> 首页</a></li>
			  <li><a href="<%=path%>/admin/blog/getBlogList.do">博文管理</a></li>
			  <li class="active">博文编辑</li>
			</ol>
			<div class="article-body">
				<div class="panel panel-default">
					<div class="panel-heading">
						<h5 class="panel-title">基本信息</h5>
					</div>
					<div class="panel-body">
						<table class="article-table">
							<tr>
								<td>所属类别：<span class="required">*</span></td>
								<td>
									<div class="input-group-xs article-type">
										<select class="form-control" id="titleSelect">
											<option value="">请选择</option>
											<c:choose>
												<c:when test="${empty types }"></c:when>
												<c:otherwise>
													<c:forEach items="${types}" var="c">
														<option value="${c.itemCode }"
															<c:choose>
																<c:when test="${c.itemCode==info.typeid }"> selected="selected"</c:when>
																<c:otherwise></c:otherwise>
															</c:choose>
														>${c.itemName }</option>
													</c:forEach>
												</c:otherwise>
											</c:choose>
										</select>
									</div>
								</td>
							</tr>
							<tr>
								<td>标签：</td>
								<td>
									<div class="article-tag">
										<c:choose>
											<c:when test="${empty signTag }"></c:when>
											<c:otherwise>
												<c:forEach items="${signTag }" var="c" varStatus="v">
													<input id="tag${v.index }" class="tagCheck" name="tag" type="checkbox" value="${c.itemCode }" 
													 	<c:choose>
															<c:when test="${empty info.signTag }"></c:when>
															<c:otherwise>
																<c:forEach items="${fn:split(info.signTag, ',') }" var="cc" begin="0" end="${fn:length(fn:split(info.signTag,','))}" varStatus="vv">
																	<c:choose>
																		<c:when test="${cc==c.itemCode}"> checked="checked"</c:when>
																		<c:otherwise></c:otherwise>
																	</c:choose>
																</c:forEach>
															</c:otherwise>
														</c:choose>
													 />
													<label for="tag${v.index }">${c.itemName }</label>
												</c:forEach>
											</c:otherwise>
										</c:choose>
									</div>
								</td>
							</tr>
							<tr>
<!-- 								<td>显示状态：<span class="required">*</span></td> -->
<!-- 								<td> -->
<!-- 									<div id="showType" class="btn-group btn-group-sm"> -->
<!-- 									</div> -->
<!-- 								</td> -->
<!-- 							</tr> -->
<!-- 							<tr> -->
<!-- 								<td>推荐类型：<span class="required">*</span></td> -->
<!-- 								<td> -->
<!-- 									<div id="recommendType" class="btn-group btn-group-sm"> -->
<!-- 									</div> -->
<!-- 								</td> -->
<!-- 							</tr> -->
<!-- 							<tr> -->
<!-- 								<td>发布时间：</td> -->
<!-- 								<td> -->
<!-- 									<div id="lastTime"><input type="text" class="form-control" disabled="disabled"/></div> -->
<!-- 								</td> -->
<!-- 							</tr> -->
						</table>
					</div>
				</div>
				<!--详细信息-->
				<div class="panel panel-default">
					<div class="panel-heading">
						<h5 class="panel-title">详细描述</h5>
					</div>
					<div class="panel-body">
						<table class="article-table">
							<tr>
								<td width="100px">文章标题：<span class="required">*</span></td>
								<td><input id="titleInput" type="text" class="form-control" value="${info.title }"/></td>
							</tr>
<!-- 							<tr> -->
<!-- 								<td>文章作者：</td> -->
<!-- 								<td><input id="author" type="text" class="form-control" disabled="disabled" value="${sessionScope.UserName}"/></td> -->
<!-- 							</tr> -->
<!-- 							<tr> -->
<!-- 								<td>文章来源：<span class="required">*</span></td> -->
<!-- 								<td><input id="source" type="text" class="form-control"/></td> -->
<!-- 							</tr> -->
							<tr>
								<td>略缩图：　<span class="required">*</span></td>
								<td>
									<a id="img-upload" href="javascript:void(0)" class="btn btn-default btn-xs" onclick="initUploader()" data-toggle="modal" data-target="#uploadFile"><i class="fa fa-cloud-upload"></i> 上传</a>
									<div id="fileName" style="margin-top:5px;">
 										<c:choose>
											<c:when test="${empty info.img }"></c:when>
											<c:otherwise>
												<img width="100px" src="<%=basePath %>${info.img}" mysrc="${info.img }" />
											</c:otherwise>
										</c:choose>
									</div>
								</td>
							</tr>
							<tr>
								<td>内容摘要：</td>
								<td><input id="summaryInput" type="text" class="form-control" placeholder="如不填写则自动截取内容描述的前70个字符！" value="${info.summary }"/></td>
							</tr>
							<tr>
								<td>内容描述：<span class="required">*</span></td>
								<td>
									<!-- 加载编辑器的容器 -->
								    <script id="myEditor" name="content" type="text/plain" style="width:100%;height:340px;">${info.content}</script>
					    		</td>
							</tr>
						</table>
					</div>
				</div>
				<div style="text-align: center;">
					<a href="javascript:void(0)" id="saveEditBtn" class="btn btn-success">保存提交</a>
				</div>
				<form action="" method="post" id="editBlogForm" autocomplete="off">
					<input name="id" id="id" type="hidden" value="${info.id }" />
					<input name="typeid" id="typeid" type="hidden" />
					<input name="signTag" id="signTag" type="hidden" />
					<input name="signTagName" id="signTagName" type="hidden" />
					<input name="title" id="title" type="hidden" />
					<input name="summary" id="summary" type="hidden" />
					<input name="content" id="content" type="hidden" />
					<input name="img" id="img" type="hidden" />
				</form>
			</div>
		</div>
	    <!-- 实例化编辑器 -->
	    <!-- 图片剪切层 -->
		<div class="modal fade" id="uploadFile" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog modal-xs">
				<div class="modal-content">
					<div class="modal-header">
						<span>上传图片</span>
						<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
					</div>
					<div class="modal-body">
						<p class="help-block">建议将图片比例控制在5（宽）：3（高）</p>
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
