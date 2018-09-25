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
<title>客房管理</title>
<link rel="stylesheet" href="css/layui.css">
<script src="layui.js"></script>
</head>

<body>
	<div style="width: 100%; margin: 0 auto; padding-top: 30px;"
		align="center">
		<div style="width: 50%; margin: 0 auto; padding-top: 30px;"
			align="center">

			<form class="layui-form" action="RoomController/selectRoomByNum"
				method="post">
				<div class="layui-form-item">
					<div style="width: 300px">
						<input type="text" id="r_num" name="r_num" required
							lay-verify="required|number" placeholder="请输入房间号"
							autocomplete="off" class="layui-input">
					</div>
					<br />
					<div align="center">
						<button type="submit" class="layui-btn" lay-submit
							lay-filter="formDemo" maxlength="4">查询</button>
						<button type="reset" class="layui-btn layui-btn-primary">重置</button>
					</div>

				</div>
			</form>
		</div>
		<%-- <c:if test="${empty RoomInfo }">
		<p align="center" style="color: red; margin: 10px auto;">
			<c:out value="查询失败！"></c:out>
		</p>
	</c:if> --%>

		<div style="width: 50%; margin: 0 auto;" align="center">
			<div align="left">
				<a class="layui-btn" href="RoomController/queryRoom">查看全部</a> <a
					class="layui-btn" href="manager/room_add.jsp">登记房间</a>
			</div>
			<table class="layui-table">
				<colgroup>
					<col>
					<col>
					<col>
					<col width="100">
					<col width="100">
				</colgroup>
				<thead>
					<tr>
						<th>房间号</th>
						<th>房间类型</th>
						<th>房间价格</th>
						<th></th>
						<th></th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="RoomInfo" items="${RoomInfo }">
						<tr>
							<td>${RoomInfo.r_num }</td>
							<td>${RoomInfo.r_type }</td>
							<td>${RoomInfo.r_price }</td>
							<td align="center"><a class="layui-btn"
								href="manager/room_update.jsp?r_id=${RoomInfo.r_id }&r_num=${RoomInfo.r_num }&r_type=${RoomInfo.r_type }&r_price=${RoomInfo.r_price }">修改</a>
							</td>
							<td align="center"><a class="layui-btn"
								href="RoomController/deleteRoomById?r_id=${RoomInfo.r_id }">删除</a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
			<div id="laypage" align="right"></div>
		</div>
	</div>
	<script>

		//Demo
		 layui.use('form', function(){
			var form = layui.form;

		}); 

		 layui.use('laypage', function(){
			  var laypage = layui.laypage;
			  
			  //执行一个laypage实例
			  laypage.render({
			    elem: 'laypage', //注意，这里的 test1 是 ID，不用加 # 号
			    count: ${pager.totalRecord}, //数据总数，从服务端得到
			    limit: ${pager.pageSize},
			    curr: ${pager.pageNum},
			    jump: function(obj, first){
			        //得到了当前页，用于向服务端请求对应数据
			        if (!first){
			        	var curr = obj.curr;
				        location.href ='RoomController/queryRoom?pageNum='+curr;
				        }
			    },
			    first: '首页',
			    last: '尾页'
			  });
			});
	</script>
</body>

</html>