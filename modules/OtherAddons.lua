--------------------------------------------
-- Slacker's Tweak Suite: OtherAddons.lua --
--------------------------------------------

local appName, app = ...
local L = app.locales

-------------
-- ON LOAD --
-------------

app.Event:Register("ADDON_LOADED", function(addOnName, containsBindings)
	if addOnName == appName then
		app.Cache.Commodities = app.Cache.Commodities or {}

		app:DisableHandyNotesAltRMB()
		app:ShowRecentAHPrice()
		app:HideOribosMessage()
	end
end)

app.Event:Register("PLAYER_ENTERING_WORLD", function(isInitialLogin, isReloadingUi)
	if isInitialLogin or isReloadingUi then
		if C_AddOns.IsAddOnLoaded("Auctionator") or C_AddOns.IsAddOnLoaded("OribosExchange") or C_AddOns.IsAddOnLoaded("TradeSkillMaster") then
			app.Flag.IsAuctionAddonLoaded = true
		else
			app.Flag.IsAuctionAddonLoaded = false
		end
	end
end)

----------------------------
-- HANDYNOTES ALT+RMB FIX --
----------------------------

function app:DisableHandyNotesAltRMB()
	if app.Retail and app.Settings.handyNotes then
		-- Thank you, Numy!
		if C_AddOns.IsAddOnLoaded("HandyNotes") and LibStub("AceAddon-3.0"):GetAddon("HandyNotes") then
			local f = LibStub("AceAddon-3.0"):GetAddon("HandyNotes"):GetModule("HandyNotes").ClickHandlerFrame
			local f2 = CreateFrame("Frame")
			f:SetParent(f2)
			f2:Hide()
		end
	end
end

---------------------
-- RECENT AH PRICE --
---------------------

function app:RoundedItemValue(itemID, itemLink, speciesID)
	if (not itemID and not itemLink) or itemID == 0 then return 0, 0 end

	local realmPrice = {}
	local regionPrice = {}
	if not itemLink then
		if C_AddOns.IsAddOnLoaded("TradeSkillMaster") then
			table.insert(realmPrice, { price = TSM_API.GetCustomPriceValue("DBMinBuyout", "i:" .. itemID) or 0, age = -1 })
			table.insert(regionPrice, { price = TSM_API.GetCustomPriceValue("DBRegionMarketAvg", "i:" .. itemID) or 0, age = -1 })
		end
		if C_AddOns.IsAddOnLoaded("Auctionator") then
			table.insert(realmPrice, { price = Auctionator.API.v1.GetAuctionPriceByItemID(app.Name, itemID) or 0, age = Auctionator.API.v1.GetAuctionAgeByItemID(app.Name, itemID) or 99 })
		end
		if C_AddOns.IsAddOnLoaded("OribosExchange") then
			local oeData = {}
			OEMarketInfo(itemID, oeData)
			table.insert(realmPrice, { price = oeData.market or 0, age = (oeData.age and oeData.age / 60 / 60 / 24) or 99 })
			table.insert(regionPrice, { price = oeData.region or 0, age = (oeData.age and oeData.age / 60 / 60 / 24) or 99 })
		end
	else
		if C_AddOns.IsAddOnLoaded("TradeSkillMaster") then
			table.insert(realmPrice, { price = TSM_API.GetCustomPriceValue("DBMinBuyout", "p:" .. speciesID) or 0, age = -1 })
			table.insert(regionPrice, { price = TSM_API.GetCustomPriceValue("DBRegionMarketAvg", "p:" .. speciesID) or 0, age = -1 })
		end
		if C_AddOns.IsAddOnLoaded("Auctionator") then
			table.insert(realmPrice, { price = Auctionator.API.v1.GetAuctionPriceByItemLink(app.Name, itemLink) or 0, age = Auctionator.API.v1.GetAuctionAgeByItemLink(app.Name, itemLink) or 99 })
		end
		if C_AddOns.IsAddOnLoaded("OribosExchange") then
			local oeData = {}
			OEMarketInfo(itemLink, oeData)
			table.insert(realmPrice, { price = oeData.market or 0, age = (oeData.age and oeData.age / 60 / 60 / 24) or 99 })
			table.insert(regionPrice, { price = oeData.region or 0, age = (oeData.age and oeData.age / 60 / 60 / 24) or 99 })
		end
	end

	if app.Forever or (app.Cache.Commodities and app.Cache.Commodities[itemID]) then
		for _, value in ipairs(realmPrice) do
			table.insert(regionPrice, value)
		end
		realmPrice = {}
	end

	table.sort(realmPrice, function(a, b) return a.age < b.age end)
	table.sort(regionPrice, function(a, b) return a.age < b.age end)
	local function getPrice(table)
		for _, value in ipairs(table) do
			if value.price > 0 then
				if value.price >= 10000 then
					value.price = math.floor(value.price / 10000) * 10000
				elseif value.price >= 100 then
					value.price = math.floor(value.price / 100) * 100
				end
				return value.price
			end
		end
		return 0
	end

	return getPrice(realmPrice), getPrice(regionPrice)
end

