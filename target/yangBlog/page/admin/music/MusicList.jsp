<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%-- 
	杨小龙   2016-07-29  音乐管理
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
		<script type="text/javascript" src="<%=path %>/js/uploadMusic.js"></script>
		<script type="text/javascript" src="<%=path %>/js/admin/MusicList.js"></script>
		<title>音乐管理</title>
	</head>
	<body>
		<div class="container-fluid">
	    	<ol class="breadcrumb">
			  <li><a href="<%=path%>/admin/right.do"><i class="fa fa-home"></i> 首页</a></li>
			  <li class="active">音乐管理</li>
			</ol>
			<div class="article-body">
				<div class="panel panel-default">
					<div class="panel-heading">
						<h5 class="panel-title">音乐列表</h5>
					</div>
					<div class="panel-body">
						<div class="btn-group">
							<a href="javascript:void(0)" class="btn btn-default" onclick="selectAll()"><i class="fa fa-list-ol"></i> 全选</a>
							<a href="javascript:void(0)" class="btn btn-default" data-toggle="modal" data-target="#uploadFile"><i class="fa fa-plus-square"></i> 添加音乐</a>
							<a href="javascript:void(0)" onclick="deleteMusicBatch()" class="btn btn-default"><i class="fa fa-trash-o"></i> 批量删除</a>
						</div>
					</div>
					<table style="text-decoration: none; " id="articleList" class="table">
						<tr>
							<th class="left">选择</th>
							<th>音乐名</th>
							<th>大小</th>
							<th>时间</th>
							<th>操作</th>
						</tr>
						
						<c:choose>
							<c:when test="${empty list.row }">
								<tr><td class="left" style="color:#FF0000;" colspan="5"><div class="data_info"><i class="fa fa-frown-o"></i> 无数据</div></td></tr>
							</c:when>
							<c:otherwise>
								<c:forEach items="${list.row }" var="c" varStatus="v">
									<tr>
										<td class="left">
											<input name="category" value="${c.musicId }" type="checkbox">
										</td>
										<td>${c.name }</td>
										<td>${c.size }M</td>
										<td>${c.addDate }</td>
										<td>
											<div class="btn-group btn-group-xs">
												<a href="javascript:void(0)" onclick="deleteMusic('${c.musicId}')" class="btn btn-danger">
													<i class="fa fa-trash-o"></i> 
													删除
												</a>
											</div>
										</td>
									</tr>
								</c:forEach>
							</c:otherwise>
						</c:choose>
						
					</table>
				</div>
				<nav class="pagination-nav">
				  	<ul class="pagination">
				  		<c:choose>
				  			<c:when test="${empty list.row }">
				  				<li class="disabled"><a href="#" aria-label="Previous"><span aria-hidden="true">&laquo;</span></a></li>
						    	<li class="active"><a href="javascript:void(0)">1</a></li>
						    	<li class="disabled"><a href="javascript:void(0)" aria-label="Next"><span aria-hidden="true">&raquo;</span></a></li>
				  			</c:when>
				  			<c:otherwise>
		  						<li 
		  							<c:choose>
			  							<c:when test="${1==list.row[0].currentPage  }">
			  								class="disabled"
			  							</c:when>
			  							<c:otherwise></c:otherwise>
			  						</c:choose>
		  						>
			  						<a 
			  							<c:choose>
				  							<c:when test="${1==list.row[0].currentPage  }">
				  								href="javascript:void(0)"
				  							</c:when>
				  							<c:otherwise>
				  								href="<%=path %>/admin/music/getMusicList.do"
				  							</c:otherwise>
				  						</c:choose>
			  						 aria-label="Previous">
			  						 	<span aria-hidden="true">&laquo;</span>
			  						 </a>
			  					</li>
				  				<c:forEach var="s" begin="1" end="${list.row[0].pageCount }">
				  					<li 
				  						<c:choose>
				  							<c:when test="${s==list.row[0].currentPage  }">
				  								class="active"
				  							</c:when>
				  							<c:otherwise></c:otherwise>
				  						</c:choose>
				  					>
					  					<a 
					  						<c:choose>
					  							<c:when test="${s==list.row[0].currentPage  }">
					  								href="javascript:void(0)"
					  							</c:when>
					  							<c:otherwise>
					  								href="<%=path %>/admin/music/getMusicList.do?pageNum=${s}"
					  							</c:otherwise>
					  						</c:choose>
					  					>${s }</a>
					  				</li>
				  				</c:forEach>
			  					<li 
		  							<c:choose>
			  							<c:when test="${list.row[0].pageCount==list.row[0].currentPage  }">
			  								class="disabled"
			  							</c:when>
			  							<c:otherwise></c:otherwise>
			  						</c:choose>
		  						>
			  						<a 
			  							<c:choose>
				  							<c:when test="${list.row[0].pageCount==list.row[0].currentPage  }">
				  								href="javascript:void(0)"
				  							</c:when>
				  							<c:otherwise>
				  								href="<%=path %>/admin/music/getMusicList.do?pageNum=${list.row[0].pageCount }"
				  							</c:otherwise>
				  						</c:choose>
			  						 aria-label="Next">
			  						 	<span aria-hidden="true">&raquo;</span>
			  						 </a>
			  					</li>
				  			</c:otherwise>
				  		</c:choose>
				  	</ul>
				  	<div></div>
				</nav>
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
