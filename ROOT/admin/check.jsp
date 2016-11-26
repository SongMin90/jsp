<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<%@ include file="conn.jsp"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>check</title>
</head>

<body>
<%! String user,pwd;%>
<%
user = request.getParameter("user");
pwd = request.getParameter("password");
if(user!=null && user!=null){
byte c[] = user.getBytes("ISO-8859-1");
user = new String(c);
session.setAttribute("username",user);
%>
<%
	PreparedStatement ps = conn.prepareStatement("select * from admin where zh='"+ user +"' and mm='"+ pwd +"'");
	ResultSet rs = ps.executeQuery();
	if(rs.next()){
		if(rs.getString("zh").equals(user)&&rs.getString("mm").equals(pwd)){	%>
			<jsp:forward page="main.jsp" />
		<% }
		else{
        	out.print("<script>alert('账号或密码错误，请重新输入！')</script>");
			response.sendRedirect("error.jsp");
		}
	}
	else{	%>
		<jsp:forward page="error.jsp" />
	<%}	}else{response.sendRedirect("login.jsp");}
%>
</body>
</html>