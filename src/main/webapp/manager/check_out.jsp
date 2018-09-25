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
<title>结账退房</title>
<link rel="stylesheet" href="css/layui.css">
<script src="layui.js"></script>
</head>

<body>
	<div style="width: 80%; margin: 0 auto; padding-top: 30px;"
		align="center">

		<form class="layui-form" action="CheckOutServlet?method=Query"
			method="post" style="width: 30%;">
			<div class="layui-form-item">
				<label class="layui-form-label">房间号</label>
				<div class="layui-input-block">
					<input type="text" id="r_num" name="r_num" required
						lay-verify="required" placeholder="" autocomplete="off"
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
	</div>
	<div class="layui-input-block" align="left">
		<a class="layui-btn" href="CheckOutServlet?method=QueryAll">查看全部</a>
	</div>
	<div style="width: 100%; margin: 0 auto;" align="center">
		<table class="layui-table">
			<colgroup>
			</colgroup>
			<thead>
				<tr>
					<th>订单号</th>
					<th>房间号</th>
					<th>入住时间</th>
					<th>姓名</th>
					<th>性别</th>
					<th>手机号</th>
					<th>身份证号</th>
					<th>房间状态</th>
					<th></th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="Checkin" items="${Checkin }">
					<tr>
						<td>${Checkin.o_id }</td>
						<td>${Checkin.r_num }</td>
						<td>${Checkin.o_checkin_time }</td>
						<td>${Checkin.oc_name }</td>
						<td>${Checkin.oc_sex }</td>
						<td>${Checkin.oc_phone }</td>
						<td>${Checkin.oc_idnum }</td>
						<td align="center"><c:if test="${Checkin.o_type==1 }">
								<c:out value="入住中"></c:out>
							</c:if> <c:if test="${Checkin.o_type==4 }">
								<c:out value="已退房未结账"></c:out>
							</c:if></td>
						<td align="center"><c:if test="${Checkin.o_type==1 }">
								<a class="layui-btn"
									href="CheckOutServlet?method=CheckOut&o_id=${Checkin.o_id }&r_num=${Checkin.r_num }">退房</a>
							</c:if> <c:if test="${Checkin.o_type==4 }">
								<a class="layui-btn"
									href="CheckOutServlet?method=Bill&o_id=${Checkin.o_id }">账单</a>
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
				elem : '#test1' //指定元素
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