<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"+ request.getServerName() + ":" + request.getServerPort()+ path ;
%>
<!-- 文章列表 -->
<c:choose>
	<c:when test="${!empty blog }">
		<c:forEach items="${blog }" varStatus="v" var="c">
		<article id="" class="post-5761 post type-post status-publish format-standard hentry category-singles tag-jingdian-wusun-gequ">
			<figure class="thumbnail">
				<a href="javascript:void(0)">
					<img src="<%=path %>/images/pgy.png" alt="李行亮 - 漂洋过海来看你.flac 分享">
				</a>			
				<span class="cat">
					<c:if test="${v.index<2 }">
						<a href="javascript:void(0)">置顶</a>
					</c:if>
				</span>
			</figure>
			<header class="entry-header">
				<h2 class="entry-title">
					<a href="javascript:void(0)" rel="bookmark">${c.title }漂洋过海来看你.flac </a>
				</h2>			
			</header>
			<div class="entry-content">
				<div class="archive-content">
					<a href="javascript:void(0)" rel="bookmark">
						${c.summary }
					</a>
				</div>
				<span class="title-l"></span>
				<span class="new-icon">NEW</span>						
				<span class="entry-meta">
					<span class="date">${c.createdate }&nbsp;</span>
					<span class="views">阅读 ${c.hitcount }</span>									
					<span class="comment">
						<a href="javascript:void(0)">
							<i class="fa fa-comment-o"></i> 评论
						</a>
					</span>
				</span>
				<div class="clear"></div>
			</div>
			<span class="entry-more">
				<a href="javascript:void(0)" rel="bookmark">阅读全文</a>
			</span>
		</article>
		</c:forEach>
	</c:when>
</c:choose>

<!-- <article id="post-5761" class="post-5761 post type-post status-publish format-standard hentry category-singles tag-jingdian-wusun-gequ"> -->
<!-- 	<figure class="thumbnail"> -->
<!-- 		<a href="javascript:void(0)"> -->
<!-- 			<img src="http://www.1mayi.com/wp-content/themes/begin1.8%20pojie/timthumb.php?src=http://www.1mayi.com/wp-content/uploads/piaoyangguohailaikanni.jpg&amp;w=280&amp;h=210&amp;zc=1" alt="李行亮 - 漂洋过海来看你.flac 分享"> -->
<!-- 		</a>			 -->
<!-- 		<span class="cat"> -->
<!-- 			<a href="javascript:void(0)">置顶</a> -->
<!-- 		</span> -->
<!-- 	</figure> -->
<!-- 	<header class="entry-header"> -->
<!-- 		<h2 class="entry-title"> -->
<!-- 			<a href="javascript:void(0)" rel="bookmark">李行亮 – 漂洋过海来看你.flac 分享</a> -->
<!-- 		</h2>			 -->
<!-- 	</header> -->
	<!-- .entry-header -->
<!-- 	<div class="entry-content"> -->
<!-- 		<div class="archive-content"> -->
<!-- 			<a href="javascript:void(0)" rel="bookmark"> -->
<!-- 				歌曲名称: &nbsp; 漂洋过海来看你 填词: &nbsp;&nbsp;李宗盛 演唱歌手: &nbsp; 李行亮，（原唱金智娟） 谱曲: &nbsp;&nbsp;李宗盛 发行时间: &nbsp; 2013年 编曲: &nbsp;&nbsp;Trifor...			 -->
<!-- 			</a> -->
<!-- 		</div> -->
<!-- 		<span class="title-l"></span> -->
<!-- 		<span class="new-icon">NEW</span>						 -->
<!-- 		<span class="entry-meta"> -->
<!-- 			<span class="date">2016年05月30日&nbsp;</span> -->
<!-- 			<span class="views">阅读 21</span>									 -->
<!-- 			<span class="comment"> -->
<!-- 				<a href="javascript:void(0)"> -->
<!-- 					<i class="fa fa-comment-o"></i> 评论 -->
<!-- 				</a> -->
<!-- 			</span> -->
<!-- 		</span> -->
<!-- 		<div class="clear"></div> -->
<!-- 	</div> -->
<!-- 	<span class="entry-more"> -->
<!-- 		<a href="javascript:void(0)" rel="bookmark">阅读全文</a> -->
<!-- 	</span> -->
<!-- </article> -->