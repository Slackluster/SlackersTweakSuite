-----------------------------------------
-- Slacker's Tweak Suite: EditMode.lua --
-----------------------------------------

local appName, app = ...
local L = app.locales
local LEM = app.LibEditMode

-------------
-- ON LOAD --
-------------

app.Event:Register("ADDON_LOADED", function(addOnName, containsBindings)
	if addOnName ~= appName then return end

	app:GroupLootContainer()
end)

----------------
-- LOOT ROLLS --
----------------

function app:GroupLootContainer()
	if not app.Settings.editModeLootRolls or not LEM or not GroupLootContainer then return end

	app.Settings.lootRollPositions = app.Settings.lootRollPositions or {}
	local positions = app.Settings.lootRollPositions
	local defaults = { point = "BOTTOM", x = 0, y = 250 }

	local anchor = CreateFrame("Frame", "STS_LootRollsAnchor", UIParent)
	anchor:SetSize(256, 100)
	anchor:SetPoint(defaults.point, UIParent, defaults.point, defaults.x, defaults.y)

	GroupLootContainer.ignoreFramePositionManager = true
	GroupLootContainer:ClearAllPoints()
	GroupLootContainer:SetPoint("BOTTOM", anchor, "BOTTOM")

	LEM:AddFrame(anchor, function(frame, layout, point, x, y)
		positions[layout] = { point = point, x = x, y = y }
	end, defaults, LOOT_ROLLS)

	LEM:RegisterCallback("layout", function(layout)
		local position = positions[layout] or defaults
		anchor:ClearAllPoints()
		anchor:SetPoint(position.point, UIParent, position.point, position.x, position.y)
	end)

	LEM:RegisterCallback("create", function(name, index, source)
		positions[name] = CopyTable((source and positions[source]) or defaults)
	end)

	LEM:RegisterCallback("rename", function(oldName, newName)
		positions[newName] = positions[oldName]
		positions[oldName] = nil
	end)

	LEM:RegisterCallback("delete", function(name)
		positions[name] = nil
	end)
end
