<!DOCTYPE html>
<% 
	_G.package.loaded["bookstore.base"] = nil 
	_G.package.loaded["bookstore.mgr_session"] = nil 
	_G.package.loaded["bookstore.mgr_login"] = nil 
	local base = _G.require("bookstore.base") 
	local mgr_session = _G.require("bookstore.mgr_session") 
	local mgr_login = _G.require("bookstore.mgr_login") 
	local trace_out = _G.trace_out   
 %>
 

<html>
	<head>
		<title>用户注册完成</title>
		<%=base.head %>
	</head>
	<body>	
		<div data-role="page" id="main">
			 <img src="images/register_judge.jpg" width=100%/>	
				<%
					local res = mgr_login.register_user(user,pass,confirm_pass,province,city,area);					
					if(res == -1)then
						trace_out("user isn't regist\n");
				%>
						<h1 align="center">密码两次输入不同，请重新输入！</h1>
						<meta http-equiv="refresh" content="2;url=register.lp">
				<%	else %>		
					<h1 align="center">注册成功，即将自动跳转到用户界面</h1>
					<meta http-equiv="refresh" content="2;url=me.lp?user=<%=user %>" method="post">
				<%	end %>	
			
		</div>
		</body>
</html>
