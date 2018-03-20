<!DOCTYPE html>
<% 
	_G.package.loaded["bookstroe.base"] = nil 
	local base = _G.require("bookstroe.base") 

	_G.package.loaded["bookstroe.mgr_session"] = nil 
	local mgr_session = _G.require("bookstroe.mgr_session") 

	
	%>
<html>
	<head>
		<title>买书</title>
		<%=base.head %>
		
			
	</head>
	<body>
	
	
	
		<div data-role="page" data-fullscreen="true"  >
			
					
		
			<br><br>
			<form method="post" action="demoform.asp">
				<div class="ui-field-contain">				
					<div class="ui-block-a">
						<input type="search" name="search" id="search" placeholder="请输入书名..." data-clear-btn="true"   maxlength="100" size="100">				
					</div>					
					 <div class="ui-block-b">
						 <input type="submit" data-inline="true" value="搜索" data-icon="search">
					</div>
				</div>
			</form>
		  <div data-role="header">
		<h1>请选择年级</h1>
		<div data-role="navbar">
		  <ul>
			<li><a href="#" data-icon="home">学前</a></li>
			<li><a href="#" data-icon="arrow-r">小学</a></li>
			<li><a href="#" data-icon="search">初中</a></li>
			<li><a href="#" data-icon="search">高中</a></li>
		  </ul>
		</div>
	  </div>
	  
	  
	   <div data-role="main" class="ui-content">
    <h2>书本信息</h2>
    <ul data-role="listview" data-inset="true">
      <li>
        <a href="#">
        <img src="/images/s1.jpg">
        <h2>豆豆兵去打仗</h2>
        <p>魅力小学 10元。发布于3-20。</p>
        </a>
      </li>
      <li>
        <a href="#">
        <img src="/images/s1.jpg">
        <h2>豆豆兵去打仗</h2>
        <p>魅力小学 10元。发布于3-20</p>
        </a>
      </li>
    </ul>
  </div>
  
  
  
  
  
			
				
			
		
			
			<%=base.footer_main() %>		
		</div>
	</body>
</html>
