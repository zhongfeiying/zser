local modename = ...
local M = {}
_G[modename] = M
package.loaded[modename] = M

--------------------------------
local string = string
local tostring = tostring
local trace_out = trace_out
local mgr_session = require("bookstore.mgr_session")


local create_file = _G.create_file   
local write_file = _G.write_file   
local unlock_file = _G.unlock_file   
local close_file = _G.close_file   
local io = _G.io   
local loadfile = _G.loadfile   
local os_execute_ =  _G.os.execute
local os =  _G.os


	
---------------------------------
--_ENV = M
--**-1表示用户名不存在，-2表示密码错误,1表示登录正确
function check_user(user,passwd)
	local users={
		["admin"] = {pwd="123";},
		["ad"] = {pwd="123";},
	};
	if(users[user] == nil) then return -1 end --用户不存在	
	if(users[user].pwd ~= passwd)then return -2 end --密码错误
	return true;
end

--**-1-确认密码失败，-2 用户已存在
function register_user(user,pwd,confirm_pwd,province,city,area)
	if(pwd ~= confirm_pwd)then return -1 end  --确认密码失败

	--保存用户信息
	
	local is_exist = true;
	local file_db = "C:\\zb\\zser\\zServer\\bookstore\\user_db.lua";			
	local fun = loadfile(file_db);  
	fun();
	
	if(_G.db[user]~=nil)then return -2; end--存在，修改用户名
		
	local file = "user_db.lua";			
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

