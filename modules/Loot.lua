-------------------------------------
-- Slacker's Tweak Suite: Loot.lua --
-------------------------------------

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

----------------------
-- INSTANT CATALYST --
----------------------

app.Event:Register("PLAYER_INTERACTION_MANAGER_FRAME_SHOW", function(type)
	if TransmogLootHelper_Settings and TransmogLootHelper_Settings.instantCatalyst then return end
	if app.Settings.instantCatalyst and type == 44 and not app.Flag.CatalystHook then
		ItemInteractionFrame.ButtonFrame.ActionButton:HookScript("OnClick", function()
			if IsShiftKeyDown() then
				ItemInteractionFrame:CompleteItemInteraction()
			end
		end)

		local buttonText = ItemInteractionFrame.ButtonFrame.ActionButton:GetText()
		ItemInteractionFrame.ButtonFrame.ActionButton:HookScript("OnEvent", function(self, event, key, state)
			if key == "LSHIFT" or key == "RSHIFT" then
				if IsShiftKeyDown() then
					ItemInteractionFrame.ButtonFrame.ActionButton:SetText(app.IconReady .. " " .. L.GET_IT_NOW)
				else
					ItemInteractionFrame.ButtonFrame.ActionButton:SetText(buttonText)
				end
				GameTooltip:Show()
			end
		end)
		ItemInteractionFrame.ButtonFrame.ActionButton:HookScript("OnEnter", function(self)
			if IsShiftKeyDown() then
				ItemInteractionFrame.ButtonFrame.ActionButton:SetText(app.IconReady .. " " .. L.GET_IT_NOW)
			end
			if not TransmogLootHelper_Settings.instantCatalystTooltip and app.Settings.instantCatalystTooltip then
				GameTooltip:SetOwner(self, "ANCHOR_BOTTOM")
				GameTooltip:SetText(L.HOLD_SHIFT_TOOLTIP)
				GameTooltip:Show()
			end
			self:RegisterEvent("MODIFIER_STATE_CHANGED")
		end)
		ItemInteractionFrame.ButtonFrame.ActionButton:HookScript("OnLeave", function(self)
			GameTooltip:Hide()
			ItemInteractionFrame.ButtonFrame.ActionButton:SetText(buttonText)
			self:UnregisterEvent("MODIFIER_STATE_CHANGED")
		end)

		app.Flag.CatalystHook = true
	end
end)

-------------------------
-- INSTANT GREAT VAULT --
-------------------------

app.Event:Register("WEEKLY_REWARDS_UPDATE", function()
	if TransmogLootHelper_Settings and TransmogLootHelper_Settings.instantVault then return end
	if app.Settings.instantVault and WeeklyRewardsFrame and WeeklyRewardsFrame:IsVisible() and not app.Flag.VaultHook then
		WeeklyRewardsFrame.SelectRewardButton:HookScript("OnClick", function()
			if IsShiftKeyDown() then
				StaticPopupDialogs["CONFIRM_SELECT_WEEKLY_REWARD"].OnAccept(StaticPopup1, StaticPopup1.data)
			end
		end)

		WeeklyRewardsFrame.SelectRewardButton:HookScript("OnEvent", function(self, event, key, state)
			if key == "LSHIFT" or key == "RSHIFT" then
				if IsShiftKeyDown() then
					WeeklyRewardsFrame.SelectRewardButton:SetText(app.IconReady .. " " .. L.GET_IT_NOW)
				else
					WeeklyRewardsFrame.SelectRewardButton:SetText(WEEKLY_REWARDS_SELECT_REWARD)
				end
				GameTooltip:Show()
			end
		end)
		WeeklyRewardsFrame.SelectRewardButton:HookScript("OnEnter", function(self)
			if IsShiftKeyDown() then
				WeeklyRewardsFrame.SelectRewardButton:SetText(app.IconReady .. " " .. L.GET_IT_NOW)
			end
			if not TransmogLootHelper_Settings.instantVaultTooltip and app.Settings.instantVaultTooltip then
				GameTooltip:SetOwner(self, "ANCHOR_BOTTOM")
				GameTooltip:SetText(L.HOLD_SHIFT_TOOLTIP)
				GameTooltip:Show()
			end
			self:RegisterEvent("MODIFIER_STATE_CHANGED")
		end)
		WeeklyRewardsFrame.SelectRewardButton:HookScript("OnLeave", function(self)
			GameTooltip:Hide()
			WeeklyRewardsFrame.SelectRewardButton:SetText(WEEKLY_REWARDS_SELECT_REWARD)
			self:UnregisterEvent("MODIFIER_STATE_CHANGED")
		end)

		app.Flag.VaultHook = true
	end
end)

---------------------------
-- GROUP LOOT ROLL FRAME --
---------------------------

app.Event:Register("START_LOOT_ROLL", function(rollID, rollTime, lootHandle)
	local hidden = false
	if TransmogLootHelper_Settings and TransmogLootHelper_Settings.hideGroupRolls then return end
	if app.Settings.hideGroupRolls and GroupLootHistoryFrame and not app.Flag.GroupLootHook then
		GroupLootHistoryFrame:HookScript("OnShow", function()
			if hidden == false then
				GroupLootHistoryFrame:Hide()
				hidden = true
			end
		end)

		app.Flag.GroupLootHook = true
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
