<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"+ request.getServerName() + ":" + request.getServerPort()+ path ;
%>
<div class="cloud">
	<h3>标签云</h3>
	<ul>
		<c:choose>
			<c:when test="${empty tagList.row }"></c:when>
			<c:otherwise>
				<c:forEach items="${tagList.row }" var="c" varStatus="v">
					<li><a href="javascript:void(0)">${c.itemName }</a></li>
				</c:forEach>
			</c:otherwise>
		</c:choose>
	</ul>
</div>