<!DOCTYPE html>
<% 
	_G.package.loaded["bookstore.base"] = nil 
	_G.package.loaded["bookstore.mgr_session"] = nil 
	_G.package.loaded["bookstore.mgr_login"] = nil 
	local base = _G.require("bookstore.base") 
	local mgr_session = _G.require("bookstore.mgr_session") 
	local mgr_login = _G.require("bookstore.mgr_login") 
	local trace_out = _G.trace_out   
	local tostring = _G.tostring   
 %>
<html>
	<head>
		<title>用户管理</title>
		<%=base.head %>
	</head>
	<body>	
		<div data-role="page" id="main">
			 <img src="images/login_judge.jpg" width=100%/>	
				<%
					trace_out("22222222222222\n\n\n\n\n\n");
					trace_out(user .."\n");
					trace_out(psw .."\n");
					local res = mgr_login.check_user(user,psw);
					
					if(res == -1)then
						trace_out("user isn't regist\n");
				%>
						<h1 align="center">用户没有注册，请联系国瑞！</h1>
				<%	elseif(res == -2)then	%>
						<h1 align="center">密码错误，请重新输入。</h1>
						<meta http-equiv="refresh" content="2;url=login.lp">
				<%	else %>		
					<h1 align="center">登录成功，即将自动跳转到管理界面</h1>
					<meta http-equiv="refresh" content="2;url=admin_mgr.lp?user=<%=user %>" method="post">
				<%	end %>	
			
		</div>
		</body>
</html>
