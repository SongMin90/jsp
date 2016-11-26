<%@ page language="java" contentType="text/html" pageEncoding="gb2312"%>
<%@ page import="java.sql.*" %>
<%@ include file="conn.jsp"%>
<html>
  <head>
    <title>main</title>

  </head>
  
  <body>
  <table border="1" width="70%" align="center">
  <caption><font size="6">欢迎<font color="#FF0000"><%=session.getAttribute("username")%></font>您的光临</font></caption>
  	<tr>
  		<th>ID</th>
  		<th>账号</th>
  		<th>密码</th>
  	</tr>
    <%
		PreparedStatement ps = conn.prepareStatement("select * from admin");
		ResultSet rs = ps.executeQuery();
    	int i = 1;
    	while(rs.next()){
    %>
    <tr align="center">
    	<td><%=i %></td>
		<td><%=rs.getString("zh")%></td>
    	<td><%=rs.getString("mm")%></td>
    </tr>
    <%
    	i++ ;
    	}
    	rs.close();
    	ps.close();
    	conn.close();
     %>
     </table>
  </body>
</html>