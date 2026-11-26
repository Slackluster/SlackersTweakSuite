-----------------------------------------------
-- Slacker's Tweak Suite: MerchantFilter.lua --
-----------------------------------------------

local appName, app = ...

---------------------
-- MERCHANT FILTER --
---------------------

app.Event:Register("MERCHANT_SHOW", function()
	if TransmogLootHelper_Settings and TransmogLootHelper_Settings.vendorAll then return end
	if app.Settings.vendorAll then
		RunNextFrame(function()
			SetMerchantFilter(1)
			MerchantFrame_Update()
		end)
	end
end)
