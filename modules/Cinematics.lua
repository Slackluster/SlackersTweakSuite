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

		local function registerMovie(movieID)
			app.Settings.cinematics[movieID] = app.Settings.cinematics[movieID] or {}
			local date = C_DateAndTime.GetCurrentCalendarTime()
			local mapID = C_Map.GetBestMapForUnit("player")
			table.insert(app.Settings.cinematics[movieID], { dateTime = date.year .. "-" .. date.month .. "-" .. date.monthDay .. " " .. date.hour .. ":" .. date.minute, map = C_Map.GetMapInfo(mapID).name, mapID = mapID })
		end

		local function handleMovie(movieID, source)
			app:Debug(source)
			if not movieID then
				app:Debug("No movieID found")
			elseif app.Settings.cinematics[movieID] then
				app:Debug("Skipped movieID", movieID)
				C_Timer.After(2, function() registerMovie(movieID) end)
				-- MovieFrame:Hide()
				-- StopCinematic()
				-- CancelScene()
			elseif movieID then
				app:Debug("Registering movieID", movieID)
				C_Timer.After(2, function() registerMovie(movieID) end)
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
