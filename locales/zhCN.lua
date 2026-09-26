-------------------------------------
-- Slacker's Tweak Suite: zhCN.lua --
-------------------------------------
-- Chinese (Simplified, PRC) localisation
-- Translator(s):

if GetLocale() ~= "zhCN" then return end
local appName, app = ...
local L = app.locales

-- Core
L.NEW_VERSION_AVAILABLE =                "%s 有新版本可用：" -- %s becomes the addon name

L.DEBUG_ENABLED =                        "调试模式已启用"
L.DEBUG_DISABLED =                       "调试模式已禁用"
L.INVALID_COMMAND =                      "无效指令"

-- Settings
L.SETTINGS_VERSION =                     GAME_VERSION_LABEL .. ":" -- "Version"
L.SETTINGS_SUPPORT_TEXTLONG1 =           "开发这个插件需要大量的时间和精力。"
L.SETTINGS_SUPPORT_TEXTLONG2 =           "请考虑在经济上支持开发者。"
L.SETTINGS_SUPPORT_TEXT =                "支持"
L.SETTINGS_SUPPORT_BUTTON =              "Buy Me a Coffee" -- Brand name, if there isn't a localised version, keep it the way it is
L.SETTINGS_SUPPORT_DESC =                "谢谢！"
L.SETTINGS_HELP_TEXT =                   "反馈与帮助"
L.SETTINGS_HELP_BUTTON =                 "Discord" -- Brand name, if there isn't a localised version, keep it the way it is
L.SETTINGS_HELP_DESC =                   "加入 Discord 服务器。"
L.SETTINGS_URL_COPY =                    "按 Ctrl+C 复制："
L.SETTINGS_URL_COPIED =                  "链接已复制到剪贴板"

L.SETTINGS_KEYSLASH_TITLE =              SETTINGS_KEYBINDINGS_LABEL .. " & 斜杠命令" -- "Keybindings"
L.SLASH_OPEN_SETTINGS =                  "打开设置"

L.GENERAL =                              GENERAL -- "General"
-- L.CURSOR_GUIDE =                         "Cursor Guide"
-- L.CURSOR_GUIDE_DESC =                    "Show a guide around the cursor to help you keep track of it."
-- L.CURSOR_GUIDE_COMBAT=                   "Only In Combat"
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
-- L.INSTANT_TOOLTIP =                      "Show Tooltip"
-- L.INSTANT_TOOLTIP_DESC =                 "Show the tooltip explaining how this feature works. The button text still changes when this is disabled."
-- L.HIDE_LOOT_ROLL_WINDOW =                "Hide Loot Roll Window"
-- L.HIDE_LOOT_ROLL_WINDOW_DESC =           "Hide the window that shows loot rolls and their results. You can show the window again with %s." -- %s becomes "/loot"
-- L.DISABLE_VENDOR_FILTER =                "Disable Vendor Filter"
-- L.DISABLE_VENDOR_FILTER_DESC =           "Automatically set all vendor filters to \"All\" to display items normally not shown to your class."
-- L.DISABLE_VENDOR_COMPARE =               "Disable Vendor Compare"
-- L.DISABLE_VENDOR_COMPARE_DESC =          "Disable the automatic gear comparison on vendor items."

-- L.SOUND =                                SOUND -- "Sound"
-- L.PLAY_QUEUE_SOUND=                      "Play Queue Sound"
-- L.PLAY_QUEUE_SOUND_DESC =                "Play the queue sound on the Master channel when any queue pops, including battlegrounds and pet battles."
-- L.PLAY_READYCHECK_SOUND =                "Play Ready Check Sound"
-- L.PLAY_READYCHECK_SOUND_DESC =           "Play the ready check sound on the Master channel when a ready check is initiated."
-- L.PLAY_COUNTDOWN_SOUND =                 "Play Countdown Sound"
-- L.PLAY_COUNTDOWN_SOUND_DESC =            "Play the countdown sound on the Master channel when any countdown / pull timer is initiated."

-- L.ADDONS =                               "Addons"
-- L.DISABLE_HANDYNOTES_ALTRMB =            "Disable HandyNotes Alt " .. app.IconRMB
-- L.DISABLE_HANDYNOTES_ALTRMB_DESC =       "Disable HandyNotes' keybind on the map, re-enabling it for TomTom waypoints instead."
-- L.AH_PRICE_TOOLTIP =                     "AH Price Tooltip"
-- L.AH_PRICE_TOOLTIP_DESC1 =               "Show the most recent pricing information from either Auctionator, Oribos Exchange, or TradeSkillMaster."
-- L.AH_PRICE_TOOLTIP_DESC2 =               "Also rounds the value and fixes profession window, recipe, and pet prices."
-- L.REQUIRES_RELOAD =                      REQUIRES_RELOAD -- "Requires Reload"

-- L.HOLIDAYS =                             CALENDAR_FILTER_HOLIDAYS -- "Holidays"
-- L.HALLOWSEND_NOTRICK =                   "[Hallow's End] No Trick"
-- L.HALLOWSEND_NOTRICK_DESC =              "Sit down before completing a Candy Bucket quest, preventing getting tricked and pacified."

-- UI
-- L.INSTANT_BUTTON =                       "Get it now!"
-- L.INSTANT_TOOLTIP =                      "Hold Shift to instantly receive your item and skip the 5 second timer."
-- L.REGION =                               "%s Region" -- %s becomes an abbreviated region name such as "EU" or "US"
