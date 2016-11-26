<%@ page contentType="text/html; charset=gb2312" %>
<div class="d">
	<p class="p1">
		<a>地址：江西省九江市濂溪大道88号九江职业大学信息工程学院</a>
		<a>电话：0792－8367663</a>
		<a>邮编：332000</a>
	</p>
	<p class="p2">
    	<%!int x;%>
        <%
			if(session.isNew()){
				x+=1;
				session.setAttribute("c",x);
			}
		%>
		<a>版权所有 2015 九江职业大学信息工程学院 All Rights Reserved&nbsp;&nbsp;您是本站第<%=session.getAttribute("c")%>位访问者</a>
	</p>
    <div class="b1">
		<div id="wrapper1">
			<dl id="ticker-11">
				<dt><a>富强</a></dt>
                <dt><a>民主</a></dt>
                <dt><a>文明</a></dt>
                <dt><a>和谐</a></dt>
                <dt><a>自由</a></dt>
                <dt><a>平等</a></dt>
                <dt><a>公正</a></dt>
                <dt><a>法治</a></dt>
                <dt><a>爱国</a></dt>
                <dt><a>敬业</a></dt>
                <dt><a>诚信</a></dt>
                <dt><a>友善</a></dt>
			</dl>
		</div>
	</div>
</div>