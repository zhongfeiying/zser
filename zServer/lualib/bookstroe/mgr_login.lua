local modename = ...
local M = {}
_G[modename] = M
package.loaded[modename] = M

--------------------------------
local string = string
local tostring = tostring
local dofile = dofile
local trace_out = trace_out
local mgr_session = require("bookstore.mgr_session")
---------------------------------
_ENV = M
--**-1��ʾ�û��������ڣ�-2��ʾ�������,1��ʾ��¼��ȷ
function check_user(user,passwd)
	--dofile("project\\user_list.lua");	
	local users={
		["admin"] = {pwd="123";},
		["ad"] = {pwd="123";},
	};
	if(users[user] == nil) then return -1 end --�û�������	
	if(users[user].pwd ~= passwd)then return -2 end --�������
	return true;
end


