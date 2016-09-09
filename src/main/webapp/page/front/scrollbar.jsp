<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- 滚动工具栏 -->
<ul id="scroll">
	<div class="log log-no">
		<li><a class="log-button" title="文章目录"><i class="fa fa-bars"></i></a></li>
		<div class="log-prompt" style="display: none;">
			<div class="log-arrow">文章目录</div>
		</div>
	</div>
	<li><a class="scroll-h" title="返回顶部"><i class="fa fa-angle-up"></i></a></li>
	<li><a name="gb2big5" id="gb2big5" href="javascript:StranBody()" title="繁體"><span>繁</span></a></li>
	<li><a href="javascript:void(0)" class="qr" title="二维码"><i class="fa fa-qrcode"></i><span class="qr-img"><div id="output"><img class="alignnone" src=""></div></span></a></li>
	<script type="text/javascript">
		$(document).ready(function() {
			if (!+[1, ]) {
				present = "table";
			} else {
				present = "canvas";
			}
			$('#output').qrcode({
				render: present,
				text: window.location.href,
				width: "150",
				height: "150"
			});
		});
	</script>
	<li><a class="scroll-b" title="转到底部"><i class="fa fa-angle-down"></i></a></li>
</ul>
<!-- 滚动工具栏 end-->
