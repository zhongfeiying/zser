<!DOCTYPE html>
<%
	_G.package.loaded["bookstore.base"] = nil 
	local base = _G.require("bookstore.base") 

	_G.package.loaded["bookstore.mgr_session"] = nil 
	local mgr_session = _G.require("bookstore.mgr_session") 
	
%>
<html>
<head>
	<title>用户注册</title>	
	<%=base.head %>
</head>
<body>
	<div data-role="page">
	<img src="images/register_judge.jpg" width=100%/>			
		<h1 align="center">请输入用户信息:</h1>	
		<div data-role="content">
			<form action="register_judge.lp" method="post">
				<ul data-role="listview" data-insert="true">
					<li data-role="fieldcontain">
						<label for="user">用户名称:</label>
							<input type = "text" name = "user" id="user" placeholder="用户名/手机号/邮箱/QQ/...">
					</li>
					<li data-role="fieldcontain">
						<label for="pass">密码:</label>
							<input type="password" name="pass" id = "pass" placeholder="******">
					</li>
					<li data-role="fieldcontain">
						<label for="confirm_pass">密码确认:</label>
							<input type="password" name="confirm_pass" id = "confirm_pass" placeholder="******">
					</li>
			
					<li data-role="fieldcontain">
						<label for="province">省份:</label>
							 <select name="province" id="province">
								 <option value="mon">辽宁</option>
								 <option value="tue">山东</option>
							</select>
	
					</li>
					<li data-role="fieldcontain">
						<label for="city">城市:</label>
							 <select name="city" id="city">
								 <option value="mon">沈阳</option>
								 <option value="tue">大连</option>
							</select>
	
					</li>
					
					<li data-role="fieldcontain">
						<label for="area">所在区:</label>
							 <select name="area" id="area">
								 <option value="mon">甘井子区</option>
								 <option value="tue">中山区</option>
								 <option value="wed">西岗区</option>
								 <option value="thu">沙河口区</option>
								 <option value="fri">高新园区</option>
								 <option value="sat">旅顺</option>
								 <option value="sun">其它</option>
							</select>
	
					</li>
				
					<li data-role="fieldcontain">
						<input type = "submit" value = "注册" data-theme="a">
					</li>
				</ul>
			</form>
		</div>
		<%=base.footer %>
	</div>
</body>
</html>
