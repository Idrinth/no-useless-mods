----------------------------------------------------------------
-- Global Variables
----------------------------------------------------------------

ThreePartBar = {}

----------------------------------------------------------------
-- Local Variables
----------------------------------------------------------------

local ThreePartBarTracker = { }

function ThreePartBar.Create( pointBarName, parentName, vertical, scale )
    if ( vertical )
    then
        ERROR(L"Vertical Three Part Bars are no longer supported.")
        return
    end
    local windowTemplateName = "ThreePartProgressBar"
    local barId = 0
    while ( ThreePartBarTracker[barId] ~= nil )
    do
        barId = barId + 1
    end
    WindowSetId( parentName, barId )

    ThreePartBarTracker[barId] =
    {
        barName     = pointBarName,
        barSize     =
        {
            width   = 0,
            height  = 0,
        },
        mode        = 1,
        leftValue   = 0,
        rightValue  = 0,
        controllingRealm = GameData.Realm.NONE,
        zoneId      = 0, -- Zone that is curently displayed on this bar.
    }
    
    return barId
end

function ThreePartBar.Destroy( barId )
end

function ThreePartBar.Hide( barId )
end

function ThreePartBar.Show( barId )
end

function ThreePartBar.SetZone( barId, zone )
end

function ThreePartBar.OnZoneUpdated( zoneId )
end

function ThreePartBar.OnRewardPoolsUpdated()
end
