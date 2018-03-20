local modname = ...
local M = {}
_G[modname] = M
package.loaded[modname] = M
local string = string
local io = io
local pairs = pairs
local type = type
local tostring = tostring
local concat = table.concat
_ENV = M

local function basicSerialize(o,saved)
	if type(o) == "number" then
		return tostring(o)
	elseif type(o) == "table" then
		return saved[o]
	elseif type(o) == "boolean" then
		return tostring(o)
	else
		return string.format("%q",o)
	end
end

local function save(name,value,out,saved)
	if not name then return end
	saved = saved or {}
	--write_file(f,name .. " = ",-1,0)
	out(name .. " = ")
	if type(value) == "number" or type(value) == "string" or type(value) =="boolean" then
		--write_file(f,basicSerialize(value) .. "\n",-1,0)
		out(basicSerialize(value) .. "\n")
	elseif type(value) == "table" then
		if saved[value] then
			--write_file(f,saved[value] .. "\n")
			out(saved[value] .. "\n")
		else
			saved[value] = name
			--write_file(f,"{}\n",-1,0)
			out("{}\n")
			for k,v in pairs(value) do
				k = basicSerialize(k,saved)
				if k then 
					local fname =  string.format("%s[%s]",name,k)
					save(fname,v,out,saved)
				end
			end
		end
	elseif type(value) == "function" then
		out("function()   end \n")
	elseif type(value) == "nil" then
		out("nil\n")
	else
		out("nil\n")
		--error("cannot save a "..type(value))
	end
end


local function strout(rs)
	return function(str)
		rs[#rs+1] = str
	end
end

function save_io(file,content,key)
	local temp = io.output()
	io.output(file)
	local t = {}
	if key then
		save(key,content,io.write,t)
	else
		for k,v in pairs(content) do
			save(k,v,io.write,t)
		end
	end
	io.flush()
	if type(file) == "string" then
		io.output():close()
	end
	io.output(temp)
end

function save_str(content,key)
	local rs = {}
	local t = {}
	local out = strout(rs)
	if key then
		save(key,content,out)
	else
		for k,v in pairs(content) do
			save(k,v,out,t)
		end
	end
	return concat(rs) 
end
