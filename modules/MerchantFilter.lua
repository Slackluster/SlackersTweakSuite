-----------------------------------------
-- Slacker's Tweak Suite: Merchant.lua --
-----------------------------------------

local appName, app = ...
local api = app.api
local L = app.locales

---------------------
-- MERCHANT FILTER --
---------------------

app.Event:Register("MERCHANT_SHOW", function()
	if not TransmogLootHelper_Settings["vendorAll"] and app.Settings["vendorAll"] then
		RunNextFrame(function()
			SetMerchantFilter(1)
			MerchantFrame_Update()
		end)
	end
end)
