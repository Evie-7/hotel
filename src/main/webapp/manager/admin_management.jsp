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
<title>用户管理</title>
<link rel="stylesheet" href="css/layui.css">
<script src="layui.js"></script>
</head>

<body>
	<div style="width: 100%; margin: 0 auto; padding-top: 30px;"
		align="center">
		<div style="width: 50%; margin: 0 auto; padding-top: 30px;">
			<form class="layui-form" action="UserController/queryAdminByName"
				method="post" style="width: 100%;">
				<div class="layui-form-item">
					<div style="width: 300px">
						<input type="text" name="a_name" required lay-verify="required"
							placeholder="请输入用户名" autocomplete="off" class="layui-input">
					</div>
					<br />
					<div align="center">
						<button class="layui-btn" lay-submit lay-filter="formDemo">查询</button>
						<button type="reset" class="layui-btn layui-btn-primary">重置</button>
					</div>
				</div>
			</form>
			<div align="left">
				<a class="layui-btn" lay-submit lay-filter="formDemo"
					href="UserController/queryAllAdmin">查看全部</a> <a class="layui-btn"
					lay-submit lay-filter="formDemo" href="manager/admin_add.jsp">添加</a>

			</div>
			<table class="layui-table">
				<colgroup>
					<col>
					<col>
					<col width="100">
					<col width="100">
				</colgroup>
				<thead>
					<tr>
						<th>用户名</th>
						<th>密码</th>
						<th></th>
						<th></th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="UserInfo" items="${UserInfo }">
						<tr>
							<td>${UserInfo.a_name }</td>
							<td>${UserInfo.a_pwd }</td>
							<td align="center"><a type="submit" class="layui-btn"
								lay-submit lay-filter="formDemo"
								href="manager/admin_update.jsp?a_id=${UserInfo.a_id }&a_name=${UserInfo.a_name }&a_pwd=${UserInfo.a_pwd }">修改</a>
							</td>
							<td align="center"><a type="submit" class="layui-btn"
								lay-submit namelay-filter="formDemo"
								href="UserController/deleteAdminById?a_id=${UserInfo.a_id }">删除</a>
							</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
			<div id="laypage" align="right"></div>
		</div>
	</div>
	<script>

		//Demo
		layui.use('form', function() {
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
				        location.href ='UserController/queryAllAdmin?pageNum='+curr;
				        }
			    },
			    first: '首页',
			    last: '尾页'
			  });
			});
	</script>
</body>

</html>