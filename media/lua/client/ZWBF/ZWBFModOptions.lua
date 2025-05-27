-- These are the default options.
local ZWBFModOptions = {
	options = { new_bellies = true },
	names = { new_bellies = getText("IGUI_ZWBF_UI_NewBellies") },
	mod_id = "ZWBF",	
	mod_shortname = "ZomboWin Being Female",
}

-- Connecting the options to the menu, so user can change them.
if ModOptions and ModOptions.getInstance then
  local settings = ModOptions:getInstance(ZWBFModOptions)
  
	ZWBFModOptions.options_data.new_bellies.tooltip = "IGUI_ZWBF_UI_NewBellies_TT"
  
  local new_bellies = settings:getData("new_bellies")

  function new_bellies:OnApplyInGame(val)
    if val == false then
      getPlayer():setWornItem("ZWBFPregnancyBelly", nil) -- clear bellies
    end
  end

end

return ZWBFModOptions
