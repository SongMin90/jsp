<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>用户注册</title>
<link href="../css/login.css" rel="stylesheet" type="text/css" />
<script src="../js/jquery-1.9.1.min.js" type="text/javascript"></script>
<script src="../js/login.js" type="text/javascript"></script>
<body>
	<div id="a"></div>
	<div id="b">
            <div id="b1">
                <div id="tou"></div>
                <div class="initial_left_hand" id="left_hand"></div>
                <div class="initial_right_hand" id="right_hand"></div>
            </div>
            <form action="addzh_ok.jsp" method="post" name="form" id="form" onsubmit="return decide()" >
            <div id="b2">
            	<label for="user"></label>	
                <span id="logo1"></span>               
                <input class="input" id="user" name="user" type="text" placeholder="请输入用户名或邮箱" >
            </div>
            <div id="b3">          	
                <span id="logo2"></span>
                <input class="input" id="password" name="password" type="password" placeholder="请输入密码" >
            </div>
            <div id="b5">
                <span id="logo3"></span>
                <input class="input" id="password1" name="password1" type="password" placeholder="请再次输入密码" >
            </div>
            <div id="b4">
                <input id="button1" name="" type="submit" value="提交" />
                <a href="login.jsp"><input id="button2" name="" type="button" value="登入" /></a>
            </div>
        </form>
	</div>
<!--判断输入框是否为空-->
<script language="javascript">
	function decide()
	{   
		if(document.form.user.value=="")
		{   
			alert("请输入账号！");
			document.form.user.focus();
			return false;
		}
		if(document.form.user.value.length>10)
		{
			alert("账号长度需在10位以下！");
			document.form.user.focus();
			return false;
		}
		if(document.form.password.value=="")
		{
			alert("请输入密码！");
			document.form.password.focus();
			return false;
		}
		if(document.form.password.value.length>10)
		{
			alert("密码长度需在10位以下！");
			document.form.password.value="";
			document.form.password1.value="";
			document.form.password.focus();
			return false;
		}
		if(document.form.password1.value=="")
		{
			alert("请再次输入密码！");
			document.form.password1.focus();
			return false;
		}
		if(document.form.password1.value!=document.form.password.value)
		{
			alert("两次输入的密码不一致！");
			document.form.password.value="";
			document.form.password1.value="";
			document.form.password.focus();
			return false;
		}
		return true;
	}
</script>   
</body> 
</html>