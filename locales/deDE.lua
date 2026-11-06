-------------------------------------
-- Slacker's Tweak Suite: deDE.lua --
-------------------------------------
-- German (Germany) localisation
-- Translator(s):

if GetLocale() ~= "deDE" then return end
local appName, app = ...
local L = app.locales

-- Core
-- L.NEW_VERSION_AVAILABLE =                "There is a newer version of %s available:" -- %s becomes the addon name

-- L.DEBUG_ENABLED =                        "Debug mode enabled"
-- L.DEBUG_DISABLED =                       "Debug mode disabled"
-- L.INVALID_COMMAND =                      "Invalid command"

-- Settings
-- L.VERSION =                              GAME_VERSION_LABEL .. ":" -- "Version"
-- L.SUPPORT_TEXTLONG1 =                    "Developing this addon takes a significant amount of time and effort."
-- L.SUPPORT_TEXTLONG2 =                    "Please consider financially supporting the developer."
-- L.SUPPORT =                              "Support"
-- L.BUY_ME_A_COFFEE =                      "Buy Me a Coffee" -- Brand name, if there isn't a localised version, keep it the way it is
-- L.THANK_YOU =                            "Thank you!"
-- L.FEEDBACK_AND_HELP =                    "Feedback & Help"
-- L.DISCORD =                              "Discord" -- Brand name, if there isn't a localised version, keep it the way it is
-- L.JOIN_DISCORD_SERVER =                  "Join the Discord server."
-- L.CTRL_C_COPY =                          "Ctrl+C to copy:"
-- L.LINK_COPIED =                          "Link copied to clipboard"

-- L.KEYBINDINGS_AND_SLASH_COMMANDS =       SETTINGS_KEYBINDINGS_LABEL .. " & Slash Commands" -- "Keybindings"
-- L.OPEN_SETTINGS =                        "Open the settings"

-- L.GENERAL =                              GENERAL -- "General"
-- L.CURSOR_GUIDE =                         "Cursor Guide"
-- L.CURSOR_GUIDE_DESC =                    "Show a guide around the cursor to help you keep track of it."
-- L.CURSOR_GUIDE_COMBAT =                  "Only In Combat"
-- L.CURSOR_GUIDE_COMBAT_DESC =             "Only show the cursor guide in combat."
-- L.SKIP_SEEN_CINEMATICS =                 "Skip Seen Cinematics"
-- L.SKIP_SEEN_CINEMATICS_DESC =            "Automatically skip before-seen cinematics."

-- L.INVENTORY =                            INVENTORY_TOOLTIP -- "Inventory"
-- L.DISABLE_ALWAYS_COMPARE =               "Disable Always Compare"
-- L.DISABLE_ALWAYS_COMPARE_DESC =          "Disable the always compare items behavior."
-- L.SHOW_TOKEN_PRICE =                     "Show WoW Token Price"
-- L.SHOW_TOKEN_PRICE_DESC =                "Show the current WoW Token price on the WoW Token item tooltip."
-- L.SPLIT_BAG_COUNT =                      "Split Reagent Bag Count"
-- L.SPLIT_BAG_COUNT_DESC =                 "Shows the free slots of your regular bags and your reagent bag separately on top of the backpack icon."

