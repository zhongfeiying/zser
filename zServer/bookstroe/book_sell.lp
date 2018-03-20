<!DOCTYPE html>
<% 
	_G.package.loaded["bookstroe.base"] = nil 
	local base = _G.require("bookstroe.base") 

	_G.package.loaded["bookstroe.mgr_session"] = nil 
	local mgr_session = _G.require("bookstroe.mgr_session") 

	
	%>
<html>
	<head>
		<title>卖书</title>
		<%=base.head %>
		
			
	</head>
	<div data-role="page">
			 <img src="images/car_2.jpg" width=100%/>	
	
		

						
				<form action="car_mgr_add_ok.lp" method="post"  enctype="multipart/form-data" data-ajax="false">
					<ul data-role="listview" data-insert="true">
						<li data-role="fieldcontain">
							<label for="car_kind">书名:</label>
								<input type="text" name="car_kind" id = "car_kind" required="required" value=""value=""placeholder="必读书、选读书...">
						</li>
		
						<li data-role="fieldcontain">
							<label for="car_kind">原价（元）:</label>
								<input type="number" name="car_kind" id = "car_kind" required="required" value=""placeholder="0.0...">
						</li>		
						<li data-role="fieldcontain">
							<label for="car_kind">现价（元）:</label>
								<input type="number" name="car_kind" id = "car_kind" required="required" value=""placeholder="0.0...">
						</li>		
						<li data-role="fieldcontain">
							<label for="car_kind">新旧程度:</label>
								 <select name="day" id="day">
									 <option value="sat">全新</option>
									 <option value="fri">九成新</option>
									 <option value="thu">八成新</option>
									 <option value="wed">七成新</option>
									 <option value="tue">六成新</option>
									 <option value="mon">五成新</option>
									 <option value="sun">低于五成新</option>
								</select>
		
						</li>
						<li data-role="fieldcontain">
							<label for="car_kind">所在区域:</label>
								 <select name="day" id="day">
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
							<label for="car_kind">学校:</label>
								 <select name="day" id="day">
									 <option value="mon">魅力小学</option>
									 <option value="tue">星期二</option>
									 <option value="wed">星期三</option>
									 <option value="thu">星期四</option>
									 <option value="fri">星期五</option>
									 <option value="sat">星期六</option>
									 <option value="sun">星期日</option>
									 <option value="sun">其它</option>
								</select>
						</li>							
						<li data-role="fieldcontain">
							<label for="car_kind">联系方式:</label>
								<input type="text" name="car_kind" id = "car_kind" required="required" placeholder="电话/微信/邮箱/QQ...">
							
							
						</li>							

						
						
								
								
				
						<li data-role="fieldcontain">
							<input type = "submit" value = "上架" data-theme="b">
							<!-- <input type="button" value="添加" onclick="add()" />  -->
						</li>
					</ul>
					
					
				</form>
						 							 

			<%=base.footer_main() %>		
		</div>
  
  
			
				
			
	
	
	</body>
</html>
