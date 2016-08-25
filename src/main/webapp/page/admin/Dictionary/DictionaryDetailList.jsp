<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%-- 
	杨小龙   2016-07-28  字典项类型详细列表
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
		<script type="text/javascript" src="<%=path %>/js/admin/DictionaryDetailList.js"></script>
		<title>字典项管理</title>
	</head>
	<body>
		<div class="container-fluid">
	    	<ol class="breadcrumb">
			  <li><a href="<%=path%>/admin/right.do"><i class="fa fa-home"></i> 首页</a></li>
			  <li><a href="<%=path%>/admin/dict/getDictionaryList.do"><i></i> 分类管理</a></li>
			  <li class="active">字典项管理</li>
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
							<a href="javascript:void(0)" onclick="deleteDetailBatch()" class="btn btn-default"><i class="fa fa-trash-o"></i> 批量删除</a>
						</div>
					</div>
					<table style="text-decoration: none; " id="articleList" class="table">
						<tr>
							<th class="left">选择</th>
							<th>序号</th>
							<th>字典</th>
							<th>字典项</th>
							<th>代码</th>
							<th>操作</th>
						</tr>
						
						<c:choose>
							<c:when test="${empty list.row }">
<!-- 								<tr><td class="left" colspan="6" style="color:#FF0000;">无数据</td></tr> -->
								<tr><td class="left" style="color:#FF0000;" colspan="6"><div class="data_info"><i class="fa fa-frown-o"></i> 无数据</div></td></tr>
							</c:when>
							<c:otherwise>
								<c:forEach items="${list.row }" var="c" varStatus="v">
									<tr>
										<td class="left">
											<input name="category" value="${c.itemId }" type="checkbox">
										</td>
										<td>${v.index+1 }</td>
										<td>${c.dictName }</td>
										<td>${c.itemName }</td>
										<td>${c.itemCode }</td>
										<td>
											<div class="btn-group btn-group-xs">
												<a href="javascript:void(0)" onclick="setInfo('${c.itemId}','${c.itemCode }','${c.itemName }')" data-toggle="modal" data-target="#addCategory" class="btn btn-success">
													<i class="fa fa-edit"></i> 
													编辑
												</a>
												<a href="javascript:void(0)" onclick="deleteCatecory('${c.itemId}')" class="btn btn-danger">
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
								<td class="tdright"><input id="itemNameInput" type="text" class="form-control" placeholder="唯一字典名"/></td>
							</tr>
							<tr>
								<td class="tdleft">字典代码：<span class="required">*</span></td>
								<td class="tdright"><input id="itemCodeInput" type="text" class="form-control" placeholder="唯一字典代码"/></td>
							</tr>
						</table>
						<form id="saveForm" action="" autocomplete="off" method="post">
							<input type="hidden" id="itemId" name="itemId">
							<input type="hidden" id="dictCode" name="dictCode" value="${dictCode }">
							<input type="hidden" id="itemCode" name="itemCode">
							<input type="hidden" id="itemName" name="itemName">
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
