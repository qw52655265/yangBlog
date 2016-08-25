<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%-- 
	杨小龙   2016-07-29 相册管理
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
		<script type="text/javascript" src="<%=path %>/js/admin/jquery.js"></script>
		<script type="text/javascript" src="<%=path %>/bootstrap-3.3.5-dist/js/bootstrap.js"></script>
		<script type="text/javascript" src="<%=path %>/js/admin/showBo.js"></script>
		<script type="text/javascript" src="<%=path %>/js/admin/common.js"></script>
 		<script type="text/javascript" src="<%=path %>/js/admin/PhotoList.js"></script>
		<title>相册管理</title>
	</head>
	<body>
		<div class="container-fluid">
	    	<ol class="breadcrumb">
			  <li><a href="<%=path%>/admin/right.do"><i class="fa fa-home"></i> 首页</a></li>
			  <li class="active">相册管理</li>
			</ol>
			<div class="article-body">
				<div class="panel panel-default">
					<div class="panel-heading">
						<h5 class="panel-title">相册列表</h5>
					</div>
					<div class="panel-body">
						<div class="btn-group">
							<a href="javascript:void(0)" class="btn btn-default" onclick="selectAll()"><i class="fa fa-list-ol"></i> 全选</a>
							<a href="javascript:void(0)" onclick="clearPhoto()" class="btn btn-default" data-toggle="modal" data-target="#addPhoto"><i class="fa fa-plus-square"></i> 添加相册</a>
							<a href="javascript:void(0)" onclick="deletePhotoBatch()" class="btn btn-default"><i class="fa fa-trash-o"></i> 批量删除</a>
						</div>
					</div>
					<div id="photoList">
						<c:choose>
							<c:when test="${empty list.row }"></c:when>
							<c:otherwise>
								<c:forEach items="${list.row }" var="c" varStatus="v">
									<div class="photoListItem">
										<div class="img-thumbnail photoListImg" >
											<div style="height:150px;overflow: hidden;" >
												<a href="<%=path%>/admin/photo/getPhotoInfoList.do?parentId=${c.photoId}">
													<img alt="" src="<%=path %>/${c.url}"  style="width:200px;position: relative;"/>
												</a>
											</div>
										</div>
										<div class="photoListItemName"><a href="<%=path%>/admin/photo/getPhotoInfoList.do?parentId=${c.parentId}">${c.name }</a></div>
										<i class="fa fa-square-o photoCheck" value="${c.photoId }" data-toggle="tooltip" data-placement="top" title="选择"></i>
										<i class="fa fa-edit photoEdit" data-toggle="modal" data-placement="top" title="编辑" onclick="editPhoto('${c.photoId}','${c.name }')" data-target="#addPhoto"></i>
										<i class="fa fa-close photoDelete" data-toggle="tooltip" data-placement="top" title="删除" onclick="deletePhoto('${c.photoId}')"></i>
									</div>
								</c:forEach>
							</c:otherwise>
						</c:choose>
					</div>
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
				  								href="<%=path %>/admin/photo/getPhotoList.do"
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
					  								href="<%=path %>/admin/photo/getPhotoList.do?pageNum=${s}"
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
				  								href="<%=path %>/admin/photo/getPhotoList.do?pageNum=${list.row[0].pageCount }"
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
		<!-- 添加相册静态框 -->
		<div class="modal fade" id="addPhoto" tabindex="-1" >
			<div class="modal-dialog">
				<div class="modal-content">
					<form id="saveForm" action="" method="post" autocomplete="off">
					<div class="modal-header">
						<input id="photoId" name="photoId" type="hidden" />
						<button class="close" type="button" data-dismiss="modal"><span aria-hidden="true">&times;</span></button>
						<h4 class="modal-title"><i class="fa fa-tasks green"></i> 添加相册</h4>
					</div>
					<div class="modal-body">
						<table>
							<tr>
								<td class="tdleft">相册名：<span class="required">*</span></td>
								<td class="tdright">
<!-- 									<input id="photoId" name="photoId" type="hidden"/> -->
									<input id="name" name="name" type="text" class="form-control" placeholder="唯一相册名"/>
								</td>
							</tr>
						</table>
						
					</div>
					</form>
					<div class="modal-footer">
						<button class="btn btn-default" data-dismiss="modal">关闭</button>
						<button class="btn btn-success" onclick="savePhoto()">保存</button>
					</div>
				</div>
			</div>
		</div>
	</body>
</html>
