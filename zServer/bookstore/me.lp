<!DOCTYPE html>
<% 
	_G.package.loaded["bookstore.base"] = nil 
	local base = _G.require("bookstore.base") 

	_G.package.loaded["bookstore.mgr_session"] = nil 
	local mgr_session = _G.require("bookstore.mgr_session") 
	
	%>
<html>
	<head>
		<title>用户信息</title>
		<%=base.head %>
	</head>
	<body>
		<div data-role="page">
			 <img src="images/me.jpg" width=100%/>
	
	
			  
		<div data-role="main" class="ui-content">
			<ul data-role="listview" data-inset="true">
			  <li>
				<a href="#">
				<img src="/images/up_store.jpg">
				<h2>上架图书</h2>
				<p></p>
				</a>
			  </li>
			  <li>
				<a href="#">
				<img src="/images/down_store.jpg">
				<h2>下架图书</h2>
				</a>
			  </li>
			  <li>
				<a href="#">
				<img src="/images/me_info.jpg">
				<h2>个人信息</h2>
				</a>
			  </li>
			</ul>
		</div>
			
			
			<%=base.footer_main() %>		
		</div>
	</body>
</html>
