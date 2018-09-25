<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<title>记录消费</title>
<link rel="stylesheet" href="css/layui.css">
<script src="layui.js"></script>
<script src="js/jquery-3.3.1.js"></script>
<script type="text/javascript">
layui.use('form', function(){
	  var form = layui.form;
	  form.on('submit(*)', function(data) {
			console.log(data.elem) //被执行事件的元素DOM对象，一般为button对象
			console.log(data.form) //被执行提交的form对象，一般在存在form标签时才会返回
			var data=[data.field];
			console.log([data])
			$.ajax({
				url : "BillManageServlet?method=Add&type=add",
				type : "post",
				data : {
					msg : JSON.stringify(data)
				},
				dataType : "json",
				success : function(data) {
					 if (data == 1) {
						layui.use('layer',function() {
						 var layer = layui.layer;
							layer.msg('登记成功！',{	time : 1500},
							 function() {
								window.location = "BillManageServlet?method=QueryAll";
							});
						});
					}
				}
			});
			return false;
		});
	});
</script>

</head>

<body>
	<div style="width: 30%; margin: 0 auto; margin-top: 60px;">
		<form class="layui-form" action="../ContractServlet?type=input"
			method="post" enctype="multipart/form-data">
			<div class="layui-form-item">
				<div class="layui-input-block">
					<input type="hidden" name="o_id" id="o_id" required
						lay-verify="required" placeholder="" autocomplete="off"
						class="layui-input" readonly="readonly" value="${o_id }">
				</div>
			</div>
			<div class="layui-form-item">
				<label class="layui-form-label">消费物品</label>
				<div class="layui-input-block">
					<input type="text" name="b_name" required lay-verify="required"
						placeholder="" autocomplete="off" class="layui-input">
				</div>
			</div>
			<div class="layui-form-item">
				<label class="layui-form-label">消费数量</label>
				<div class="layui-input-block">
					<input type="text" name="b_num" required lay-verify="required"
						placeholder="" autocomplete="off" class="layui-input">
				</div>
			</div>
			<div class="layui-form-item">
				<label class="layui-form-label">消费金额</label>
				<div class="layui-input-block">
					<input type="text" name="b_price" required lay-verify="required"
						placeholder="" autocomplete="off" class="layui-input">
				</div>
			</div>
			<div class="layui-form-item">
				<label class="layui-form-label">消费时间</label>
				<div class="layui-input-block">
					<input type="text" class="layui-input" name="b_time" id="b_time"
						required lay-verify="required">
				</div>
			</div>

			<div class="layui-input-block">
				<button class="layui-btn" lay-submit lay-filter="*">记录</button>
			</div>
		</form>
	</div>
	<script>
		layui.use('laydate', function() {
			var laydate = layui.laydate;

			//执行一个laydate实例
			laydate.render({
				elem : '#b_time', //指定元素
				type : 'datetime'
			});
		});
	</script>

</body>

</html>