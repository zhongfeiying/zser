<!DOCTYPE html>
<% 
	_G.package.loaded["bookstore.base"] = nil 
	local base = _G.require("bookstore.base") 

	_G.package.loaded["bookstore.mgr_session"] = nil 
	local mgr_session = _G.require("bookstore.mgr_session") 
	
	%>
<html>
	<head>
		<title>社区信息</title>
		<%=base.head %>
	</head>
	<body>
		<div data-role="page">
			 <img src="images/community.jpg" width=100%/>
	
	
			
			  
		<div data-role="main" class="ui-content">
			<ul data-role="listview" data-inset="true">
			  <li>
				<a href="#">
				<img src="/images/s1.jpg">
				<h2>培训</h2>
				<p>经典培训学校。</p>
				</a>
			  </li>
			  <li>
				<a href="#">
				<img src="/images/s1.jpg">
				<h2>托管班</h2>
				<p>学习，做作业，复习，解决家长后顾之忧</p>
				</a>
			  </li>
			  <li>
				<a href="#">
				<img src="/images/s1.jpg">
				<h2>运动</h2>
				<p>锻炼身体。</p>
				</a>
			  </li>
			</ul>
		</div>
			
			<%=base.footer_main() %>		
		</div>
	</body>
</html>
