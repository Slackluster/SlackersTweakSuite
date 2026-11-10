--------------------------------------
-- Slacker's Tweak Suite: CVars.lua --
--------------------------------------

local appName, app = ...

-------------
-- ON LOAD --
-------------

app.Event:Register("ADDON_LOADED", function(addOnName, containsBindings)
	if addOnName ~= appName then return end

	app:ToggleAlwaysCompare()
end)

----------------------------
-- Disable Always Compare --
----------------------------

function app:ToggleAlwaysCompare()
	if app.Settings.disableAlwaysCompare then
		SetCVar("alwaysCompareItems", "0")
	else
		SetCVar("alwaysCompareItems", "1")
	end
end
