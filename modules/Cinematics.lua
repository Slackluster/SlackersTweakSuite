-------------------------------------------
-- Slacker's Tweak Suite: Cinematics.lua --
-------------------------------------------

local appName, app = ...

-------------
-- ON LOAD --
-------------

app.Event:Register("ADDON_LOADED", function(addOnName, containsBindings)
	if addOnName == appName then
		app.Settings.Cinematics = app.Settings.Cinematics or {}

		local function handleMovie(movieID, source)
			app:Debug(source)
			if not movieID then
				app:Debug("No movieID found")
			elseif app.Settings.Cinematics[movieID] then
				app:Debug("Skipped movieID", movieID)
				MovieFrame:Hide()
				StopCinematic()
				CancelScene()
			elseif movieID then
				C_Timer.After(2, function()
					app:Debug("Registering movieID", movieID)
					app.Settings.Cinematics[movieID] = true -- DATETIME
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
