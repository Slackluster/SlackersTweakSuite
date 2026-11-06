-------------------------------------------
-- Slacker's Tweak Suite: Cinematics.lua --
-------------------------------------------

local appName, app = ...

-------------
-- ON LOAD --
-------------

app.Event:Register("ADDON_LOADED", function(addOnName, containsBindings)
	if addOnName == appName then
		app.Cache.Cinematics = app.Cache.Cinematics or {}

		app:SkipSeenCinematics()
	end
end)

--------------------------
-- SKIP SEEN CINEMATICS --
--------------------------

function app:SkipSeenCinematics()
	local function handleCinematic(key)
		if not app.Cache.Cinematics[key] then
			app.Cache.Cinematics[key] = true
			app:Debug("Registering cinematic", key)
			return false
		elseif app.Settings.skipSeenCinematics then
			app:Debug("Canceling cinematic", key)
			return true
		end
		return false
	end

	local function markCinematicStarted()
		app.Flag.CinematicStarted = true
		C_Timer.After(2, function()
			app.Flag.CinematicStarted = false
		end)
	end

	EventRegistry:RegisterCallback("CinematicFrame.CinematicStarting", function()
		if app.Flag.CinematicStarted then return end
		markCinematicStarted()

		local map = C_Map.GetBestMapForUnit("player")
		if not map then return end
		local zone = GetZoneText() or ""
		local subzone = GetSubZoneText() or ""

		local key = "cinematic:" .. map .. ":" .. zone .. ":" .. subzone

		if handleCinematic(key) then
			RunNextFrame(function()
				if CinematicFrame:IsShown() then
					CinematicFrame_CancelCinematic()
				end
			end)
		end
	end)

	hooksecurefunc("CinematicStarted", function(movieType, movieID)
		if movieType ~= Enum.CinematicType.GameMovie or not movieID then return end
		if app.Flag.CinematicStarted then return end
		markCinematicStarted()

		local key = "movie:" .. movieID

		if handleCinematic(key) then
			RunNextFrame(function()
				if MovieFrame:IsShown() and MovieFrame.movieID == movieID then
					MovieFrame:FinishMovie()
				end
			end)
		end
	end)
end
