<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<title>房间信息修改</title>
<link rel="stylesheet" href="css/layui.css">
<script src="js/jquery-3.3.1.js"></script>
<script src="layui.js"></script>
<script type="text/javascript">
/* 	function validate() {
		var r_num = $("#r_num").val();
		var data = {};
		data["r_num"] = r_num;
		$.ajax({
			url : "RoomManageServlet?method=Add",
			type : "post",
			data : data,
			success : function(data) {
				if (data == 0) {
					layui.use('layer', function() {
						var layer = layui.layer;

						layer.msg('该房间已存在！',{time: 1000}, function(){
							window.location.reload()
						});
					});
				}

			}
		});
	} */
</script>
</head>

<body>
	<div style="width: 80%; margin: 0 auto; margin-top: 60px;"
		align="center">

		<form class="layui-form" action="RoomController/updadeRoomById"
			method="post" style="width: 30%;">

			<div class="layui-form-item">
				<div class="layui-input-block">
					<input type="hidden" name="r_id" required lay-verify="required"
						placeholder="" autocomplete="off" class="layui-input"
						readonly="readonly" value="${param.r_id }">
				</div>
			</div>
			<div class="layui-form-item">
				<label class="layui-form-label">房间号</label>
				<div class="layui-input-block">
					<input type="text" id="r_num" name="r_num" required
						lay-verify="required|number" placeholder="" autocomplete="off"
						class="layui-input" value="${param.r_num }">
				</div>
			</div>
			<div class="layui-form-item">
				<label class="layui-form-label">房间类型</label>
				<div class="layui-input-block">
					<input type="text" name="r_type" required lay-verify="required"
						placeholder="" autocomplete="off" class="layui-input"
						value="${param.r_type }">
				</div>
			</div>
			<div class="layui-form-item">
				<label class="layui-form-label">房间价格</label>
				<div class="layui-input-block">
					<input type="text" name="r_price" required lay-verify="required"
						placeholder="" autocomplete="off" class="layui-input"
						value="${param.r_price }" onblur="validate();">
				</div>
			</div>
			<div class="layui-input-block">
				<button class="layui-btn" lay-submit lay-filter="formDemo">提交</button>
			</div>
		</form>

	</div>

	<script>
		layui.use('laydate', function() {
			var laydate = layui.laydate;

			//执行一个laydate实例
			laydate.render({
				elem : '#test1' //指定元素
			});
		});

		//Demo
		layui.use('form', function() {
			var form = layui.form;

		});
	</script>
</body>

</html>