<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"+ request.getServerName() + ":" + request.getServerPort()+ path ;
%>
<div class="links">
	<h3><span>[<a href="javascript:void(0)">申请友情链接</a>]</span>友情链接</h3>
	<ul>
		<c:choose>
			<c:when test="${empty linkList.row }"></c:when>
			<c:otherwise>
				<c:forEach items="${linkList.row }" var="c" varStatus="v">
					<li><a href="${c.url }" target="_blank">${c.name }</a></li>
				</c:forEach>
			</c:otherwise>
		</c:choose>
	</ul>
</div>