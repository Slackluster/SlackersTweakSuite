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
L.VERSION =                              GAME_VERSION_LABEL .. "：" -- "Version"
L.SUPPORT_TEXTLONG1 =                    "开发这个插件需要大量的时间和精力。"
L.SUPPORT_TEXTLONG2 =                    "请考虑在经济上支持开发者。"
L.SUPPORT =                              "支持"
L.BUY_ME_A_COFFEE =                      "Buy Me a Coffee" -- Brand name, if there isn't a localised version, keep it the way it is
L.THANK_YOU =                            "谢谢！"
L.FEEDBACK_AND_HELP =                    "反馈与帮助"
L.DISCORD =                              "Discord" -- Brand name, if there isn't a localised version, keep it the way it is
L.JOIN_DISCORD_SERVER =                  "加入 Discord 服务器。"
L.CTRL_C_COPY =                          "按 Ctrl+C 复制："
L.LINK_COPIED =                          "链接已复制到剪贴板"

L.KEYBINDINGS_AND_SLASH_COMMANDS =       SETTINGS_KEYBINDINGS_LABEL .. " & 斜杠命令" -- "Keybindings"
L.OPEN_SETTINGS =                        "打开设置"

L.GENERAL =                              GENERAL -- "General"
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
L.INSTANT_CATALYST =                     "即时化生台"
L.INSTANT_CATALYST_DESC =                "按住Shift立即使用化生台转换物品，跳过5秒等待时间。"
L.INSTANT_VAULT =                        "即时宏伟宝库"
L.INSTANT_VAULT_DESC =                   "按住Shift立即从宏伟宝库领取奖励，跳过5秒等待时间。"
L.SHOW_TOOLTIP =                         "显示提示"
L.SHOW_TOOLTIP_SETTING_DESC =            "显示解释此功能如何工作的提示。禁用此选项时，按钮文本仍会变化。"
L.HIDE_LOOT_ROLL_WINDOW =                "隐藏掷骰窗口"
L.HIDE_LOOT_ROLL_WINDOW_DESC =           "隐藏显示掷骰及其结果的窗口。您可以使用%s再次显示窗口。" -- %s becomes "/loot"
-- L.LEM_LOOT_ROLLS =                       "Loot Rolls in Edit Mode"
-- L.LEM_LOOT_ROLLS_DESC =                  "Add the Need/Greed loot roll frame to Edit Mode."
-- L.EXTENDED_MERCHANT_FRAME =              "Extended Merchant Frame"
-- L.EXTENDED_MERCHANT_FRAME_DESC =         "Choose how many rows and columns of items are shown per page on merchants, and adds a search bar."
-- L.DISABLE_MERCHANT_FILTER =              "Disable Merchant Filter"
-- L.DISABLE_MERCHANT_FILTER_DESC =         "Automatically set all merchant filters to \"All\" to display items normally not shown to your class."
-- L.DISABLE_MERCHANT_COMPARE =             "Disable Merchant Compare"
-- L.DISABLE_MERCHANT_COMPARE_DESC1 =       "Disable the automatic gear comparison on merchant items."
-- L.DISABLE_MERCHANT_COMPARE_DESC2 =       "May be incompatible with addons that filter merchant contents."

-- L.WORLD =                                WORLD -- "World"
-- L.HALLOWSEND_NOTRICK =                   "[Hallow's End] No Trick"
-- L.HALLOWSEND_NOTRICK_DESC =              "Sit down before completing a Candy Bucket quest, preventing getting tricked and pacified."
-- L.QUEST_SPARKLES =                       "Quest Sparkles"
-- L.QUEST_SPARKLES_DESC1 =                 "Show sparkles on quest objects and quest givers. (These settings cannot be separated.)"
-- L.QUEST_SPARKLES_DESC2 =                 "Disabling this feature requires a client restart."
-- L.MINIMAP_TARGET =                       "Minimap Target"
-- L.MINIMAP_TARGET_DESC =                  "Show your target and focus on the minimap."

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
L.REQUIRES_RELOAD =                      REQUIRES_RELOAD -- "Requires Reload"
-- L.AH_PRICE_TOOLTIP =                     "AH Price Tooltip"
-- L.AH_PRICE_TOOLTIP_DESC1 =               "Show the most recent pricing information from either Auctionator, Oribos Exchange, or TradeSkillMaster."
-- L.AH_PRICE_TOOLTIP_DESC2 =               "Also rounds the value and fixes profession window, recipe, and pet prices."

-- UI
L.GET_IT_NOW =                           "立即获取！"
L.HOLD_SHIFT_TOOLTIP =                   "按住Shift立即获取物品，跳过5秒等待时间。"
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
-- L.QUEST_SPARKLES_WARNING =               "Tried to apply Quest Sparkles more than 5 times. Another addon may also watching these CVars."
