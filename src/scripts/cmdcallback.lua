--[[ For now, this sample function will simply record all the commands executed ]]--
function command_executed(name, args)
  os.execute('mkdir -p /tmp/debug')
  local f = io.open('/tmp/debug/ll', 'a')
  f:write("Command executed: " .. name)

  for i, c in pairs(args) do
    f:write(" " .. c)
  end

  f:write("\n")
  f:close()
end

screen.listen_to("global_cmdexecuted", "command_executed")
