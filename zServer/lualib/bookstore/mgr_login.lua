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
--**-1��ʾ�û��������ڣ�-2��ʾ�������,1��ʾ��¼��ȷ
function check_user(user,passwd)
	local users={
		["admin"] = {pwd="123";},
		["ad"] = {pwd="123";},
	};
	if(users[user] == nil) then return -1 end --�û�������	
	if(users[user].pwd ~= passwd)then return -2 end --�������
	return true;
end

--**-1-ȷ������ʧ�ܣ�-2 �û��Ѵ���
function register_user(user,pwd,confirm_pwd,province,city,area)
	if(pwd ~= confirm_pwd)then return -1 end  --ȷ������ʧ��

	--�����û���Ϣ
	
	local is_exist = true;
	local file_db = "C:\\zb\\zser\\zServer\\bookstore\\user_db.lua";			
	local fun = loadfile(file_db);  
	fun();
	
	if(_G.db[user]~=nil)then return -2; end--���ڣ��޸��û���
		
	local file = "user_db.lua";			
	local f = io.open(file ,"a");  

	-- ��¼�ļ���ʼλ��
	local insert_pos = f:seek("end") --��ȡ�ļ���С			
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

