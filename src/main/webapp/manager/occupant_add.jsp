<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getScheme() + "://" + request.getHeader("host") + request.getContextPath() + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<base href="<%=path%>">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<title>入住信息登记</title>
<link rel="stylesheet" href="css/layui.css">
<script src="layui.js"></script>
<script src="js/jquery-3.3.1.js"></script>
<script type="text/javascript">
	layui.use('form', function() {
		var form = layui.form;
		form.on('submit(*)', function(data) {
			var data=[data.field];
			$.ajax({
				url : "OccupantManageServlet?method=Add",
				type : "post",
				data : {
					msg : JSON.stringify(data)
				},
				dataType : "json",
				success : function(data) {
					if (data == 0) {
						layui.use('layer', function() {
							var layer = layui.layer;

							layer.msg('预订信息不存在！', {
								time : 1000
							});
						});
					} else if (data == 1) {
						layui.use('layer',function() {
						 var layer = layui.layer;
							layer.msg('登记成功！',{	time : 1500},
							 function() {
								window.location = "OccupantManageServlet?method=QueryAll";
							});
						});
					}
				}
			});
			return false;
		});
		form.on('select(r_type)', function(data) {
			var r_type = data.value;
			var data = {};
			data["r_type"] = r_type;
			$.ajax({
				url : "OccupantManageServlet?method=Rnum",
				type : "post",
				data : data,
				dataType : "json",
				success : function(data) {
					var dataObj = data, //返回的result为json格式的数据
					r_num = "";
					r_num += "<option>" + "</option>";
					$.each(data, function(index, item) {

						r_num += "<option>" + item.r_num + "</option>";
					});
					$("#r_num").html(r_num);
					form.render("select");
				}
			});
		});
	});
</script>
</head>

<body>
	<div align="center"
		style="width: 100%; margin: 0 auto; margin-top: 60px;">
		<form class="layui-form" action="" method="post">
			<div class="layui-form-item" style="width: 350px;">
				<label class="layui-form-label">房间类型</label>
				<div class="layui-input-block">
					<select name="r_type" id="r_type" lay-verify="required" lay-search
						lay-filter="r_type">
						<option value=""></option>
						<c:forEach var="Rtype" items="${Rtype }">
							<option value="${Rtype.r_type }">${Rtype.r_type }</option>
						</c:forEach>
					</select>
				</div>
			</div>
			<div class="layui-form-item" style="width: 350px;">
				<label class="layui-form-label">房间号</label>
				<div class="layui-input-block">
					<select name="r_num" id="r_num" required lay-verify="required" lay-search>
					</select>
				</div>
			</div>
			<div class="layui-form-item" style="width: 350px;">
				<label class="layui-form-label">入住时间</label>
				<div class="layui-input-block">
					<input type="text" class="layui-input" name="o_checkin_time"
						id="o_checkin_time" required lay-verify="required">
				</div>
			</div>
			<div class="layui-form-item" style="width: 350px;">
				<label class="layui-form-label">身份证号</label>
				<div class="layui-input-block">
					<input type="text" name="oc_idnum" id="oc_idnum" required
						lay-verify="required|identity" placeholder="" autocomplete="off"
						class="layui-input" value="">
				</div>
			</div>
			<div class="layui-form-item" style="width: 350px;">
				<label class="layui-form-label">姓名</label>
				<div class="layui-input-block">
					<input type="text" name="oc_name" id="oc_name" required
						lay-verify="required" placeholder="" autocomplete="off"
						class="layui-input" value="">
				</div>
			</div>
			<div class="layui-form-item" style="width: 350px;">
				<label class="layui-form-label">性别</label>
				<div class="layui-input-block">
					<input type="radio" name="oc_sex" id="oc_sex" value="男" title="男">
					<input type="radio" name="oc_sex" id="oc_sex" value="女" title="女">
				</div>
			</div>
			<div class="layui-form-item" style="width: 350px;">
				<label class="layui-form-label">电话</label>
				<div class="layui-input-block">
					<input type="text" name="oc_phone" id="oc_phone" required
						lay-verify="required|phone" placeholder="" autocomplete="off"
						class="layui-input" value="">
				</div>
			</div>

			<div class="layui-form-item" align="center">
				<button class="layui-btn" lay-submit lay-filter="*">提交</button>
			</div>
		</form>
	</div>

	<script>
		layui.use('laydate', function() {
			var laydate = layui.laydate;

			//执行一个laydate实例
			lay('#o_checkin_time').each(function() {
				laydate.render({
					elem : this,
					trigger : 'click',
					type : 'datetime'
				});
			});
		});

		//Demo
	</script>
</body>

</html>