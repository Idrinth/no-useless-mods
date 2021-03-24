NoUselessMods = NoUselessMods or {}
NoUselessMods.FriendSuggester = {}

function NoUselessMods.FriendSuggester.Update( dt )
end

function NoUselessMods.FriendSuggester.Initialize()
    UnregisterEventHandler( SystemData.Events.SOCIAL_YOU_HAVE_BEEN_FRIENDED, "FriendSuggester.OnYouHaveBeenFriended" )
    UnregisterEventHandler( SystemData.Events.GROUP_UPDATED, "FriendSuggester.OnPartyUpdated" )
    UnregisterEventHandler( SystemData.Events.BATTLEGROUP_UPDATED, "FriendSuggester.OnWarbandUpdated" )
    UnregisterEventHandler( SystemData.Events.SCENARIO_POST_MODE, "FriendSuggester.ScenarioFinish" )
    UnregisterEventHandler( SystemData.Events.CHAT_TEXT_ARRIVED, "FriendSuggester.OnChatText" )

    -- purge old data
    FriendSuggester.Data = {}
    FriendSuggester.Update = NoUselessMods.FriendSuggester.Update
end