-- L.LOOT =                                 LOOT -- "Loot"
-- L.INSTANT_CATALYST =                     "Instant Catalyst"
-- L.INSTANT_CATALYST_DESC =                "Hold Shift to instantly catalyze an item, skipping the 5 second timer."
-- L.INSTANT_VAULT =                        "Instant Great Vault"
-- L.INSTANT_VAULT_DESC =                   "Hold Shift to instantly receive your reward from the Great Vault and skip the 5 second timer."
-- L.SHOW_TOOLTIP =                         "Show Tooltip"
-- L.SHOW_TOOLTIP_SETTING_DESC =            "Show the tooltip explaining how this feature works. The button text still changes when this is disabled."
-- L.HIDE_LOOT_ROLL_WINDOW =                "Hide Loot Roll Window"
-- L.HIDE_LOOT_ROLL_WINDOW_DESC =           "Hide the window that shows loot rolls and their results. You can show the window again with %s." -- %s becomes "/loot"
-- L.EXTENDED_MERCHANT_FRAME =              "Extended Merchant Frame"
-- L.EXTENDED_MERCHANT_FRAME_DESC =         "Choose how many rows and columns of items are shown per page on merchants, and adds a search bar."
-- L.DISABLE_MERCHANT_FILTER =              "Disable Merchant Filter"
-- L.DISABLE_MERCHANT_FILTER_DESC =         "Automatically set all merchant filters to \"All\" to display items normally not shown to your class."
-- L.DISABLE_MERCHANT_COMPARE =             "Disable Merchant Compare"
-- L.DISABLE_MERCHANT_COMPARE_DESC1 =       "Disable the automatic gear comparison on merchant items."
-- L.DISABLE_MERCHANT_COMPARE_DESC2 =       "May be incompatible with addons that filter merchant contents."

-- L.SOUND =                                SOUND -- "Sound"
-- L.PLAY_QUEUE_SOUND =                     "Play Queue Sound"
-- L.PLAY_QUEUE_SOUND_DESC =                "Play the queue sound on the Master channel when any queue pops, including battlegrounds and pet battles."
-- L.PLAY_READYCHECK_SOUND =                "Play Ready Check Sound"
-- L.PLAY_READYCHECK_SOUND_DESC =           "Play the ready check sound on the Master channel when a ready check is initiated."
-- L.PLAY_COUNTDOWN_SOUND =                 "Play Countdown Sound"
-- L.PLAY_COUNTDOWN_SOUND_DESC =            "Play the countdown sound on the Master channel when any countdown / pull timer is initiated."

-- L.ADDONS =                               "Addons"
-- L.DISABLE_HANDYNOTES_ALTRMB =            "Disable HandyNotes Alt " .. app.IconRMB
-- L.DISABLE_HANDYNOTES_ALTRMB_DESC =       "Disable HandyNotes' keybind on the map, re-enabling it for TomTom waypoints instead."
-- L.REQUIRES_RELOAD =                      REQUIRES_RELOAD -- "Requires Reload"
-- L.AH_PRICE_TOOLTIP =                     "AH Price Tooltip"
-- L.AH_PRICE_TOOLTIP_DESC1 =               "Show the most recent pricing information from either Auctionator, Oribos Exchange, or TradeSkillMaster."
-- L.AH_PRICE_TOOLTIP_DESC2 =               "Also rounds the value and fixes profession window, recipe, and pet prices."

-- L.HOLIDAYS =                             CALENDAR_FILTER_HOLIDAYS -- "Holidays"
-- L.HALLOWSEND_NOTRICK =                   "[Hallow's End] No Trick"
-- L.HALLOWSEND_NOTRICK_DESC =              "Sit down before completing a Candy Bucket quest, preventing getting tricked and pacified."

-- UI
-- L.GET_IT_NOW =                           "Get it now!"
-- L.HOLD_SHIFT_TOOLTIP =                   "Hold Shift to instantly receive your item and skip the 5 second timer."
-- L.REGION =                               "%s Region" -- %s becomes an abbreviated region name such as "EU" or "US"
-- L.RULESET = {}
-- L.RULESET[0] =                           "Ruleset"
-- L.RULESET[1] =                           GDAPI_REALMTYPE_NORMAL -- "Normal"
-- L.RULESET[2] =                           GDAPI_REALMTYPE_PVP -- "PvP"
-- L.RULESET[3] =                           "Roleplay"
-- L.RULESET[4] =                           "Roleplay PvP"
-- L.RULESET[5] =                           GUILD_PLAYSTYLE_HARDCORE -- "Hardcore"
-- L.ROWS =                                 "Rows:"
-- L.COLUMNS =                              "Columns:"
