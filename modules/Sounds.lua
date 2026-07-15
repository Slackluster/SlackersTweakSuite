---------------------------------------
-- Slacker's Tweak Suite: Sounds.lua --
---------------------------------------

local appName, app = ...
local api = app.api
local L = app.locales

-----------
-- QUEUE --
-----------

function app:PlayQueueSound()
	if app.Settings["queueSound"] then
		PlaySoundFile(567478, "Master")
	end
end

app.Event:Register("LFG_PROPOSAL_SHOW", function()
	app:PlayQueueSound()
end)

app.Event:Register("PET_BATTLE_QUEUE_PROPOSE_MATCH", function()
	app:PlayQueueSound()
end)

hooksecurefunc("PVPReadyDialog_Display", function()
	app:PlayQueueSound()
end)

-----------------
-- READY CHECK --
-----------------

function app:PlayReadyCheckSound()
	if app.Settings["readyCheckSound"] then
		PlaySoundFile(567478, "Master")
	end
end

app.Event:Register("LFG_READY_CHECK_SHOW", function(isRequeue)
	app:PlayReadyCheckSound()
end)

app.Event:Register("READY_CHECK", function(initiatorName, readyCheckTimeLeft)
	app:PlayReadyCheckSound()
end)

---------------
-- COUNTDOWN --
---------------

function app:PlayCountdownSound(seconds)
	local function countdown(time)
		if not app.Flag.Countdown then return end
		if time ~= 0 then
			PlaySoundFile(567474, "Master")
			time = time - 1
			C_Timer.After(1, function()
				countdown(time)
			end)
		else
			PlaySoundFile(567438, "Master")
			app.Flag.Countdown = false
		end
	end
	if app.Settings["countdownSound"] then
		countdown(seconds)
	end
end

app.Event:Register("START_PLAYER_COUNTDOWN", function(initiatedBy, timeRemaining, totalTime, informChat, initiatedByName)
	app.Flag.Countdown = true
	app:PlayCountdownSound(timeRemaining)
end)

app.Event:Register("CANCEL_PLAYER_COUNTDOWN", function(initiatedBy, informChat, initiatedByName)
	app.Flag.Countdown = false
end)

-----------------
-- Tokyo Drift --
-----------------

app.Event:Register("UNIT_POWER_UPDATE", function(unitTarget, powerType)
	if app.Settings["tokyoDrift"] then
		local function hasBuff(spellID)
			for i = 1, 40 do
				local aura = C_UnitAuras.GetBuffDataByIndex("player", i)
				if aura and issecretvalue(aura.spellId) then return false end
				if aura and aura.spellId == spellID then
					return true
				end
			end
			return false
		end

		local secretAura = C_UnitAuras.GetBuffDataByIndex("player", 1)
		if secretAura and secretAura.spellId and issecretvalue(secretAura.spellId) then return end

		-- If we're gaining or losing alternative power (turbo!) and are mounted on our DRIVE mount
		if unitTarget == "player" and powerType == "ALTERNATE" and hasBuff(460013) then
			if not app.TDHandle then
				local _
				_, app.TDHandle = PlaySoundFile("Interface\\AddOns\\SlackersTweakSuite\\assets\\TokyoDrift.ogg", "Master")
			end

			app.TDLastPlayTime = GetTime()

			-- Check every 2.5 seconds if we're not stagnant
			local function checkStop()
				if app.TDHandle and GetTime() >= app.TDLastPlayTime + 2.5 and not hasBuff(471755) then
					StopSound(app.TDHandle)
					app.TDHandle = nil
				else
					C_Timer.After(2.5, checkStop)
				end
			end
			checkStop()
		end
	end
end)
