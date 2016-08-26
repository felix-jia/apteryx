-- need to set the lua path on the box
-- export LUA_PATH="./?.lua;/flash/api/inserts/?.lua;/usr/share/lua/?.lua;/var/packages/network/share/lua/?.lua"

package.cpath = "../?.so;"..package.cpath

require("libapteryx")
if apteryx == nil then
	apteryx = {}
	apteryx_init(false)
end


path_parameters = {}

function replace_wildcard(path, parameters)
    local index = 1
    if #parameters == 0 then
        return path
    end
    while true do
        s,e = string.find(path, "*")
        if s == nil or parameters[index] == nil then
            break
        end
        path = string.gsub(path, "*", parameters[index], 1)
        index = index+1
    end
    return path
end

local __apteryx = {
	__index = function(self, key)
		if rawget(self, "__"..key) ~= nil then
            local path = rawget(self, "__"..key).path
            path = replace_wildcard(path, path_parameters)
            path = string.gsub(path, "-", "_")
            value = apteryx_get(path)
			if value == nil then
				value = rawget(self, "__"..key).default
			end
			if rawget(self, "__"..key).values ~= nil then
				for k, v in pairs(rawget(self, "__"..key).values) do
					if v == value then
						return k
					end
				end
			end
			return value
		end
	end,
	__newindex = function(self, key, value)
		if self["__"..key] ~= nil then
			if value and self["__"..key].values ~= nil then
				value = self["__"..key].values[value]
			end
            local path = rawget(self, "__"..key).path
            path = replace_wildcard(path, path_parameters)
            path = string.gsub(path, "-", "_")
            apteryx_set(path, value)
		else
        	rawset(self, key, value)
		end
	end,
	__call = function(self, key, value)
		if self["__"..key] ~= nil then
			if value == nil then
				return true
			end
			if self["__"..key].values ~= nil then
				if type(value) == "string" then
					return self["__"..key].values[value] ~= nil
				elseif type(value) == "table" then
					for k,v in pairs(value) do
						if self["__"..key].values[v] == nil then
							return false
						end
					end
					return true
				end
			end
		end
		return false
	end
}

