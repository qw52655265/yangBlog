<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"+ request.getServerName() + ":" + request.getServerPort()+ path ;
%>
<div class="moreSelect" id="lp_right_select"> 
	<div class="ms-top">
		<ul class="hd" id="tab">
			<li class="cur"><a href="javascript:void(0)">点击排行</a></li>
			<li><a href="javascript:void(0)">最新文章</a></li>
<!-- 			<li><a href="javascript:void(0)">站长推荐</a></li> -->
		</ul>
	</div>
	<div class="ms-main" id="ms-main">
		<div style="display: block;" class="bd bd-news" >
			<ul>
				<c:choose>
					<c:when test="${empty clickNumList.row }"></c:when>
					<c:otherwise>
						<c:forEach items="${clickNumList.row }" var="c" varStatus="v">
							<li><a href="<%=path%>/getBlogInfo/${c.id}.do" target="_self">${c.title }</a></li>
						</c:forEach>
					</c:otherwise>
				</c:choose>
			</ul>
		</div>
		<div  class="bd bd-news">
			<ul>
				<c:choose>
					<c:when test="${empty createdateList.row }"></c:when>
					<c:otherwise>
						<c:forEach items="${createdateList.row }" var="c" varStatus="v">
							<li><a href="<%=path%>/getBlogInfo/${c.id}.do" target="_self">${c.title }</a></li>
						</c:forEach>
					</c:otherwise>
				</c:choose>
			</ul>
		</div>
<!-- 		<div class="bd bd-news"> -->
<!-- 			<ul> -->
<!-- 				<li><a href="javascript:void(0)" target="_blank">手机的16个惊人小秘密，据说99.999%的人都不知</a></li> -->
<!-- 				<li><a href="javascript:void(0)" target="_blank">你面对的是生活而不是手机</a></li> -->
<!-- 				<li><a href="javascript:void(0)" target="_blank">住在手机里的朋友</a></li> -->
<!-- 				<li><a href="javascript:void(0)" target="_blank">豪雅手机正式发布! 在法国全手工打造的奢侈品</a></li> -->
<!-- 				<li><a href="javascript:void(0)" target="_blank">教你怎样用欠费手机拨打电话</a></li> -->
<!-- 				<li><a href="javascript:void(0)" target="_blank">原来以为，一个人的勇敢是，删掉他的手机号码...</a></li> -->
<!-- 			</ul> -->
<!-- 		</div> -->
	</div>
</div>