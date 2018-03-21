local modename = ...
local M = {}
_G[modename] = M
package.loaded[modename] = M

--------------------------------
local url = require("lpp.url")

---------------------------------
_ENV = M


head = [[
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1"> 
<link rel="stylesheet" href="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.css">
<script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
<script src="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.js"></script>

  
<script type='text/javascript' src='scripts/jquery.min.js'></script>
<script type='text/javascript' src='scripts/jquery.mobile.customized.min.js'></script>
<script type='text/javascript' src='scripts/jquery.easing.1.3.js'></script> 
<script type='text/javascript' src='scripts/camera.min.js'></script> 


]]

function footer_main()
	local str	
	str = [[
<div data-role="footer" class="ui-bar">
	<div data-role="navbar">
	<ul>
		<li><a href="book_buy.lp" data-icon="heart">买书</a></li>
		<li><a href="book_sell.lp" data-icon="eye">卖书</a></li> 
		
		<li><a href="community.lp" data-icon="shop">社区</a></li>
		<li><a href="login.lp" data-icon="user">我的</a></li>
	</ul>
	</div>
<h4>辽ICP备 160001524</h4>
</div><!-- /底部 --></div><!-- /页面 -->
	]]
	
	return str
end


