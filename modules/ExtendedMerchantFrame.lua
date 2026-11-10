------------------------------------------------------
-- Slacker's Tweak Suite: ExtendedMerchantFrame.lua --
------------------------------------------------------

local appName, app = ...
local api = app.api
local L = app.locales

-------------
-- ON LOAD --
-------------

app.Event:Register("ADDON_LOADED", function(addOnName, containsBindings)
	if addOnName ~= appName then return end

	app.Settings.merchantRows = app.Settings.merchantRows or 5
	app.Settings.merchantColumns = app.Settings.merchantColumns or 2

	app.MerchantFrame = {}
	app.MerchantFrame.slots = {}

	app:ExtendedMerchantFrame()
	app:Brutosaur()
end)

local DEFAULT_ROWS, DEFAULT_COLUMNS = 5, 2
local SPACING_X, SPACING_Y = 12, 8
local DIM_ALPHA = 0.25

--------------------
-- MERCHANT FRAME --
--------------------

function app:ExtendedMerchantFrame()
	if not MerchantFrame or app.MerchantFrame.SearchBar or not app.Settings.extendedMerchant then return end

	app.MerchantFrame.frameWidth, app.MerchantFrame.frameHeight = MerchantFrame:GetSize()
	app.MerchantFrame.itemWidth, app.MerchantFrame.itemHeight = MerchantItem1:GetSize()
	app:CheckItemButtons(app.Settings.merchantRows * app.Settings.merchantColumns)
	MERCHANT_ITEMS_PER_PAGE = app.Settings.merchantRows * app.Settings.merchantColumns -- Use Blizzard's logic to render ItemButtons

	app.MerchantFrame.SearchBar = CreateFrame("EditBox", nil, MerchantFrame, "SearchBoxTemplate")
	app.MerchantFrame.SearchBar:SetSize(120, 20)
	app.MerchantFrame.SearchBar:SetAutoFocus(false)
	app.MerchantFrame.SearchBar:SetCursorPosition(0)
	app.MerchantFrame.SearchBar:HookScript("OnTextChanged", function() app:MerchantSearch() end)
	app.MerchantFrame.SearchBar:SetScript("OnEscapePressed", function(self)
		self:SetText("")
		self:ClearFocus()
	end)
	app.MerchantFrame.SearchBar:Hide()

	app.ExtendedMerchantSettingsButton = CreateFrame("Button", nil, app.MerchantFrame.SearchBar)
	app.ExtendedMerchantSettingsButton:SetPoint("RIGHT", app.MerchantFrame.SearchBar, "LEFT", -8, 0)
	app.ExtendedMerchantSettingsButton:SetSize(20, 20)
	local texture = app.ExtendedMerchantSettingsButton:CreateTexture(nil, "ARTWORK")
	texture:SetAllPoints(app.ExtendedMerchantSettingsButton)
	texture:SetTexture("Interface\\AddOns\\SlackersTweakSuite\\assets\\icon.png")
	app.ExtendedMerchantSettingsButton:SetHighlightTexture("UI-Niffen-Highlight-Bottom")
	app.ExtendedMerchantSettingsButton:SetScript("OnMouseDown", function()
		app.ExtendedMerchantSettingsButton:SetPoint("RIGHT", app.MerchantFrame.SearchBar, "LEFT", -5, -1)
	end)
	app.ExtendedMerchantSettingsButton:SetScript("OnMouseUp", function()
		app.ExtendedMerchantSettingsButton:SetPoint("RIGHT", app.MerchantFrame.SearchBar, "LEFT", -6, 0)
	end)
	app.ExtendedMerchantSettingsButton:SetScript("OnClick", function()
		if not app.ExtendedMerchantSettings:IsVisible() then
			app.ExtendedMerchantSettings:Show()
			app.ExtendedMerchantSettings:SetToplevel(true)
		else
			app.ExtendedMerchantSettings:Hide()
		end
	end)

	app.ExtendedMerchantSettings = CreateFrame("Frame", nil, MerchantFrame, "BasicFrameTemplate")
	app.ExtendedMerchantSettings:SetFrameStrata("DIALOG")
	app.ExtendedMerchantSettings:SetPoint("TOPLEFT", MerchantFrame, 60, -60)
	app.ExtendedMerchantSettings:EnableMouse(true) -- Stop OnEnter for the frames below from triggering
	app.ExtendedMerchantSettings:Hide()
	app.ExtendedMerchantSettings.TitleText:SetText(app.NameLong)

	app.ExtendedMerchantSettings:SetSize(200, 160)

	local min, max, increment = 2, 10, 1
	local options = Settings.CreateSliderOptions(min, max, increment)
	options:SetLabelFormatter(MinimalSliderWithSteppersMixin.Label.Top, function(value) return L.ROWS .. " " .. value end)
	options:SetLabelFormatter(MinimalSliderWithSteppersMixin.Label.Max, max)
	options:SetLabelFormatter(MinimalSliderWithSteppersMixin.Label.Min, min)

	app.ExtendedMerchantSettings.Rows = CreateFrame("Frame", nil, app.ExtendedMerchantSettings, "MinimalSliderWithSteppersTemplate")
	app.ExtendedMerchantSettings.Rows:SetWidth(180)
	app.ExtendedMerchantSettings.Rows:SetPoint("TOPLEFT", 10, -40)
	app.ExtendedMerchantSettings.Rows:Init(app.Settings.merchantRows, options.minValue, options.maxValue, options.steps, options.formatters)
	app.ExtendedMerchantSettings.Rows:RegisterCallback("OnValueChanged", function(self, value)
		app.Settings.merchantRows = value
		app:SetMerchantFrameSize(app.Settings.merchantRows, app.Settings.merchantColumns)
	end)

	local min, max, increment = 2, 6, 1
	local options = Settings.CreateSliderOptions(min, max, increment)
	options:SetLabelFormatter(MinimalSliderWithSteppersMixin.Label.Top, function(value) return L.COLUMNS .. " " .. value end)
	options:SetLabelFormatter(MinimalSliderWithSteppersMixin.Label.Max, max)
	options:SetLabelFormatter(MinimalSliderWithSteppersMixin.Label.Min, min)

	app.ExtendedMerchantSettings.Columns = CreateFrame("Frame", nil, app.ExtendedMerchantSettings, "MinimalSliderWithSteppersTemplate")
	app.ExtendedMerchantSettings.Columns:SetWidth(180)
	app.ExtendedMerchantSettings.Columns:SetPoint("TOP", app.ExtendedMerchantSettings.Rows, "BOTTOM", 0, -20)
	app.ExtendedMerchantSettings.Columns:Init(app.Settings.merchantColumns, options.minValue, options.maxValue, options.steps, options.formatters)
	app.ExtendedMerchantSettings.Columns:RegisterCallback("OnValueChanged", function(self, value)
		app.Settings.merchantColumns = value
		app:SetMerchantFrameSize(app.Settings.merchantRows, app.Settings.merchantColumns)
	end)

	hooksecurefunc("MerchantFrame_UpdateMerchantInfo", function() app:SetMerchantTab() end)
	hooksecurefunc("MerchantFrame_UpdateBuybackInfo", function() app:SetBuybackTab() end)
