-----------------------------------------
-- Slacker's Tweak Suite: Merchant.lua --
-----------------------------------------

local appName, app = ...
local api = app.api
local L = app.locales

---------------------------
-- MERCHANT AUTO COMPARE --
---------------------------

app.Event:Register("MERCHANT_SHOW", function()
	if app.Settings["disableMerchantCompare"] and not app.Flag.MerchantHook then
		function MerchantItemButton_OnEnter(button)
			GameTooltip:SetOwner(button, "ANCHOR_RIGHT");
			if ( MerchantFrame.selectedTab == 1 ) then
				GameTooltip:SetMerchantItem(button:GetID());
				-- GameTooltip_ShowCompareItem(GameTooltip);
				MerchantFrame.itemHover = button:GetID();
			else
				GameTooltip:SetBuybackItem(button:GetID());
				if ( IsModifiedClick("DRESSUP") and button.hasItem ) then
					ShowInspectCursor();
				else
					ShowBuybackSellCursor(button:GetID());
				end
			end
		end

		for i = 1, 99 do -- Works for addons that expand the vendor frame up to 99 slots
			local itemButton = _G["MerchantItem" .. i .. "ItemButton"]
			if itemButton then
				itemButton.UpdateTooltip = MerchantItemButton_OnEnter
			end
		end

		app.Flag.MerchantHook = true
	end
end)
