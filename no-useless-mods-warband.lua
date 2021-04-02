BattlegroupHUD = {}
BattlegroupHUD.OnMenuClickMakeMainAssist = function()
    if( ButtonGetDisabledFlag(SystemData.ActiveWindow.name ) == false ) then
    	BroadcastEvent( SystemData.Events.GROUP_SET_MAIN_ASSIST )
    end    
end
BattlegroupHUD.OnMenuClickLeaveGroup = function()
    BroadcastEvent( SystemData.Events.GROUP_LEAVE )
end
BattlegroupHUD.OnMenuClickMakeLeader = function()    
    SendChatText( L"/warbandleader "..SystemData.UserInput.selectedGroupMember, L"" )
end
BattlegroupHUD.GetWarbandMember = function (playerName)
    for groupIndex = 1, 4
    do
        for memberIndex = 1, 6 do
            local member = PartyUtils.GetWarbandMember( groupIndex, memberIndex )
            if( (member ~= nil) and (member.name == playerName) )
            then
                return member
            end
        end
    end
    return nil
end