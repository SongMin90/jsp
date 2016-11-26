<%@ page language="java" contentType="text/html" pageEncoding="gb2312"%>
<%@ page import="java.sql.*" %>
<%@ include file="conn.jsp"%>
<html>
  <head>
    <title>main</title>

  </head>
  
  <body>
  <table border="1" width="70%" align="center">
  <caption><font size="6">»¶Ó­<font color="#FF0000"><%=session.getAttribute("username")%></font>ÄúµÄ¹âÁÙ</font></caption>
  	<tr>
  		<th>ID</th>
  		<th>ÕËºÅ</th>
  		<th>ÃÜÂë</th>
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