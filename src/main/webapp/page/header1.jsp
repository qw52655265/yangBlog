<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path;
%>
<!-- 头部 -->
<link rel="stylesheet" href="<%=path %>/css/shuimo.min.css" />
<style>
	#contentleft,#contentright {background-color: rgba(255, 255, 255, .3);}
	#nav .bar {font-size: 18px;}
	#nav .bar .item {margin-bottom: 0px;}
</style>
<header _hover-ignore="1">
	<div class="dh">
		<a href="<%=path %>/index.do" class="zzsc" _hover-ignore="1"></a>
		<div id="logo">
			<a href="<%=path %>/index.do"><img alt="起点终站" title="起点终站" src="http://blog.hellozwh.com/content/templates/qpgzs_shuimo-free/images/logo.jpg" style="width:260px;height:60px;" original="http://blog.hellozwh.com/content/templates/qpgzs_shuimo-free/images/logo.jpg" _hover-ignore="1"></a>
		</div>
		<div id="nav">
			<ul id="nav-two" class="bar">
				<li class="item common">
					<a href="<%=path %>/index.do" _hover-ignore="1">首页</a>
				</li>
				<li class="item common">
					<a href="<%=path %>/getBlogList/all/all.do" _hover-ignore="1">文章记录</a>
				</li>
				<li class="item common">
					<a href="javascript:void(0)" _hover-ignore="1">相册</a>
				</li>
				<li class="item common">
					<a href="javascript:void(0)" _hover-ignore="1">留言吐槽</a>
				</li>
				<li class="item common">
					<a href="javascript:void(0)" _hover-ignore="1">还没想好</a>
				</li>
				<li class="item common" id="shouqibucuo">
					<a title="今日手气好，没事乱翻书。" href="javascript:void(0)" _hover-ignore="1">还没想好</a></li>
				<li class="item common">
					<a href="javascript:void(0)" _hover-ignore="1">还没想好</a>
				</li>
				<li class="item common">
					<a class="gbcbl" href="javascript:void(0)" _hover-ignore="1">狂欢一下</a>
				</li>
			</ul>
		</div>
	</div>
</header>