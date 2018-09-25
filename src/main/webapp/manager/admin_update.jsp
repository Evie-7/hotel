<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path=request.getScheme()+"://"+request.getHeader("host")+request.getContextPath()+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=path%>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<title>用户信息修改</title>
<link rel="stylesheet" href="css/layui.css">
<script src="layui.js"></script>
</head>

<body>
	<div style="width: 80%; margin: 0 auto; margin-top: 60px;"
		align="center">
		<form class="layui-form" action="UserController/updateAdminById"
			method="post" style="width: 30%;">
			<div class="layui-form-item">
				<label class="layui-form-label">用户编号</label>
				<div class="layui-input-block">
					<input type="text" name="a_id" required lay-verify="required"
						placeholder="" autocomplete="off" class="layui-input"
						value="${param.a_id }" readonly="readonly">
				</div>
			</div>
			<div class="layui-form-item">
				<label class="layui-form-label">用户名</label>
				<div class="layui-input-block">
					<input type="text" name="a_name" required lay-verify="required"
						placeholder="" autocomplete="off" class="layui-input"
						value="${param.a_name }">
				</div>
			</div>
			<div class="layui-form-item">
				<label class="layui-form-label">密码</label>
				<div class="layui-input-block">
					<input type="text" name="a_pwd" required lay-verify="required"
						placeholder="" autocomplete="off" class="layui-input"
						value="${param.a_pwd }">
				</div>
			</div>
			<div class="layui-input-block">
				<button class="layui-btn" lay-submit lay-filter="formDemo">提交</button>
			</div>
		</form>
	</div>

	<script>

		//Demo
		layui.use('form', function() {
			var form = layui.form;

		});
	</script>
</body>

</html>