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
		<li><a href="insurance_find.lp" data-icon="heart">三包服务</a></li>
		<li><a href="designing.lp" data-icon="eye">平行进口车</a></li> 
		<li><a href="designing.lp" data-icon="shop">二手车</a></li>
		<li><a href="index_me.lp" data-icon="user">我</a></li>
	</ul>
	</div>
<h4>辽ICP备 160001524</h4>
</div><!-- /底部 --></div><!-- /页面 -->
	]]
	
	return str
end


