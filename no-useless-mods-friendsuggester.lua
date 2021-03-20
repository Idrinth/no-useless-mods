NoFriendSuggester = {version="1.2.0"}

function NoFriendSuggester.Update( dt )
end

function NoFriendSuggester.Initialize()
    UnregisterEventHandler( SystemData.Events.GROUP_UPDATED, "FriendSuggester.OnPartyUpdated" )
    UnregisterEventHandler( SystemData.Events.BATTLEGROUP_UPDATED, "FriendSuggester.OnWarbandUpdated" )
    UnregisterEventHandler( SystemData.Events.SCENARIO_POST_MODE, "FriendSuggester.ScenarioFinish" )
    UnregisterEventHandler( SystemData.Events.CHAT_TEXT_ARRIVED, "FriendSuggester.OnChatText" )
    UnregisterEventHandler( SystemData.Events.SOCIAL_YOU_HAVE_BEEN_FRIENDED, "FriendSuggester.OnYouHaveBeenFriended" )

    -- purge old data
    FriendSuggester.Data = {}
    FriendSuggester.Update = NoFriendSuggester.Update
end