function app:ShowRecentAHPrice()
	C_Timer.After(1, function() -- Delay so this tooltip entry gets hooked last
	local function OnTooltipSetItem(tooltip, itemData)
		if app.Settings.ahPriceTooltip and app.Flag.IsAuctionAddonLoaded then
			local itemID = app:GetTooltipItem(tooltip, itemData)
			if not itemID then return end
			local bindType = select(14, C_Item.GetItemInfo(itemID))
			if bindType == Enum.ItemBind.OnAcquire or bindType == Enum.ItemBind.ToWoWAccount or bindType == Enum.ItemBind.ToBnetAccount or bindType == Enum.ItemBind.ToBnetAccountUntilEquipped then return end

			local realmPrice, regionPrice = app:RoundedItemValue(itemID)
			if realmPrice + regionPrice > 0 then
				tooltip:AddLine(" ")
				if realmPrice > 0 then
					tooltip:AddDoubleLine(GetNormalizedRealmName(), GetMoneyString(realmPrice, true))
				end
				if regionPrice > 0 then
					if app.Retail then
						tooltip:AddDoubleLine(string.format(L.REGION, GetCurrentRegionName()), GetMoneyString(regionPrice, true))
					else
						tooltip:AddDoubleLine(L.RULESET[app.Ruleset] .. " " .. L.RULESET[0], GetMoneyString(regionPrice, true))
					end
				end
			end
		end
	end
	TooltipDataProcessor.AddTooltipPostCall(Enum.TooltipDataType.Item, OnTooltipSetItem)
	end)
end

local LibBattlePetTooltipLine = LibStub("LibBattlePetTooltipLine-1-0")
hooksecurefunc("BattlePetToolTip_Show", function(...)
	if app.Settings.ahPriceTooltip and app.Flag.IsAuctionAddonLoaded then
		local speciesID, level, breedQuality, maxHealth, power, speed, bracketName = ...
		local itemLink = "|cff0070DD|Hbattlepet:" .. speciesID .. ":" .. level .. ":" .. breedQuality .. ":" .. maxHealth .. ":" .. power .. ":" .. speed .. "|h" .. bracketName .. "|h|r"

		local realmPrice, regionPrice = app:RoundedItemValue(nil, itemLink, speciesID)
		if realmPrice + regionPrice > 0 then
			LibBattlePetTooltipLine:AddDoubleLine(BattlePetTooltip, " ", " ")
			if realmPrice > 0 then
				LibBattlePetTooltipLine:AddDoubleLine(BattlePetTooltip, GetNormalizedRealmName(), GetMoneyString(realmPrice, true))
			end
			if regionPrice > 0 then
				if app.Retail then
					LibBattlePetTooltipLine:AddDoubleLine(BattlePetTooltip, string.format(L.REGION, GetCurrentRegionName()), GetMoneyString(regionPrice, true))
				else
					LibBattlePetTooltipLine:AddDoubleLine(BattlePetTooltip, L.RULESET[app.Ruleset] .. " " .. L.RULESET[0], GetMoneyString(regionPrice, true))
				end
			end
		end
	end
end)

function app:HideOribosMessage()
	if app.Settings.ahPriceTooltip and C_AddOns.IsAddOnLoaded("OribosExchange") then
		OETooltip(false)

		if C_AddOns.IsAddOnLoaded("Chattynator") then
			Chattynator.API.AddFilter(function(data)
				return data.typeInfo.type ~= "ADDON" or data.typeInfo.source ~= "OribosExchange" or not data.text:match("Tooltip prices disabled")
			end, 1, 1)
		else
			local function removeMessage()
				local message = "Tooltip prices disabled. Run |cffFFFF78/oetooltip on|r to enable."
				local removed = 0

				ChatFrame1:RemoveMessagesByPredicate(function(m)
					if issecretvalue(m) then return end
					if m:find(message) ~= nil then removed = removed + 1 end
					return m:find(message) ~= nil
				end)

				if removed < 10 then
					C_Timer.After(1, function()
						RunNextFrame(removeMessage)
					end)
				end
			end
			removeMessage()
		end
	end
end

if not app.Retail then return end

function app:MarkItemAsCommodity(commodityItemID)
	if commodityItemID then
		app.Cache.Commodities[commodityItemID] = true
	else
		for bag = -4, 16 do
			local slots = C_Container.GetContainerNumSlots(bag)
			if slots and slots > 0 then
				for bagSlot = 1, slots do
					local itemLocation = ItemLocation:CreateFromBagAndSlot(bag, bagSlot)
					if itemLocation and C_Item.DoesItemExist(itemLocation) then
						local commodityStatus = C_AuctionHouse.GetItemCommodityStatus(itemLocation)
						if commodityStatus == Enum.ItemCommodityStatus.Commodity then
							local itemID = C_Item.GetItemID(itemLocation)
							app.Cache.Commodities[itemID] = true
						end
					end
				end
			end
		end
	end
end

app.Event:Register("AUCTION_HOUSE_SHOW", function()
	app:MarkItemAsCommodity()
end)

app.Event:Register("COMMODITY_PURCHASED", function(itemID, quantity)
	app:MarkItemAsCommodity(itemID)
end)

app.Event:Register("COMMODITY_SEARCH_RESULTS_ADDED", function(itemID)
	app:MarkItemAsCommodity(itemID)
end)

app.Event:Register("COMMODITY_SEARCH_RESULTS_UPDATED", function(itemID)
	app:MarkItemAsCommodity(itemID)
end)

app.Event:Register("BANKFRAME_OPENED", function()
	C_Timer.After(2, function()
		app:MarkItemAsCommodity()
	end)
end)

app.Event:Register("TRADE_SKILL_SHOW", function()
	app:MarkItemAsCommodity()
end)
