<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String path = request.getScheme() + "://" + request.getHeader("host") + request.getContextPath() + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=path%>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<title>首页</title>
<link rel="stylesheet" href="css/layui.css">
<script src="layui.js"></script>
<script type="text/javascript" src="js/jquery-3.1.1.min.js"></script>
<script type="text/javascript">
	var height = $(window).height();

	if ($(window).resize()) {
		$("#mainframe").css('height', height - $('#head').outerHeight(true));
	} else {
		$("#mainframe").css('height', height - $('#head').outerHeight(true));
	}
</script>
</head>

<body class="layui-layout-body">
	<div class="layui-layout layui-layout-admin">
		<div class="layui-header" id="head">
			<div class="layui-logo">XX酒店信息管理系统</div>
			<!--登录情况-->
			<ul class="layui-nav layui-layout-right">
				<li class="layui-nav-item"><a href="ExitServlet">退出</a></li>
			</ul>
		</div>

		<div class="layui-side layui-bg-black">
			<div class="layui-side-scroll">
				<!-- 左侧导航区域（可配合layui已有的垂直导航） -->
				<!-- 功能导航栏 -->
				<ul class="layui-nav layui-nav-tree" lay-filter="test">
					<li class="layui-nav-item"><a
						href="UserController/queryAllAdmin" target="mainframe">用户管理</a></li>
					<li class="layui-nav-item"><a
						href="RoomController/queryRoom" target="mainframe">客房管理</a></li>
					<li class="layui-nav-item"><a
						href="OccupantManageServlet?method=QueryAll" target="mainframe">入住人员信息管理</a></li>
					<li class="layui-nav-item"><a
						href="BillController/queryOrder" target="mainframe">账单管理</a>
					</li>
					<li class="layui-nav-item"><a
						href="CheckOutServlet?method=QueryAll" target="mainframe">退房结账</a></li>
				</ul>
			</div>
		</div>

		<div class="layui-body" style="overflow: hidden;">
			<!-- 内容主体区域 -->
			<!-- 用于显示各功能的iframe -->
			<iframe src="welcome/welcome.html" name="mainframe" id="mainframe"
				frameborderrder="0" width="100%" height="100%"> </iframe>
		</div>

		<div class="layui-footer">
			<!-- 底部固定区域 -->
			© 版权所有
		</div>
	</div>
	<script>
		//JavaScript代码区域
		layui.use('element', function() {
			var element = layui.element;

		});
	</script>
</body>

</html>