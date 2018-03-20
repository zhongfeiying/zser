<!DOCTYPE html>
<% 
	_G.package.loaded["bookstroe.base"] = nil 
	local base = _G.require("bookstroe.base") 

	_G.package.loaded["bookstroe.mgr_session"] = nil 
	local mgr_session = _G.require("bookstroe.mgr_session") 
	
	%>
<html>
	<head>
		<title>用户信息</title>
		<%=base.head %>
	</head>
	<body>
		<div data-role="page">
			 <img src="images/car_2.jpg" width=100%/>
	
	
<ul data-role="listview" data-inset="true">
  <li><a href="#"><img src="/images/s1.jpg" alt="USA" class="ui-li-icon">上架</a></li>
  <li><a href="#"><img src="/images/s1.jpg" alt="Great Britain" class="ui-li-icon">下架</a></li>
  <li><a href="#"><img src="/images/s1.jpg" alt="Finland" class="ui-li-icon">个人信息</a></li>
</ul>

	
			  
		<div data-role="main" class="ui-content">
			<ul data-role="listview" data-inset="true">
			  <li>
				<a href="#">
				<img src="/images/s1.jpg">
				<h2>上架</h2>
				<p></p>
				</a>
			  </li>
			  <li>
				<a href="#">
				<img src="/images/s1.jpg">
				<h2>下架</h2>
				</a>
			  </li>
			  <li>
				<a href="#">
				<img src="/images/s1.jpg">
				<h2>个人信息</h2>
				</a>
			  </li>
			</ul>
		</div>
			
			
			<%=base.footer_main() %>		
		</div>
	</body>
</html>
