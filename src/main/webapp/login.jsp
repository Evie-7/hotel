<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String path = request.getScheme() + "://" + request.getHeader("host") + request.getContextPath() + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=path%>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登录</title>
<link rel="stylesheet" href="css/reset.css">
<link rel="stylesheet" href="css/supersized.css">
<link rel="stylesheet" href="css/style.css">
</head>
<body>
	<div class="page-container">
		<h1>欢迎登录XX酒店管理系统</h1>
		<form action="LoginController/loginProving" method="post">
			<input type="text" name="a_name" class="name" required
				lay-verify="required" placeholder="请输入用户名"> <input
				type="password" name="a_pwd" class="pwd" required
				lay-verify="required" placeholder="请输入用户密码！"> 
				<%-- <input
				style="width: 125px; height: 42px;" type="text" class="code"
				required lay-verify="required" name="code" placeholder="请输入验证码！">
			<img id="codeImg"
				src="LoginValidateCodeServlet?random=<%=System.currentTimeMillis()%>"
				style="width: 90px; height: 40px; margin-top: 25px; padding: 0 15px;" />
			<font style="font-size: 10px;"><u><a
					href="javascript:changeCode();">看不清换一张</a></u></font> --%>
			<button type="submit" class="submit_button">登录</button>
			<div class="error">
				<span>+</span>
			</div>
		</form>
	</div>
</body>
<script type="text/javascript">
	function changeCode() {
		var id = document.getElementById("codeImg");
		id.src = "LoginValidateCodeServlet?time=" + Math.random();

	}
</script>
<script src="js/jquery.js"></script>
<script src="js/supersizedmin.js"></script>
<script src="js/supersized.js"></script>
<script src="js/scripts.js"></script>
</html>