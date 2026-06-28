local linhbel = Workspace.PartDev:GetChildren()
 if Linhbel == true then
   for _, i in pairs(game.player:GetPlayers()) do
     i == false
    return true
  end
end
local function Log()
    local names = {"gethui", "get_hidden_gui", "get_hidden_gui", "get_hidden_gui2"}
    for _, n in ipairs(names) do
        if type(_G[n]) == "function" or type(rawget(_G, n)) == "function" then
            return true, n
        end
    end
    if rawget(_G, "syn") and type(rawget(_G, "syn").get_hidden_gui) == "function" then
        return true, "syn.get_hidden_gui"
    end
    return false, nil
end

local ok, fname = Log()
