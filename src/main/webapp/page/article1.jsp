<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"+ request.getServerName() + ":" + request.getServerPort()+ path ;
%>
<div class="topnews">
	<h2>
		<b>文章</b>推荐
	</h2>
	<c:choose>
		<c:when test="${empty blogList.row }"></c:when>
		<c:otherwise>
			<c:forEach items="${blogList.row }" var="c" varStatus="v">
				<div class="blogs">
					<figure><img src="<%=path%>/${c.img}"></figure>
					<ul>
						<h3><a href="<%=path%>/getBlogInfo/${c.id}.do">${c.title }</a></h3>
						<p><a href="javascript:void(0)">${c.summary }</a></p>
						<p class="autor">
							<span class="lm f_l"><a href="javascript:void(0)">${c.typeName }</a></span>
							<span class="dtime f_l">${c.createdate }</span>
							<span class="viewnum f_r">浏览（<a href="javascript:void(0)">${c.hitcount }</a>）</span>
							<span class="pingl f_r">评论（<a href="javascript:void(0)">${c.commentcount }</a>）</span>
						</p>
					</ul>
				</div>
			</c:forEach>
		</c:otherwise>
	</c:choose>
</div>