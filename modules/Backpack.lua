-----------------------------------------
-- Slacker's Tweak Suite: Backpack.lua --
-----------------------------------------

local appName, app = ...

-----------------------------
-- SPLIT REAGENT BAG COUNT --
-----------------------------

function app:SplitBackpackCount()
	if InCombatLockdown() then return end

	if app.Settings.backpackCount then
		local freeSlots1 = C_Container.GetContainerNumFreeSlots(0) + C_Container.GetContainerNumFreeSlots(1) + C_Container.GetContainerNumFreeSlots(2) + C_Container.GetContainerNumFreeSlots(3) + C_Container.GetContainerNumFreeSlots(4)
		local freeSlots2 = C_Container.GetContainerNumFreeSlots(5)

		if C_Container.GetContainerNumSlots(5) ~= 0 then
			RunNextFrame(function()
				if MainMenuBarBackpackButtonCount then
					MainMenuBarBackpackButtonCount:SetText("(" .. freeSlots1 .. "+" .. freeSlots2 .. ")")
				end
				if MainMenuBarBackpackButton and MainMenuBarBackpackButton.FreeSlots then
					MainMenuBarBackpackButton.FreeSlots:SetText("(" .. freeSlots1 .. "+" .. freeSlots2 .. ")")
				end
			end)
		end
	end
end

app.Event:Register("BAG_UPDATE_DELAYED", function()
	app:SplitBackpackCount()
end)
