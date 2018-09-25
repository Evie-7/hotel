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
<title>账单管理</title>
<link rel="stylesheet" href="css/layui.css">
<script src="layui.js"></script>
<script src="jquery1.11.3.js"></script>
</head>

<body>
	<div style="width: 100%; margin: 0 auto; padding-top: 30px;"
		align="center">
		<form class="layui-form" action="BillManageServlet?method=Query"
			method="post" style="width: 100%;">
			<div class="layui-form-item">
				<div style="width: 300px">
					<input type="text" name="r_num" required
						lay-verify="required|number" placeholder="房间号" autocomplete="off"
						class="layui-input" value="">
				</div>
				<br />
				<div align="center">
					<button class="layui-btn" lay-submit lay-filter="formDemo"
						type="sumbit">查询</button>
					<button type="reset" class="layui-btn layui-btn-primary">重置</button>
				</div>
			</div>
		</form>
		<div class="layui-input-block" align="left">
			<a class="layui-btn" href="BillController/queryOrder">查询所有</a>
		</div>
	</div>
	<div style="width: 100%; margin: 0 auto;" align="center">
		<table class="layui-table">
			<colgroup>
			</colgroup>
			<thead>
				<tr>
					<th>房间号</th>
					<th>入住时间</th>
					<th>退房时间</th>
					<th>姓名</th>
					<th>手机号</th>
					<th>消费总额</th>
					<th>账单状态</th>
					<th></th>
					<th></th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="BillInfo" items="${BillInfo }">
					<tr>
						<td>${BillInfo.r_num }</td>
						<td>${BillInfo.o_checkin_time }</td>
						<td>${BillInfo.o_checkout_time }</td>
						<td>${BillInfo.oc_name }</td>
						<td>${BillInfo.oc_phone }</td>
						<td>${BillInfo.total_price }</td>
						<td>
							<%-- <c:if test="${BillInfo.o_type==4 }">
								<c:out value="未缴费"></c:out>
							</c:if> <c:if test="${BillInfo.o_type==1 }">
								<c:out value="未缴费"></c:out>
							</c:if> <c:if test="${BillInfo.o_type==2 }">
								<c:out value="已缴费"></c:out>
							</c:if> --%>
						</td>
						<td align="center">
							<%-- <c:if test="${BillInfo.o_type==1 }">
								<a class="layui-btn"
									href="BillManageServlet?method=Add&type=jump&o_id=${Bill.o_id }">记录</a>
							</c:if> --%>
						</td>
						<td align="center"><a class="layui-btn" href="#">明细</a></td>
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
					        }
				        
				    }
				    ,first: '首页'
				    ,last: '尾页'
				  });
				});
		</script>
</body>

</html>