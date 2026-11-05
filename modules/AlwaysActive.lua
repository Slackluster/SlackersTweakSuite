---------------------------------------------
-- Slacker's Tweak Suite: AlwaysActive.lua --
---------------------------------------------

local appName, app = ...

----------------
-- REALM NAME --
----------------

function app:UpdateCharacterFrameTitle()
	if not app.Retail then return end

	if CharacterFrame and CharacterFrame:IsVisible() and CharacterFrameTitleText then
		RunNextFrame(function()
			local realm = GetNormalizedRealmName()
			local titleText = CharacterFrameTitleText:GetText()
			if not titleText:match(realm .. "$") then
				CharacterFrameTitleText:SetText(titleText .. " - " .. app:Colour(realm, "EDBD21"))
			end
		end)
	end
end

EventRegistry:RegisterCallback("CharacterFrame.Show", function()
	app:UpdateCharacterFrameTitle()
end)

app.Event:Register("UNIT_NAME_UPDATE", function(unitTarget)
	if unitTarget == "player" then
		app:UpdateCharacterFrameTitle()
	end
end)