end

function app:SetMerchantTab()
	if not app:IsOnMerchantTab() or app.Flag.UpdatingMerchantFrame then return end
	app.Flag.UpdatingMerchantFrame = true

	local columns = app.Settings.merchantColumns
	local first = app:GetItemButton(1)

	for i = 2, app.Settings.merchantRows * columns do
		local row = math.floor((i - 1) / columns)
		local column = (i - 1) % columns

		local slot = app:GetItemButton(i)
		slot:ClearAllPoints()
		slot:SetPoint("TOPLEFT", first, "TOPLEFT", column * (app.MerchantFrame.itemWidth + SPACING_X), -row * (app.MerchantFrame.itemHeight + SPACING_Y))
	end

	for i = 1, #app.MerchantFrame.slots do
		if i > (MERCHANT_ITEMS_PER_PAGE) then
			app:GetItemButton(i):Hide()
		else
			app:GetItemButton(i):Show()
		end
	end

	app:ResizeMerchantFrame(true)

	MerchantPrevPageButton:ClearAllPoints()
	MerchantPrevPageButton:SetPoint("CENTER", MerchantFrame, "BOTTOMLEFT", 25, 96)
	MerchantNextPageButton:ClearAllPoints()
	MerchantNextPageButton:SetPoint("CENTER", MerchantFrame, "BOTTOMRIGHT", -25, 96)
	MerchantPageText:ClearAllPoints()
	MerchantPageText:SetPoint("BOTTOM", MerchantFrame, "BOTTOM", 0, 90)

	app.MerchantFrame.SearchBar:Show()
	app:MerchantSearch()

	app.Flag.UpdatingMerchantFrame = false
