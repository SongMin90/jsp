<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>error</title>
</head>

<body>
<%
	out.print("<script>alert('账号或密码错误，请重新输入！')</script>");
%>
<script type="text/JavaScript">
   window.location.href="login.jsp";    
</script>
</body>
</html>