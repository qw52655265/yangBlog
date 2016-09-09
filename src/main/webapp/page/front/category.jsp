<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"+ request.getServerName() + ":" + request.getServerPort()+ path ;
%>
<!-- 分类目录 -->
<aside id="categories-2" class="widget widget_categories">
	<h3 class="widget-title"><i class="fa fa-bars"></i>分类目录</h3>
	<ul>
		<c:choose>
			<c:when test="${empty tagList.row }"></c:when>
			<c:otherwise>
				<c:forEach items="${tagList.row }" var="c" varStatus="v">
					<li class="cat-item cat-item-2"><a href="javascript:void(0)">${c.itemName }</a></li>
				</c:forEach>
			</c:otherwise>
		</c:choose>
	</ul>
	<div class="clear"></div>
</aside>
<!-- 分类目录end -->