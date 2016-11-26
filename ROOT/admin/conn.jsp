<%
	Class.forName("com.mysql.jdbc.Driver");//加载数据库驱动 
	Connection conn = DriverManager.getConnection("jdbc:mysql://59.111.120.134:3306/test?user=myweb&password=aaaaaa&useUnicode=true&characterEncoding=GB2312");//连接数据库
%>