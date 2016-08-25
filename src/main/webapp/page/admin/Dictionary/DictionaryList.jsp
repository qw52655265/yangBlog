<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%-- 
	杨小龙   2016-06-23  字典类型列表
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
		<script type="text/javascript" src="<%=path %>/js/admin/common.js"></script>
		<script type="text/javascript" src="<%=path %>/js/admin/showBo.js"></script>
		<script type="text/javascript" src="<%=path %>/js/admin/DictionaryList.js"></script>
		<title>分类管理</title>
	</head>
	<body>
		<div class="container-fluid">
	    	<ol class="breadcrumb">
			  <li><a href="<%=path%>/admin/right.do"><i class="fa fa-home"></i> 首页</a></li>
			  <li class="active">分类管理</li>
			</ol>
			<div class="article-body">
				<div class="panel panel-default">
					<div class="panel-heading">
						<h5 class="panel-title">类型列表</h5>
					</div>
					<div class="panel-body">
						<div class="btn-group">
							<a href="javascript:void(0)" class="btn btn-default" onclick="selectAll()"><i class="fa fa-list-ol"></i> 全选</a>
							<a href="javascript:void(0)" onclick="clearInfo()" class="btn btn-default" data-toggle="modal" data-target="#addCategory"><i class="fa fa-plus-square"></i> 添加分类</a>
							<a href="javascript:void(0)" onclick="deleteDictionaryBatch()" class="btn btn-default"><i class="fa fa-trash-o"></i> 批量删除</a>
						</div>
					</div>
					<table style="text-decoration: none; " id="articleList" class="table">
						<tr>
							<th class="left">选择</th>
							<th>字典代码</th>
							<th>字典类型</th>
							<th>操作</th>
						</tr>
						
						<c:choose>
							<c:when test="${empty list.row }">
								<tr><td class="left" style="color:#FF0000;" colspan="4"><div class="data_info"><i class="fa fa-frown-o"></i> 无数据</div></td></tr>
							</c:when>
							<c:otherwise>
								<c:forEach items="${list.row }" var="c" varStatus="v">
									<tr>
										<td class="left">
											<input name="category" value="${c.id }" type="checkbox">
										</td>
										<td>${c.dictCode }</td>
										<td>${c.dictName }</td>
										<td>
											<div class="btn-group btn-group-xs">
												<a href="javascript:void(0)" onclick="setInfo(${c.id },'${c.dictCode}','${ c.dictName}')" data-toggle="modal" data-target="#addCategory" class="btn btn-success">
													<i class="fa fa-edit"></i> 
													编辑
												</a>
												<a href="javascript:void(0)" onclick="deleteCatecory('${c.id}')" class="btn btn-danger">
													<i class="fa fa-trash-o"></i> 
													删除
												</a>
												<a href="<%=basePath %>/admin/dict/getDictionaryDetailList.do?dictCode=${c.dictCode}" class="btn btn-danger">
													<i class="fa fa-trash-o"></i> 
													字典项
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
				  								href="<%=path %>/admin/dict/getDictionaryList.do"
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
					  								href="<%=path %>/admin/dict/getDictionaryList.do?pageNum=${s}"
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
				  								href="<%=path %>/admin/dict/getDictionaryList.do?pageNum=${list.row[0].pageCount }"
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
		<!-- 添加分类静态框 -->
		<div class="modal fade" id="addCategory" tabindex="-1" >
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button class="close" type="button" data-dismiss="modal"><span aria-hidden="true">&times;</span></button>
						<h4 class="modal-title"><i class="fa fa-tasks green"></i> 添加分类</h4>
					</div>
					<div class="modal-body">
						<table>
							<tr>
								<td class="tdleft">字典名：<span class="required">*</span></td>
								<td class="tdright"><input id="dictNameInput" type="text" class="form-control" placeholder="唯一字典名"/></td>
							</tr>
							<tr>
								<td class="tdleft">字典代码：<span class="required">*</span></td>
								<td class="tdright"><input id="dictCodeInput" type="text" class="form-control" placeholder="唯一字典代码"/></td>
							</tr>
						</table>
						<form id="saveForm" action="" autocomplete="off" method="post">
							<input type="hidden" id="id" name="id">
							<input type="hidden" id="dictCode" name="dictCode">
							<input type="hidden" id="dictName" name="dictName">
						</form>
					</div>
					<div class="modal-footer">
						<button class="btn btn-default" data-dismiss="modal">关闭</button>
						<button class="btn btn-success" onclick="saveCategory()">保存</button>
					</div>
				</div>
			</div>
		</div>
	</body>
</html>
