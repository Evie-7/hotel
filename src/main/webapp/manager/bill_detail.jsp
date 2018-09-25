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
<title>账单明细</title>
<link rel="stylesheet" href="css/layui.css">
<script src="layui.js"></script>


</head>

<body>
	<div style="width: 60%; margin: 0 auto;" align="center">
		<table class="layui-table">
			<colgroup>
			</colgroup>
			<thead>
				<tr>
					<th>消费物品</th>
					<th>消费数量</th>
					<th>消费金额</th>
					<th>消费时间</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="Detail" items="${Detail }">
					<tr>
						<td>${Detail.b_name }</td>
						<td>${Detail.b_num }</td>
						<td>${Detail.b_price }</td>
						<td>${Detail.b_time }</td>
					</tr>
				</c:forEach>

			</tbody>
		</table>
		<p align="right" style="padding: 50px">合计：${Sum }￥</p>
		<c:if test="${msg==1 }">
		<p align="center" style="padding-bottom: 50px">
			<a class="layui-btn"
				href="CheckOutServlet?method=Confirm&o_id=${o_id }">确认缴费</a>
		</p>
		</c:if>
	</div>
</body>

</html>