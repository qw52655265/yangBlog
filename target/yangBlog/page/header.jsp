<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"+ request.getServerName() + ":" + request.getServerPort()+ path ;
%>
<!-- 头部 -->
<div class="top_header">
	<header>
		<div class="logo f_l" style="width:100%">
			<div style="float: left;padding-top:25px;overflow: hidden;position:relative;z-index:140">
				<img alt="" src="<%=path %>/images/bloglogo.png"> 
			</div>
			<div class="header_right">
				<p class="animated fadeInLeft" style="display: block;">——记忆像是倒在掌心的水</p>
				<p class="animated fadeInLeft" style="display: block;">总会从指缝中一点一滴，流淌乾净</p>
			</div>
		</div>
	</header>
	<div id="topnav" align="center">
		<nav>
		<ul>
			<li>
				<a href="javascript:void(0)" target="_self" id="topnav_current">
					<span>首页</span>
				</a>
				<div class="mutil_line">
					<div></div>
					<div></div>
					<div></div>
					<div></div>
				</div>
			</li>
			<li>
				<a href="javascript:void(0)" target="_self">
					<span>文章记录</span>
				</a>
				<div class="mutil_line">
					<div></div>
					<div></div>
					<div></div>
					<div></div>
				</div>
			</li>
			<li>
				<a href="javascript:void(0)" target="_self">
					<span>前端技术</span>
				</a>
				<div class="mutil_line">
					<div></div>
					<div></div>
					<div></div>
					<div></div>
				</div>
			</li>
			<li>
				<a href="javascript:void(0)" target="_self">
					<span>相册</span>
				</a>
				<div class="mutil_line">
					<div></div>
					<div></div>
					<div></div>
					<div></div>
				</div>
			</li>
			<li>
				<a href="javascript:void(0)" target="_self">
					<span>留言吐槽</span>
				</a>
				<div class="mutil_line">
					<div></div>
					<div></div>
					<div></div>
					<div></div>
				</div>
			</li>
			<li>
				<a href="javascript:void(0)" target="_blank">
					<span>音乐盒</span>
				</a>
				<div class="mutil_line">
					<div></div>
					<div></div>
					<div></div>
					<div></div>
				</div>
			</li>
			<li>
				<a href="javascript:void(0)" target="_blank">
					<span>关于我</span>
				</a>
				<div class="mutil_line">
					<div></div>
					<div></div>
					<div></div>
					<div></div>
				</div>
			</li>
			<li>
				<a href="javascript:void(0)" target="_self">
					<span>格式化</span>
				</a>
				<div class="mutil_line">
					<div></div>
					<div></div>
					<div></div>
					<div></div>
				</div>
			</li>
		</ul>
		</nav>
	</div>
<!-- 	<canvas id="box_canvas" width="1358" height="120px" style="width: 1358px;"></canvas> -->
</div>