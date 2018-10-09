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
				<c:set var="sum" value="0"></c:set>
				<c:forEach var="BillDetail" items="${BillDetail }">
					<tr>
						<td>${BillDetail.b_name }</td>
						<td>${BillDetail.b_num }</td>
						<td>${BillDetail.b_price }</td>
						<td>${BillDetail.b_time }</td>
					</tr>
					<c:set var="sum" value="${sum+BillDetail.b_price }"></c:set>
				</c:forEach>
			</tbody>
		</table>
		<p align="right" style="padding: 50px">合计：${sum }￥</p>
	</div>
</body>
</html>