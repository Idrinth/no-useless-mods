GroupWindow = {MAX_GROUP_MEMBERS=6}

function GroupWindow.IsPlayerInGroup( playerName )
    GroupWindow.groupData = PartyUtils.GetPartyData()
    for i=1,GroupWindow.MAX_GROUP_MEMBERS do
        if GroupWindow.groupData[i] == nil then
            GroupWindow.groupData[i] = {name=L""}
        end
    end
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