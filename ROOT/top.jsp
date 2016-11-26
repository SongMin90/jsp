<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<%@ include file="admin/conn.jsp"%>
<div class="a">
	<div class="a1">
		<div class="logo">
			<img src="images/logo.gif" width="89" height="89" />
		</div>
		<div class="dh">
            <div class="dh1">
                <div class="icon"></div>
                <em>导航</em>
                <i class="i"></i>
            </div>
            <div class="dh2">
            	<%
					PreparedStatement ps = conn.prepareStatement("select * from dh");
					ResultSet rs = ps.executeQuery();
					while(rs.next()){
				%>
            	<a href="allnews.jsp"><%=rs.getString("dh_name")%></a>
                <%
					}
					rs.close();
					ps.close();
					conn.close();
				%>
            </div>
		</div>
        <div class="search">
        	<input type="text" class="text" data-hook="search-input" autocomplete="off" name="word">
            <button type="submit" class="submit" ></button>
        </div>        
        <div class="register">&nbsp;&nbsp;&nbsp;注&nbsp;&nbsp;册<div class="register_ok"><a href="admin/addzh.jsp">用户注册</a></div></div>  
        <div class="enter">&nbsp;&nbsp;&nbsp;登&nbsp;&nbsp;入<div class="enter_ok"><a href="admin/login.jsp">登入后台</a></div></div>
        <div class="home"><a href="index.jsp"><img src="images/home.png" width="14" height="14" /></a></div>
	</div>   
</div>
<div class="b">
	<div id="wrapper">
        <dl id="ticker-1">
        	<dt id="news">最新通知：</dt>
                <dt><a href="#">目前网站还在建设中...</a></dt>
                <dt><a href="#">已知bug：中文名无法登入</a></dt>
                <dt><a href="#">已知bug：手机排版问题</a></dt>
                <dt><a href="#">双11，你剁手了吗</a></dt>
                <dt><a href="#">2016毕业季到了</a></dt>
                <dt><a href="#">身边的那些事</a></dt>
			</dl>
		</div>
	</div>
</div>