end

function app:SetBuybackTab()
	if not MerchantFrame or not MerchantFrame:IsVisible() or MerchantFrame.selectedTab == 1 then return end

	app.MerchantFrame.SearchBar:Hide()
	app.ExtendedMerchantSettings:Hide()

	for i = 1, #app.MerchantFrame.slots do
		if i > BUYBACK_ITEMS_PER_PAGE then
			app.MerchantFrame.slots[i]:Hide()
		else
			local itemButton = app:GetItemButton(i)
			itemButton:SetAlpha(1)
			itemButton:Show()
		end
	end

	for i = 2, BUYBACK_ITEMS_PER_PAGE do
		local itemButton = app:GetItemButton(i)
		itemButton:ClearAllPoints()
		if i % 2 == 0 then -- Blizzard repositions ItemButtons 3, 5, 7, 9 itself
			itemButton:SetPoint("TOPLEFT", app:GetItemButton(i - 1), "TOPRIGHT", 12, 0)
		else
			itemButton:SetPoint("TOPLEFT", app:GetItemButton(i - 2), "BOTTOMLEFT", 0, -15)
		end
	end

	app:ResizeMerchantFrame(false)
end

app.Event:Register("MERCHANT_SHOW", function()
	if app.Settings.extendedMerchant then
		app:ExtendedMerchantFrame()

		if app:IsOnMerchantTab() then
			app:SetMerchantTab()
		else
			app:SetBuybackTab()
		end

		app:StartBrutosaurTimer(5, 15)
	end
end)

app.Event:Register("MERCHANT_CLOSED", function()
	if app.Settings.extendedMerchant then
		app.ExtendedMerchantSettings:Hide()
		app.MerchantFrame.SearchBar:ClearFocus()
		app.MerchantFrame.SearchBar:SetText("")

		app:StopBrutosaurTimer()
	end
end)

function app:MerchantSearch()
	if not app:IsOnMerchantTab() then return end

	local query = app.MerchantFrame.SearchBar:GetText():lower():match("^%s*(.-)%s*$") -- Trim whitespaces
	local numItems = GetMerchantNumItems()

	local pageStart = ((MerchantFrame.page or 1) - 1) * MERCHANT_ITEMS_PER_PAGE
	for i = 1, MERCHANT_ITEMS_PER_PAGE do
		local index = pageStart + i
		local slot = app:GetItemButton(i)
		local info = index <= numItems and C_MerchantFrame.GetItemInfo(index)
		local name = info and info.name
		local matches = query == "" or (name and name:lower():find(query, 1, true))
		slot:SetAlpha(matches and 1 or DIM_ALPHA)
	end
end

--------------
-- RESIZING --
--------------

function app:SetMerchantFrameSize(rows, columns)
	app.Settings.merchantRows, app.Settings.merchantColumns = rows, columns
	app:CheckItemButtons(rows * columns)
	MERCHANT_ITEMS_PER_PAGE = rows * columns

	if app:IsOnMerchantTab() then
		MerchantFrame.page = 1
		MerchantFrame_Update()
	end
end

