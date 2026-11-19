--------------------------------------
-- Slacker's Tweak Suite: World.lua --
--------------------------------------

local appName, app = ...
local L = app.locales

-------------
-- ON LOAD --
-------------

app.Event:Register("ADDON_LOADED", function(addOnName, containsBindings)
	if addOnName ~= appName then return end

	app.Flag.QuestSparkleCvarChanges = 0
	C_Timer.After(10, function()
		app:QuestSparkles()
	end)
end)

-----------------------------
-- Hallow's End - No Trick --
-----------------------------

app.Event:Register("PLAYER_SOFT_INTERACT_CHANGED", function(oldTarget, newTarget)
	if app.Settings.candySit then
		local candyBucket = {
			"Candy Bucket",
			"Eimer mit Süßigkeiten",
			"Cubo de caramelos",
			"Un seau de bonbons",
			"Secchio delle Caramelle",
			"Balde de balas",
			"Кулек конфет",
			"사탕 바구니",
			"糖罐",
			"糖果桶",
		}
		if newTarget then
			if issecretvalue(UnitName("softinteract")) then return end
			for _, name in pairs(candyBucket) do
				if UnitName("softinteract") == name then
					app.SoftTarget = "Candy Bucket"
					return
				end
			end
			app.SoftTarget = nil
		end
	end
end)

app.Event:Register("QUEST_COMPLETE", function()
	if app.Settings.candySit and app.SoftTarget and app.SoftTarget == "Candy Bucket" then
		C_ChatInfo.PerformEmote("SIT")
	end
end)

--------------------
-- QUEST SPARKLES --
--------------------

app.QuestSparkleCVars = {
	outlineModeShowLootEffectWhenDisabled = "1",
	graphicsOutlineMode = "0",
}

function app:QuestSparkles(toggled)
	if not app.Forever or (not app.Settings.questSparkles and not toggled) then return end

	if app.Flag.QuestSparkleCvarChanges > 5 then
		app:Print(L.QUEST_SPARKLES_WARNING)
	else
		for cvar, value in pairs(app.QuestSparkleCVars) do
			local target = app.Settings.questSparkles and value or C_CVar.GetCVarDefault(cvar)
			if target and C_CVar.GetCVar(cvar) ~= target then
				if not toggled then
					app.Flag.QuestSparkleCvarChanges = app.Flag.QuestSparkleCvarChanges + 1
				end
				C_CVar.SetCVar(cvar, target)
			end
		end
	end
end

app.Event:Register("CVAR_UPDATE", function(cvarName, value)
	if not app.Forever or not app.Settings.questSparkles or not app.QuestSparkleCVars[cvarName] then return end

	if app.QuestSparkleCVars[cvarName] ~= value then
		app:QuestSparkles()
	end
end)
