function string.ends(String,End)
   return End=='' or string.sub(String,-string.len(End))==End
end

f = io.popen('ls ./schema')
for name in f:lines() do
    new_name = string.gsub(name, '.xml', '.lua')
    arg = {"./schema/"..name}
    file = io.open("./inserts/"..new_name, "a")
    io.output(file)
    dofile("xml2lua")
    io.close(file)
	-- if string.ends(name, ".xml") then
		-- arg = {name}
		-- file = io.open(name..".lua", "a")
		-- io.output(file)
		-- dofile("xml2lua")
		-- io.close(file)
	-- end
end
