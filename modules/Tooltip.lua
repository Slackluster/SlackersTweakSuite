----------------------------------------
-- Slacker's Tweak Suite: Tooltip.lua --
----------------------------------------

local appName, app = ...

-------------
-- ON LOAD --
-------------

app.Event:Register("ADDON_LOADED", function(addOnName, containsBindings)
	if addOnName ~= appName then return end

	app:ShowTokenPrice()
end)

-----------------
-- TOKEN PRICE --
-----------------

function app:ShowTokenPrice()
	local function OnTooltipSetItem(tooltip, itemData)
		if app.Settings.showTokenPrice then
			local itemID = app:GetTooltipItem(tooltip, itemData)
			if not itemID then return end

			if itemID == 122270 and C_WowTokenPublic.GetCurrentMarketPrice() then
				tooltip:AddLine(" ")
				tooltip:AddDoubleLine(TOKEN_CURRENT_MARKET_PRICE, GetMoneyString(C_WowTokenPublic.GetCurrentMarketPrice(), true))
			end
		end
	end
	TooltipDataProcessor.AddTooltipPostCall(Enum.TooltipDataType.Item, OnTooltipSetItem)
end
