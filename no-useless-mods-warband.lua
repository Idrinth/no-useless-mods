BattlegroupHUD = {}
BattlegroupHUD.OnMenuClickMakeMainAssist = function()
    if( ButtonGetDisabledFlag(SystemData.ActiveWindow.name ) == false ) then
    	BroadcastEvent( SystemData.Events.GROUP_SET_MAIN_ASSIST )
    end    
end