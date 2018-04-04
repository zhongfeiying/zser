local modename = ...
local M = {}
_G[modename] = M
package.loaded[modename] = M

--------------------------------
local string = string
local tostring = tostring
local trace_out = trace_out
local loadfile = loadfile
local io = io   
local lfs = lfs   
---------------------------------
_ENV = M



function register(user,pwd,confirm_pwd,province,city,area)
	if(pwd ~= confirm_pwd)then return -1 end  --确认密码失败
	--保存用户信息	
	local file = "C:\\zb\\zser\\zServer\\bookstore\\user_db.lua";			
	local f = io.open(file ,"a");  
	-- 记录文件开始位置
	local insert_pos = f:seek("end") --获取文件大小			
	trace_out("file begin pos = "..insert_pos .. "\n");
	lfs.lock(f,"w",insert_pos,1024);
	local key = "_G.db[\"" .. user .. "\"]";
	f:write("_G.db[\"" .. user .. "\"]= {};\n" )
	f:write(key.."[\"user\"]= \"" .. user .. "\";\n" )
	f:write(key.."[\"pwd\"]= \"" .. pwd .. "\";\n" )
	f:write(key.."[\"province\"]= \"" .. province .. "\";\n" )
	f:write(key.."[\"city\"]= \"" .. city .. "\";\n" )
	f:write(key.."[\"area\"]= \"" .. area .. "\";\n" )
	lfs.unlock(f,beginpos,1024);
	f:close()  
	return true;
end


function check_user(user)
	

end