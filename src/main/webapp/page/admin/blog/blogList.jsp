<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%-- 
	杨小龙   2016-06-23  博文列表
--%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width,initial-scale=1" />
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<link type="text/css" rel="stylesheet" href="<%=path %>/bootstrap-3.3.5-dist/css/bootstrap.css">
		<link type="text/css" rel="stylesheet" href="<%=path %>/font-awesome-4.3.0/css/font-awesome.css">
		<link type="text/css" rel="stylesheet" href="<%=path %>/css/admin/showBo.css" />
		<link type="text/css" rel="stylesheet" href="<%=path %>/css/admin/article.css">
		<script type="text/javascript" src="<%=path %>/js/admin/jquery.js"></script>
		<script type="text/javascript" src="<%=path %>/bootstrap-3.3.5-dist/js/bootstrap.js"></script>
		<script type="text/javascript" src="<%=path %>/js/admin/common.js"></script>
		<script type="text/javascript" src="<%=path %>/js/admin/showBo.js"></script>
		<script type="text/javascript" src="<%=path %>/js/admin/blogList.js"></script>
		<title></title>
	</head>
	<body>
		<div class="container-fluid">
	    	<ol class="breadcrumb">
			  <li><a href="<%=path%>/admin/right.do"><i class="fa fa-home"></i> 首页</a></li>
			  <li class="active">博文管理</li>
			</ol>
			<div class="article-body">
				<div class="panel panel-default">
					<div class="panel-heading">
						<h5 class="panel-title">博文列表</h5>
					</div>
					<div class="panel-body">
						<div class="btn-group">
							<a href="javascript:void(0)" class="btn btn-default" onclick="selectAll()"><i class="fa fa-list-ol"></i> 全选</a>
							<a href="<%=path %>/admin/blog/toAddBlog.do" class="btn btn-default"><i class="fa fa-plus-square"></i> 添加文章</a>
							<a href="javascript:void(0)" onclick="deleteBlogBatch()" class="btn btn-default"><i class="fa fa-trash-o"></i> 批量删除</a>
						</div>
					</div>
					<table id="articleList" class="table">
						<tr>
							<th width="8%" class="left">选择</th>
							<th width="15%">分类</th>
							<th width="37%">标题</th>
							<th width="20%">最后更新时间</th>
							<th width="20%">操作</th>
						</tr>
						
						<c:choose>
							<c:when test="${empty list.row }">
								<tr><td class="left" style="color:#FF0000;" colspan="5"><div class="data_info"><i class="fa fa-frown-o"></i> 无数据</div></td></tr>
							</c:when>
							<c:otherwise>
								<c:forEach items="${list.row }" var="c" varStatus="v">
									<tr>
										<td class="left">
											<input name="blogId" value="${c.id }" type="checkbox">
										</td>
										<td>${c.typeName }</td>
										<td>
											<a href="javascript:void(0)" >${c.title }</a>
										</td>
										<td>${c.createdate }</td>
										<td>
											<div class="btn-group btn-group-xs">
												<a href="<%=path %>/admin/blog/toEditBlog.do?id=${c.id}" class="btn btn-success">
													<i class="fa fa-edit"></i> 
													编辑
												</a>
												<a href="javascript:void(0)" onclick="deleteBlog('${c.id}')" class="btn btn-danger">
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
				  								href="<%=path %>/admin/blog/getBlogList.do"
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
					  								href="<%=path %>/admin/blog/getBlogList.do?pageNum=${s}"
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
				  								href="<%=path %>/admin/blog/getBlogList.do?pageNum=${list.row[0].pageCount }"
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
	</body>

</html>
