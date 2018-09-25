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
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<title>订单管理</title>
<link rel="stylesheet" href="css/layui.css">
<script src="layui.js"></script>
</head>

<body>

	<div style="width: 100%; margin: 0 auto; padding-top: 30px;"
		align="center">
		<form class="layui-form" action="OrderServlet?method=Query"
			method="post" style="width: 80%;">
			<div class="layui-form-item" style="width: 350px">
				<label class="layui-form-label">预留手机号</label>
				<div class="layui-input-block">
					<input type="text" name="oc_phone" id="oc_phone" required
						lay-verify="required|phone" placeholder="" autocomplete="off"
						class="layui-input">
				</div>
				<br />
				<div class="layui-input-block" align="center">
					<button type="submit" class="layui-btn" lay-submit
						lay-filter="formDemo">查询</button>
					<button type="reset" class="layui-btn layui-btn-primary">重置</button>
				</div>
			</div>
		</form>
		<c:if test="${empty order }">
			<p align="center" style="color: red; margin: 10px auto;">
				<c:out value="查询失败！"></c:out>
			</p>
		</c:if>
		<div class="layui-input-block" align="left">
			<a class="layui-btn" lay-submit lay-filter="formDemo"
				href="OrderServlet?method=QueryAll">查看全部</a>
		</div>
		<table class="layui-table">
			<colgroup>
			</colgroup>
			<thead>
				<tr>
					<th>订单编号</th>
					<th>姓名</th>
					<th>手机号</th>
					<th>预计到达时间</th>
					<th>预计离开时间</th>
					<th>房间类型</th>
					<th>房间号</th>
					<th>入住人数</th>
					<th>入住时间</th>
					<th>退房时间</th>
					<th>消费金额</th>
					<th>订单状态</th>
					<th></th>

				</tr>
			</thead>
			<tbody>

				<c:forEach var="order" items="${order }">
					<tr>
						<td>${order.o_id }</td>
						<td>${order.oc_name }</td>
						<td>${order.oc_phone }</td>
						<td>${order.o_arriva_time }</td>
						<td>${order.o_departure_time }</td>
						<td>${order.r_type }</td>
						<td>${order.r_num }</td>
						<td>${order.o_people_num }</td>
						<td>${order.o_checkin_time }</td>
						<td>${order.o_checkout_time }</td>
						<td>${order.price }</td>
						<td><c:if test="${order.o_type == 0}">
								<c:out value="预定中" />
							</c:if> <c:if test="${order.o_type == 1}">
								<c:out value="入住中" />
							</c:if> <c:if test="${order.o_type == 2}">
								<c:out value="已结账" />
							</c:if> <c:if test="${order.o_type == 3}">
								<c:out value="预订已取消" />
							</c:if>
							 <c:if test="${order.o_type == 4}">
								<c:out value="未结账" />
							</c:if></td>
						<td><c:if test="${order.o_type == 0}">
								<a class="layui-btn" lay-submit lay-filter="formDemo"
									href="OrderServlet?method=Cancel&o_id=${order.o_id }">取消预订</a>
							</c:if></td>
					</tr>
				</c:forEach>

			</tbody>
		</table>
	</div>
	<div id="demo3" align="right"></div>
	<script>
			layui.use('laydate', function() {
				var laydate = layui.laydate;

				//执行一个laydate实例
				laydate.render({
					elem: '#test1' //指定元素
				});
			});

			//Demo
			layui.use('form', function() {
				var form = layui.form;

			});

			layui.use('laypage', function(){
				  var laypage = layui.laypage;
				  
				  //执行一个laypage实例
				  laypage.render({
				    elem: 'demo3' //注意，这里的 test1 是 ID，不用加 # 号
				    ,count: ${total } //数据总数，从服务端得到
				    ,limit: 10
				    ,curr: ${page }
				    ,jump: function(obj, first){
				        //得到了当前页，用于向服务端请求对应数据
				        if (!first){
				        	var curr = obj.curr;
					        location.href ="${url }"+curr;
					        window.location.reload()
					        }
				        
				    }
				    ,first: '首页'
				    ,last: '尾页'
				  });
				});
		</script>
</body>

</html>