function app:ResizeMerchantFrame(merchantTab)
	local width, height = app.MerchantFrame.frameWidth, app.MerchantFrame.frameHeight
	if merchantTab then
		width = width + (app.Settings.merchantColumns - DEFAULT_COLUMNS) * (app.MerchantFrame.itemWidth + SPACING_X)
		height = height + (app.Settings.merchantRows - DEFAULT_ROWS) * (app.MerchantFrame.itemHeight + SPACING_Y)
	end
	if C_AddOns.IsAddOnLoaded("GW2_UI") then
		width = width + 24
	end
	if MerchantFrame:GetWidth() ~= width or MerchantFrame:GetHeight() ~= height then
		MerchantFrame:SetSize(width, height)
	end

	if MerchantFrame.FilterDropdown and MerchantFrame.FilterDropdown:IsVisible() then
		MerchantFrame.FilterDropdown:SetWidth(110)
		app.MerchantFrame.SearchBar:SetPoint("RIGHT", MerchantFrame.FilterDropdown, "LEFT", -6, 0)
	else
		app.MerchantFrame.SearchBar:SetPoint("TOPRIGHT", MerchantFrame, -16, -33)
	end

	MerchantBuyBackItem:ClearAllPoints()
	MerchantBuyBackItem:SetPoint("LEFT", MerchantFrameBottomLeftBorder, 205, -5)
	MerchantSellAllJunkButton:ClearAllPoints()
	if app.Forever and MerchantRepairAllButton:IsVisible() then
		MerchantSellAllJunkButton:SetPoint("LEFT", MerchantRepairAllButton, "RIGHT", 8, 0)
	else
		MerchantSellAllJunkButton:SetPoint("RIGHT", MerchantBuyBackItem, "LEFT", -18, 0)
	end

	local function setAnchor(region, left, bottom, right, top)
		region:ClearAllPoints()
		region:SetPoint("BOTTOMLEFT", MerchantFrame, "BOTTOMLEFT", left, bottom)
		region:SetPoint("TOPRIGHT", MerchantFrame, "BOTTOMLEFT", right, top)
	end

	if #C_MerchantFrame.GetMerchantCurrencies() > 0 then
		setAnchor(MerchantMoneyInset, 4, 4, 169, 27)
		setAnchor(MerchantMoneyBg, 7, 6, 166, 25)
		setAnchor(MerchantExtraCurrencyInset, app.MerchantFrame.frameWidth - 171, 4, app.MerchantFrame.frameWidth - 5, 27)
		setAnchor(MerchantExtraCurrencyBg, app.MerchantFrame.frameWidth - 166, 6, app.MerchantFrame.frameWidth - 7, 25)
	else
		setAnchor(MerchantMoneyInset, app.MerchantFrame.frameWidth - 171, 4, app.MerchantFrame.frameWidth - 5, 27)
		setAnchor(MerchantMoneyBg, app.MerchantFrame.frameWidth - 166, 6, app.MerchantFrame.frameWidth - 7, 25)
		setAnchor(MerchantExtraCurrencyInset, 4, 4, 169, 27)
		setAnchor(MerchantExtraCurrencyBg, 7, 6, 166, 25)
	end
	MerchantMoneyFrame:ClearAllPoints()
	MerchantMoneyFrame:SetPoint("BOTTOMRIGHT", MerchantFrame, "BOTTOMLEFT", app.MerchantFrame.frameWidth - ((#C_MerchantFrame.GetMerchantCurrencies() > 0) and 169 or 4), 8)
	if MerchantToken1 then
		MerchantToken1:ClearAllPoints()
		MerchantToken1:SetPoint("BOTTOMRIGHT", MerchantFrame, "BOTTOMLEFT", app.MerchantFrame.frameWidth - 16, 8)
	end

	EventRegistry:TriggerEvent("SlackersTweakSuite.ExtendedMerchantFrameResized")
end

----------------------
-- HELPER FUNCTIONS --
----------------------

function app:IsOnMerchantTab()
	return MerchantFrame and MerchantFrame:IsVisible() and MerchantFrame.selectedTab == 1
end

function app:CheckItemButtons(count)
	for number = 1, math.max(count, BUYBACK_ITEMS_PER_PAGE) do
		app:GetItemButton(number)
	end
end

function app:GetItemButton(number)
	if app.MerchantFrame.slots[number] then return app.MerchantFrame.slots[number] end

	local name = "MerchantItem" .. number
	local slot = _G[name]
	if number > BUYBACK_ITEMS_PER_PAGE and not slot then
		slot = CreateFrame("Frame", name, MerchantFrame, "MerchantItemTemplate")
		slot:Hide()
	end
	app.MerchantFrame.slots[number] = slot

	return slot
end

function api:SetMerchantSearch(string)
	if not app.MerchantFrame.SearchBar then return end
	app.MerchantFrame.SearchBar:SetText(string or "")
end

---------------
-- BRUTOSAUR --
---------------

function app:Brutosaur()
	local config = {
		spriteSize = 96,
		speed = 75,
		fps = 12.5,
		startOverlap = 16,
		rightInset = 10,
		bottomOffset = 8,
	}

	local sprite = MerchantFrame:CreateTexture(nil, "ARTWORK", nil, 7)
	sprite:SetSize(config.spriteSize, config.spriteSize)
	sprite:SetTexture("Interface\\AddOns\\SlackersTweakSuite\\assets\\brutosaur.png")
	sprite:Hide()

	local mask = MerchantFrame:CreateMaskTexture()
	mask:SetTexture("Interface\\Buttons\\WHITE8X8", "CLAMPTOBLACKADDITIVE", "CLAMPTOBLACKADDITIVE")
	sprite:AddMaskTexture(mask)

	local walkGroup = sprite:CreateAnimationGroup()
	walkGroup:SetLooping("REPEAT")

	local flipbook = walkGroup:CreateAnimation("FlipBook")
	flipbook:SetFlipBookRows(4)
	flipbook:SetFlipBookColumns(4)
	flipbook:SetFlipBookFrames(10)
	flipbook:SetDuration(10 / config.fps)

	local moveGroup = sprite:CreateAnimationGroup()
	local movement = moveGroup:CreateAnimation("Translation")
	movement:SetSmoothing("NONE")

	function api:StopBrutosaur()
		assert(self == api, "Call SlackersTweakSuite:StopBrutosaur(), not SlackersTweakSuite.StopBrutosaur()")

		moveGroup:Stop()
		walkGroup:Stop()
		sprite:Hide()
	end

	moveGroup:SetScript("OnFinished", function()
		api:StopBrutosaur()
		if app.BrutosaurTimerEnabled then
			app:StartBrutosaurTimer(10, 30)
		end
	end)

	function api:WalkBrutosaur()
		assert(self == api, "Call SlackersTweakSuite:WalkBrutosaur(), not SlackersTweakSuite.WalkBrutosaur()")

		if not app.Settings.extendedMerchant or not MerchantFrame:IsVisible() then return end

		api:StopBrutosaur()

		local scaleRatio = MerchantFrameBottomLeftBorder:GetEffectiveScale() / MerchantFrame:GetEffectiveScale()
		local startX = MerchantFrameBottomLeftBorder:GetRight() * scaleRatio - MerchantFrame:GetLeft() - config.startOverlap
		local endX = MerchantFrame:GetWidth() - config.rightInset
		local pathWidth = endX - startX
		if pathWidth <= 100 then return end

		mask:ClearAllPoints()
		mask:SetPoint("BOTTOMLEFT", MerchantFrame, "BOTTOMLEFT", startX, config.bottomOffset)
		mask:SetSize(pathWidth, config.spriteSize)

		sprite:ClearAllPoints()
		sprite:SetPoint("BOTTOMRIGHT", MerchantFrame, "BOTTOMLEFT", startX, config.bottomOffset)

		local distance = pathWidth + config.spriteSize
		movement:SetOffset(distance, 0)
		movement:SetDuration(distance / config.speed)

		sprite:Show()
		walkGroup:Play()
		moveGroup:Play()
	end

	function app:StartBrutosaurTimer(a, b)
		app.BrutosaurTimerEnabled = true
		app.BrutosaurTimer = C_Timer.NewTimer(math.random(a, b), function()
			app.BrutosaurTimer = nil
			api:WalkBrutosaur()
		end)
	end

	function app:StopBrutosaurTimer()
		app.BrutosaurTimerEnabled = nil
		api:StopBrutosaur()
		if app.BrutosaurTimer then
			app.BrutosaurTimer:Cancel()
			app.BrutosaurTimer = nil
		end
	end
end
