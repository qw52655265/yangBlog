<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"+ request.getServerName() + ":" + request.getServerPort()+ path ;
%>
<!-- 热评文章 -->
<aside id="hot_comment-2" class="widget widget_hot_comment">
	<h3 class="widget-title"><i class="fa fa-bars"></i>热评文章</h3>
	<div id="hot_comment_widget">
		<ul>
			<c:choose>
				<c:when test="${empty hotCommentArticleList.row  }"></c:when>
				<c:otherwise>
					<c:forEach items="${hotCommentArticleList.row }" var="c" varStatus="v">
						<li>
							<span class="li-icon li-icon-${v.index+1 }">${v.index+1 }</span>
							<a href="<%=path%>/getBlogInfo/${c.id}.do" rel="bookmark" title=" (${c.hitcount }条评论)">${c.title }</a>
						</li>
					</c:forEach>
				</c:otherwise>
			</c:choose>
		</ul>
	</div>
	<div class="clear"></div>
</aside>
<!-- 热评文章 end -->