<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<%@ include file="conn.jsp"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>addzh_ok</title>
</head>

<body>
<%! String user,pwd;%>
<%
user = request.getParameter("user");
pwd = request.getParameter("password");
if(user!=null || pwd!=null){
byte c[] = user.getBytes("ISO-8859-1");
user = new String(c);
%>
<%
	PreparedStatement ps = conn.prepareStatement("select * from admin where zh='"+ user +"'");	
	ResultSet rs = ps.executeQuery();
if(rs.next())
{
	out.println("<script>alert('账号已存在，请重新注册！')</script>");
}
else
{
	ps.executeUpdate("insert into admin (zh,mm) values('" + user + "','" + pwd + "')");
	out.println("<script>alert('账号注册成功！')</script>");
}}
%>
<script type="text/JavaScript">
   window.location.href="addzh.jsp";    
</script>
</body>
</html>