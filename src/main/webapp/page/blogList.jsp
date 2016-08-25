<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%-- 
	杨小龙   2016-08-04 博客列表
--%>
<!DOCTYPE html>
<html>
<head>
	<title>文章|Yang博客</title>
	<meta charset="utf-8">
	<meta name="description" content="${info.summary }"/>
	<meta name="keywords" content="${info.typeName }">
	<meta name="viewport" content="width=device-width,initail-scale=1.0,maximum-scale=1.0,user-scalable=no">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="HandheldFriendly" content="true">
	
	<link rel="stylesheet" href="<%=path %>/bootstrap-3.3.5-dist/css/bootstrap.min.css">
	<link rel="stylesheet" href="<%=path %>/font-awesome-4.3.0/css/font-awesome.css">
	<link rel="stylesheet" href="<%=path %>/css/base.css">
	<link rel="stylesheet" href="<%=path %>/css/index.css">
	<link rel="stylesheet" href="<%=path %>/css/animate.css">
	<link rel="stylesheet" href="<%=path %>/css/animate.css">
	<link rel="stylesheet" href="<%=path %>/css/blogInfo.css">

	<script type="text/javascript" src="<%=path %>/js/admin/jquery.js"></script>
	<script type="text/javascript" src="<%=path %>/quake-slider/js/jquery-migrate-1.2.1.js"></script>
	<script type="text/javascript" src="<%=path %>/js/common.js"></script>
	<!--[if lt IE 9]>
	<script src="js/modernizr.js"></script>
	<![endif]-->
	<!-- 返回顶部调用 begin -->
<!-- 	<script type="text/javascript" src="js/up/jquery.js"></script> -->
<!-- 	<script type="text/javascript" src="js/up/js.js"></script> -->
	<!-- 返回顶部调用 end-->
</head>
<body>
	<input id="index" type="hidden" value="1"/>
	<div class="WB_miniblog">
	<!-- 头部 -->
	<jsp:include page="header1.jsp" />
	<!-- 头部 end -->
	<div id="page">
	<article>
		<div class="l_box f_l">
	  
			<!-- 文章列表 -->
			<jsp:include page="article1.jsp" />
	    	<!-- 文章列表end -->
	    	<nav class="pagination-nav">
			  	<ul class="pagination">
			  		<c:choose>
			  			<c:when test="${empty blogList.row }">
			  				<li class="disabled"><a href="#" aria-label="Previous"><span aria-hidden="true">&laquo;</span></a></li>
					    	<li class="active"><a href="javascript:void(0)">1</a></li>
					    	<li class="disabled"><a href="javascript:void(0)" aria-label="Next"><span aria-hidden="true">&raquo;</span></a></li>
			  			</c:when>
			  			<c:otherwise>
	  						<li 
	  							<c:choose>
		  							<c:when test="${1==blogList.row[0].currentPage  }">
		  								class="disabled"
		  							</c:when>
		  							<c:otherwise></c:otherwise>
		  						</c:choose>
	  						>
		  						<a 
		  							<c:choose>
			  							<c:when test="${1==blogList.row[0].currentPage  }">
			  								href="javascript:void(0)"
			  							</c:when>
			  							<c:otherwise>
			  								href="<%=path %>/getBlogList/all/${typeid }.do"
			  							</c:otherwise>
			  						</c:choose>
		  						 aria-label="Previous">
		  						 	<span aria-hidden="true">&laquo;</span>
		  						 </a>
		  					</li>
			  				<c:forEach var="s" begin="1" end="${blogList.row[0].pageCount }">
			  					<li 
			  						<c:choose>
			  							<c:when test="${s==blogList.row[0].currentPage  }">
			  								class="active"
			  							</c:when>
			  							<c:otherwise></c:otherwise>
			  						</c:choose>
			  					>
				  					<a 
				  						<c:choose>
				  							<c:when test="${s==blogList.row[0].currentPage  }">
				  								href="javascript:void(0)"
				  							</c:when>
				  							<c:otherwise>
				  								href="<%=path %>/getBlogList/${s}/${typeid }.do"
				  							</c:otherwise>
				  						</c:choose>
				  					>${s }</a>
				  				</li>
			  				</c:forEach>
		  					<li 
	  							<c:choose>
		  							<c:when test="${blogList.row[0].pageCount==blogList.row[0].currentPage  }">
		  								class="disabled"
		  							</c:when>
		  							<c:otherwise></c:otherwise>
		  						</c:choose>
	  						>
		  						<a 
		  							<c:choose>
			  							<c:when test="${blogList.row[0].pageCount==blogList.row[0].currentPage  }">
			  								href="javascript:void(0)"
			  							</c:when>
			  							<c:otherwise>
			  								href="<%=path %>/getBlogList/${blogList.row[0].pageCount}/${typeid }.do"
			  							</c:otherwise>
			  						</c:choose>
		  						 aria-label="Next">
		  						 	<span aria-hidden="true">&raquo;</span>
		  						 </a>
		  					</li>
			  			</c:otherwise>
			  		</c:choose>
			  	</ul>
			  	<div></div>
			</nav>
	    	
		</div>
		
		<!-- 右侧侧边栏 -->
		<div class="r_box f_r">
			<!-- 排行榜 -->
			<jsp:include page="ranking.jsp" />
			<!-- 排行榜end -->
		</div>
		<!-- 右侧侧边栏 end --> 
	</article>
	</div>
	</div>
	<jsp:include page="footer.jsp" />
</body>
</html>