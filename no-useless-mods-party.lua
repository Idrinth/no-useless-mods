GroupWindow = {MAX_GROUP_MEMBERS=6}

NoUselessMods = NoUselessMods or {}
NoUselessMods.Party = {}
NoUselessMods.Party.Initialize = function()
    RegisterEventHandler(SystemData.Events.GROUP_UPDATED, "NoUselessMods.Party.GroupChange")
    NoUselessMods.Party.GroupChange()
end
function NoUselessMods.Party.GroupChange()
    GroupWindow.groupData = PartyUtils.GetPartyData()
    for i=1,GroupWindow.MAX_GROUP_MEMBERS do
        if GroupWindow.groupData[i] == nil then
            GroupWindow.groupData[i] = {name=L""}
        end
    end
end

function GroupWindow.IsPlayerInGroup( playerName )
    return GroupWindow.GetGroupMember( playerName ) ~= nil
end

function GroupWindow.GetGroupMember( playerName )
    for _, member in ipairs( GroupWindow.groupData )  do
        if member and member.name and member.name == playerName  then
            return member
        end
    end
    return nil
end
function GroupWindow.GetMainAssist()
    return nil
end

function GroupWindow.OnFormWarparty()
    SendChatText( L"/warbandconvert", L"" )

    if( EA_Window_OpenParty )
    then
        EA_Window_OpenParty.OpenToManageTab()
    end
end

function GroupWindow.OnMakeLeader()
    if( ButtonGetDisabledFlag(SystemData.ActiveWindow.name ) == true ) then
        return
    end
    BroadcastEvent( SystemData.Events.GROUP_SET_LEADER )    
end

function GroupWindow.OnMakeMainAssist()
    if( ButtonGetDisabledFlag(SystemData.ActiveWindow.name ) == true ) then
        return
    end
    BroadcastEvent( SystemData.Events.GROUP_SET_MAIN_ASSIST )    
end

function GroupWindow.OnLeaveGroup()
    if( ButtonGetDisabledFlag(SystemData.ActiveWindow.name ) == true ) then
        return
    end
    BroadcastEvent( SystemData.Events.GROUP_LEAVE )    
end

function GroupWindow.OnGroupKick()
    if( ButtonGetDisabledFlag( SystemData.ActiveWindow.name ) == true ) then
        return
    end  
    BroadcastEvent( SystemData.Events.GROUP_KICK_PLAYER )    
end