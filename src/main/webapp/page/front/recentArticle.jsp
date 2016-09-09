<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"+ request.getServerName() + ":" + request.getServerPort()+ path ;
%>
<!-- 最新文章 -->
<aside id="new_cat-2" class="widget widget_new_cat">
	<h3 class="widget-title">
		<i class="fa fa-bars"></i>最新文章
	</h3>
	<div class="new_cat">
		<ul>
			<c:choose>
				<c:when test="${empty recentArticleList.row }"></c:when>
				<c:otherwise>
					<c:forEach items="${recentArticleList.row }" var="c" varStatus="v">
						<li>
							<figure class="thumbnail">
								<div class="load">
									<a href="<%=path%>/getBlogInfo/${c.id}.do"><img src="<%=path %>/${c.img}" data-original="" alt="${c.title }"></a>
								</div>
							</figure>
							<div class="new-title">
								<a href="<%=path%>/getBlogInfo/${c.id}.do" rel="bookmark">${c.title }</a>
							</div>
							<div class="date"> ${c.createdate }</div>
							<span class="views"><i class="fa fa-eye"></i> ${c.hitcount }次</span>
						</li>
					</c:forEach>
				</c:otherwise>
			</c:choose>
		</ul>
	</div>
	<div class="clear"></div>
</aside>
<!-- 最新文章end -->