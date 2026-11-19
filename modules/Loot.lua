-------------------------------------
-- Slacker's Tweak Suite: Loot.lua --
-------------------------------------

local appName, app = ...
local L = app.locales

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