apteryx["valid"] = function(path,parameters,tbl)
	if tbl == nil then tbl = apteryx end
	local key = path:match("[^.]+")
	path = path:sub(#key + 2)
	for i,k in pairs(tbl) do
		if i == key or i == "__"..key then
			if #path == 0 then
				return true
			end
			return apteryx.valid(path,parameters,tbl[i])
		end
	end
	return false
end
--
apteryx["assert"] = function(path,parameters,tbl)
	assert(apteryx.valid(path,parameters,tbl), "Apteryx: Invalid path \""..path.."\"")
end


local function setfenv(fn, env)
  local i = 1
  while true do
    local name = debug.getupvalue(fn, i)
    if name == "_ENV" then
      debug.upvaluejoin(fn, i, (function()
        return env
      end), 1)
      break
    elseif not name then
      break
    end

    i = i + 1
  end

  return fn
end

function table.join(t1, t2)
    for k,v in pairs(t2) do
        if t1[k] == nil then
            t1[k] = v
        end
    end
    return t1
end

function table.print(t)
	for k,v in pairs(t) do
	    print("t: ", k,v)
	end
end

function splitpath(path)
    local current
    local rest

    -- remove the heading back slash
    if string.sub(path, 1, 1) == "/" then
        path = string.sub(path, 2)
    end

    s, e = string.find(path, "/")
    if s ~= nil then
        current = string.sub(path, 1, s-1)
        rest = string.sub(path, s+1)
    else
        current = path
    end

    if rest == nil then
        rest = ''
    end

    return current, rest
end

function __create_mt(path, value, default)
    local t = {}

    if path ~= nil then
        t['path'] = path
    end

    if value ~= nil then
        t['value'] = value
    end

    if default ~= nil then
        t['default'] = default
    end

    return setmetatable(t, __apteryx)
end

function __get_search_path(t, parameters)
    local search_path = t.path
    -- only replace if the depth level is more than 1
    if t.depth > 1 then
        search_path = replace_wildcard(search_path, parameters)
    end
	search_path = string.gsub(search_path, "-", "_")

	x,y = string.find(search_path, "*")
	if x ~= nil then
		search_path = string.sub(search_path, 1, x-1)
	end

	return search_path
end

mt = setmetatable({}, __apteryx)
env = {apteryx_search = apteryx_search, apteryx_set = apteryx_set,
        table = table,  pairs = pairs, print = print, G = _G,
        global_depth = global_depth,
        replace_wildcard = replace_wildcard, string = string,
        __get_search_path = __get_search_path
    }

function __create_function(name, value, __insert_mode)
    if __insert_mode == nil then
		pp = G.path_parameters
        if name == nil then
			local search_path = __get_search_path(mt, pp)
            local search = apteryx_search(search_path)
            for i,item in pairs(search) do
                search[i] = item:sub(item:match'^.*()/'+1)
            end
            table.sort(search)
            return search
        elseif value ~= nil then
			local search_path = __get_search_path(mt, pp)
            apteryx_set(search_path..name, value)
            return
        end

		-- reset the path_parameters table
	    if mt.depth == 1 then
	        pp = {}
	    end
	    table.insert(pp, name)
	    G.path_parameters = pp
    end

    return mt
end

function apteryx_insert(path, value, default)
    local parent = apteryx
    local current_node
    local next_name
    local depth = 1

    local current_name,rest = splitpath(path)
    while current_name ~= '' do

        if current_name == "*" then
            goto continue
        end

		current_name = string.gsub(current_name, "-", "_")

		-- get from parent (either a function or a table)
		if type(parent) == "function" then
			mt = parent(nil, nil, true)
			current_node = mt[current_name]
		else
			current_node = parent[current_name]
		end

        next_name, _ = splitpath(rest)
        if next_name == "*" then
            if current_node == nil then
                current_node = load(string.dump(__create_function))
                mt = setmetatable({}, __apteryx)
                mt['path'] = path
                mt['depth'] = depth
                setfenv(current_node, table.join({mt = mt}, env))
            end

            depth = depth + 1
            goto continue
        end

        if current_node == nil then
            -- if the current node is leaf, then create with arguments
            -- if the current node is intermediate node, create with no arguments
            if rest == '' then
                current_name = "__"..string.gsub(current_name, "-", "_")
                current_node = __create_mt(path, value, default)
            else
                current_node = __create_mt(nil, nil, nil)
            end
        end -- end of if parent[current] == nil then

        ::continue::
		-- set back to the parent (either a function or a table)
		if type(parent) == "function" then
			mt = parent(nil, nil, true)
			mt[current_name] = current_node
			setfenv(parent, table.join({mt = mt}, env))
		else
			parent[current_name] = current_node
		end

        parent = current_node

        current_name, rest = splitpath(rest)
    end -- end of while current ~= '' do
end

-- os.execute("cat /proc/`pidof lua`/status")

local f = io.popen("ls ./inserts")
for mod in f:lines() do
	name = string.gsub(mod, '.lua', '')
	print("require "..name)
	-- pcall(require, "inserts."..name)
	require("inserts."..name)
end
print('\n\n-------- test api 00 -------------')
print(apteryx.aaa.services)
print(apteryx.radius)
print(apteryx.web_control)
print(apteryx.wireless_manager)
-- os.execute("cat /proc/`pidof lua`/status")
t1 = os.clock()
for i=1,10000 do
	apteryx.test.list(i).name = 'private'
end
t2 = os.clock() - t1
print("set time: "..t2.." sec")

-- t1 = os.clock()
-- for i=1,10000 do
-- 	apteryx.system.ram.free = i
-- 	x = apteryx.system.ram.free
-- end
-- t2 = os.clock() - t1
-- print("set and get time: "..t2.." sec")


-- require("table_save")
-- table.save(apteryx, "saved.lua")
-- require("persistence")
-- persistence.store("saved02.lua", apteryx)

-- apteryx_insert("/system/bootloader-version")
-- apteryx_insert("/system/current-software")
-- apteryx_insert("/system/current-version")
-- apteryx_insert("/system/build-date")
-- apteryx_insert("/system/system_name")
-- apteryx_insert("/system/configuration/state", {["unknown"]="0",["saved"]="1",["unsaved"]="2"}, "0")
-- apteryx_insert("/system/ram/total")
-- apteryx_insert("/system/ram/free")
-- apteryx_insert("/system/interface/*/link-mtu")
-- apteryx_insert("/system/interface/*/default-ttl")
-- apteryx_insert("/system/interface/*/prefixes/*/prefix")
-- apteryx_insert("/system/interface/*/wa/*/haha/*/type")
-- apteryx_insert("/system/flash/total")
-- apteryx_insert("/system/flash/avaiable")
--
--
--
-- print('\n\n-------- test api 01 -------------')
-- for k,v in pairs(apteryx) do
--     print(k,v)
-- end
--
-- print('\n\n-------- test api 02 -------------')
-- print(apteryx.system.ram.free)
-- print(apteryx.system.bootloader_version)
-- print(apteryx.system.current_software)
--
-- print('\n\n-------- test api 03 -------------')
-- -- apteryx_get("/system/interface/eth0/default_ttl")
-- print(apteryx.system.interface("eth0").default_ttl)
--
-- print('\n\n-------- test api 04 -------------')
-- print(apteryx.system.interface("eth1").link_mtu)
--
-- print('\n\n-------- test api 05 -------------')
-- print(apteryx.system.interface("eth0").prefixes("01").prefix)
--
-- print('\n\n-------- test api 06 -------------')
-- t = apteryx.system.interface()
-- for k,v in pairs(t) do
--     print(k,v)
-- end
--
-- print('\n\n-------- test api 07 -------------')
-- t = apteryx.system.interface("eth0").prefixes()
-- for k,v in pairs(t) do
--     print(k,v)
-- end
--
-- print('\n\n-------- test api 08 -------------')
-- print(apteryx.system.interface("eth0").wa("02").haha("03").type)
--
-- print('\n\n-------- test api 09 -------------')
-- t = apteryx.system.interface("eth0").wa("02").haha()
-- for k,v in pairs(t) do
--     print(k,v)
-- end
--
-- print('\n\n-------- test api 10 -------------')
-- require("haha")
-- print(apteryx.haha)
