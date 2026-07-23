-------------------------------------------
-- Slacker's Tweak Suite: Cinematics.lua --
-------------------------------------------

local appName, app = ...

-------------
-- ON LOAD --
-------------

app.Event:Register("ADDON_LOADED", function(addOnName, containsBindings)
	if addOnName == appName then
		app.Settings.cinematics = app.Settings.cinematics or {}

		local function handleMovie(movieID, source)
			app:Debug(source)
			if not movieID then
				app:Debug("No movieID found")
			elseif app.Settings.cinematics[movieID] then
				app:Debug("Skipped movieID", movieID)
				-- MovieFrame:Hide()
				-- StopCinematic()
				-- CancelScene()
			elseif movieID then
				C_Timer.After(2, function()
					app:Debug("Registering movieID", movieID)
					local date = C_DateAndTime.GetCurrentCalendarTime()
					local mapID = C_Map.GetBestMapForUnit("player")
					app.Settings.cinematics[movieID] = date.year .. "-" .. date.month .. "-" .. date.monthDay .. " " .. date.hour .. ":" .. date.minute .. " " .. format("%s (%d)", C_Map.GetMapInfo(mapID).name, mapID)
				end)
			end
		end

		EventRegistry:RegisterCallback("CinematicFrame.CinematicStarting", function(movieID)
			handleMovie(movieID, "CinematicFrame.CinematicStarting")
		end)

		hooksecurefunc("CinematicStarted", function(movieType, movieID, canCancel)
			handleMovie(movieID, "CinematicStarted")
		end)

		hooksecurefunc("MovieFrame_PlayMovie", function(self, movieID) -- unconfirmed
			handleMovie(movieID, "MovieFrame_PlayMovie")
		end)
	end
end)
