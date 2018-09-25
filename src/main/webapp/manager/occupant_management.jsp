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
<title>入住人员信息</title>
<link rel="stylesheet" href="css/layui.css">
<script src="layui.js"></script>
</head>

<body>

	<div style="width: 900px; margin: 0 auto; padding-top: 30px;"
		align="center">
		<form class="layui-form" action="OccupantManageServlet?method=Query"
			style="width: 80%;" method="post">

			<div style="width: 350px;">
				<label class="layui-form-label">身份证号</label>
				<div class="layui-input-block">
					<input type="text" name="oc_idnum" lay-verify="required|identity"
						placeholder="" autocomplete="off" class="layui-input">
				</div>
				<br />
			</div>
			<div>
				<button class="layui-btn" lay-submit lay-filter="formDemo"
					type="sumbit">查询</button>
				<button type="reset" class="layui-btn layui-btn-primary">重置</button>
			</div>
		</form>

	</div>
	<c:if test="${empty Occupant }">
		<p align="center" style="color: red; margin: 10px auto;">
			<c:out value="查询失败！"></c:out>
		</p>
	</c:if>
	<div style="width: 100%; margin: 0 auto;" align="center">
		<div class="layui-input-block" align="left">
			<a class="layui-btn" lay-submit lay-filter="formDemo"
				href="OccupantManageServlet?method=Rtype">登记</a> <a
				class="layui-btn" lay-submit lay-filter="formDemo"
				href="OccupantManageServlet?method=QueryAll">查看全部</a>
		</div>
		<table class="layui-table">
			<colgroup>
			</colgroup>
			<thead>
				<tr>
					<th>入住日期</th>
					<th>退房日期</th>
					<th>房间号</th>
					<th>姓名</th>
					<th>性别</th>
					<th>手机号</th>
					<th>身份证号</th>
					<th>房间状态</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="Occupant" items="${Occupant }">
					<tr>
						<td>${Occupant.o_checkin_time }</td>
						<td>${Occupant.o_checkout_time }</td>
						<td>${Occupant.r_num }</td>
						<td>${Occupant.oc_name }</td>
						<td>${Occupant.oc_sex }</td>
						<td>${Occupant.oc_phone }</td>
						<td>${Occupant.oc_idnum }</td>
						<td><c:if test="${Occupant.o_type == 1}">
								<c:out value="入住中" />
							</c:if> <c:if test="${Occupant.o_type == 2}">
								<c:out value="已结账" />
							</c:if>
							<c:if test="${Occupant.o_type == 4}">
								<c:out value="已退房未结账" />
							</c:if></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	<div id="demo3" align="right"></div>
	<script>
		//Demo
		layui.use('form', function() {
			var form = layui.form;

		});

		layui.use('laypage', function() {
			var laypage = layui.laypage;

			//执行一个laypage实例
			laypage.render({
				elem : 'demo3' //注意，这里的 test1 是 ID，不用加 # 号
				,
				count : 1 //数据总数，从服务端得到
				,
				curr : 1,
				jump : function(obj, first) {
					//得到了当前页，用于向服务端请求对应数据
					if (!first) {
						var curr = obj.curr;
						location.href = "${url }" + curr;
					}

				},
				first : '首页',
				last : '尾页'
			});
		});
	</script>
</body>

</html>