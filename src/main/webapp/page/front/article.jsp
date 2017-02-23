<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"+ request.getServerName() + ":" + request.getServerPort()+ path ;
%>
<!-- 博文列表 -->
<c:choose>
	<c:when test="${empty blogList.row}"></c:when>
	<c:otherwise>
		<c:forEach items="${blogList.row }" var="c" varStatus="v">
			<div class="wow" data-wow-delay="0.3s">
				<article id="post-211" class="post-211 post type-post status-publish format-standard hentry category-we tag-hui-jia tag-ru-guo tag-xing-fu tag-xin-qing tag-si-xiang tag-ai-qing tag-sheng-huo tag-dian-ying">
					<figure class="thumbnail">
						<div class="load">
							<a href="<%=basePath%>/getBlogInfo/${c.id}.do">
								<img src="<%=basePath%>/${c.img}" data-original="" alt="${c.title }" style="display: block;">
							</a>
						</div>
						<span class="cat">
							<a href="<%=basePath%>/getBlogInfo/${c.id}.do">${c.typeName }</a>
						</span>
					</figure>
					<header class="entry-header">
						<h2 class="entry-title">
							<a href="<%=basePath%>/getBlogInfo/${c.id}.do" rel="bookmark">${c.title }</a>
						</h2>
					</header>
					<!-- .entry-header -->
					<div class="entry-content">
						<div class="archive-content"> ${c.summary }... </div>
						<span class="title-l"></span>
						<span class="entry-meta">
							<span class="author">
								<img alt="avatar" src="" class="avatar avatar-40" width="40" height="40">
								<a href="javascript:void(0)" title="由${c.author }发布" rel="author">${c.author }</a>&nbsp;
							</span>
							<span class="date"><i class="fa fa-clock-o"></i>&nbsp;${c.createdate }&nbsp;</span>
							<span class="views"><i class="fa fa-eye"></i>&nbsp;阅读${c.hitcount }次</span>&nbsp; 
							<span class="comment"> <i class="fa fa-comments-o"></i>&nbsp;
								<a href="javascript:void(0)">评论${c.commentcount }条</a>
							</span>
						</span>
						<div class="clear"></div>
					</div>
					<!-- .entry-content -->
					<span class="entry-more">
						<a href="<%=basePath%>/getBlogInfo/${c.id}.do" rel="bookmark">阅读全文</a>
					</span>
				</article>
				<!-- #post -->
			</div>
			<div class="wow" data-wow-delay="0.3s"></div>
		</c:forEach>
	</c:otherwise>
</c:choose>
<!-- 博文列表end -->