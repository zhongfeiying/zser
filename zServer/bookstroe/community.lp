<!DOCTYPE html>
<% 
	_G.package.loaded["bookstroe.base"] = nil 
	local base = _G.require("bookstroe.base") 

	_G.package.loaded["bookstroe.mgr_session"] = nil 
	local mgr_session = _G.require("bookstroe.mgr_session") 
	
	%>
<html>
	<head>
		<title>社区信息</title>
		<%=base.head %>
	</head>
	<body>
		<div data-role="page">
			 <img src="images/car_2.jpg" width=100%/>
	
			<div data-role="content" >
					<ol data-role="listview">
					  <li><a href="login.lp">培训</a></li>
					  <li><a href="#">运动</a></li>					
					  <li><a href="#">托管</a></li>					
					  <li><a href="#">关于</a></li>
					</ol>
			
			</div>
			
			
			<%=base.footer_main() %>		
		</div>
	</body>
</html>
