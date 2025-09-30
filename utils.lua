--utils.lua
utils = {}

function utils.list_all_processes()
	local handle = io.popen("ps -eo pid,comm")
	if not handle then
		return {}
	end
	--print(handle)
	local processes = {}
	for line in handle:lines() do
		--print(line)
		local pid, name = line:match("^%s*(%d+)%s+(.+)$")
		--print("pid:" .. pid)
		--print("name:" .. name)
		if pid and name then
			processes[name] = pid
		end
	end
	handle:close()

	return processes
end

function utils.scandir(dir)
	local p = io.popen("ls -a " .. dir)
	local files = {}
	for file in p:lines() do
		if file ~= "." and file ~= ".." then
			table.insert(files, file)
		end
	end
	p:close()
	return files
end

LATESTPIDS = utils.list_all_processes()

--for key, val in pairs(pack) do
--	print(string.format("name:'%s'pid: '%s'", key, val))
--end
--print(LATESTPIDS["swaybg"])
