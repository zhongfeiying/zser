<!DOCTYPE html>
<% 
	_G.package.loaded["bookstore.base"] = nil 
	local base = _G.require("bookstore.base") 

	_G.package.loaded["bookstore.mgr_session"] = nil 
	local mgr_session = _G.require("bookstore.mgr_session") 
	
	%>
<html>
<head>
<title>登陆个人中心</title>
	<%=base.head %>
</head>
<body>
 <div data-role="page">
	<img src="images/login_judge.jpg" width=100%/>			
		<h1 align="center">欢迎登陆个人中心！</h1>	
	 <div data-role="content">
		 <form action="login_judge.lp" method="post">
			<ul data-role="listview" data-insert="true">
				<li data-role="fieldcontain">
					<label for="user">用户名称：</label>
						<input type = "text" name = "user" id="user">
				</li>
				<li data-role="fieldcontain">
					<label for="psw">密码：</label>
						<input type="password" name="psw" id = "psw">
				</li>
				<li data-role="fieldcontain">
					<input type = "submit" value = "登录" data-theme="a" >		
				</li>
		</form>	
		<li data-role="fieldcontain">
		<form action="register.lp" method="post">
			<input type = "submit" value = "注册" data-theme="a">
		</form>
		</li>
		
				
	
	 </div>
	 <%=base.footer_main() %>
 </div>
</body>
</html>
