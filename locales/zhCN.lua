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
L.CURSOR_GUIDE =                         "光标指引"
L.CURSOR_GUIDE_DESC =                    "在鼠标指针周围显示指引，帮助你找到光标。"
L.CURSOR_GUIDE_COMBAT =                  "仅战斗中"
L.CURSOR_GUIDE_COMBAT_DESC =             "仅在战斗中显示光标指引。"
L.SKIP_SEEN_CINEMATICS =                 "跳过已看过的过场动画"
L.SKIP_SEEN_CINEMATICS_DESC =            "自动跳过已观看的过场动画。"

L.INVENTORY =                            INVENTORY_TOOLTIP -- "Inventory"
L.DISABLE_ALWAYS_COMPARE =               "禁用始终比较"
L.DISABLE_ALWAYS_COMPARE_DESC =          "禁用始终比较物品的功能。"
L.SHOW_TOKEN_PRICE =                     "显示魔兽世界时光徽章价格"
L.SHOW_TOKEN_PRICE_DESC =                "在魔兽世界时光徽章物品提示中显示当前价格。"
L.SPLIT_BAG_COUNT =                      "分别显示材料包空位数量"
L.SPLIT_BAG_COUNT_DESC =                 "在背包图标上方分别显示普通背包和材料包的剩余空位。"

L.LOOT =                                 LOOT -- "Loot"
L.INSTANT_CATALYST =                     "即时化生台"
L.INSTANT_CATALYST_DESC =                "按住Shift立即使用化生台转换物品，跳过5秒等待时间。"
L.INSTANT_VAULT =                        "即时宏伟宝库"
L.INSTANT_VAULT_DESC =                   "按住Shift立即从宏伟宝库领取奖励，跳过5秒等待时间。"
L.SHOW_TOOLTIP =                         "显示提示"
L.SHOW_TOOLTIP_SETTING_DESC =            "显示解释此功能如何工作的提示。禁用此选项时，按钮文本仍会变化。"
L.HIDE_LOOT_ROLL_WINDOW =                "隐藏掷骰窗口"
L.HIDE_LOOT_ROLL_WINDOW_DESC =           "隐藏显示掷骰及其结果的窗口。您可以使用%s再次显示窗口。" -- %s becomes "/loot"
L.LEM_LOOT_ROLLS =                       "编辑模式中的战利品掷骰"
L.LEM_LOOT_ROLLS_DESC =                  "将需求/贪婪战利品掷骰框架添加到编辑模式。"
L.EXTENDED_MERCHANT_FRAME =              "扩展商人窗口"
L.EXTENDED_MERCHANT_FRAME_DESC =         "设置商人每页显示的物品行数和列数，并添加搜索栏。"
L.DISABLE_MERCHANT_FILTER =              "禁用商人筛选"
L.DISABLE_MERCHANT_FILTER_DESC =         "自动将所有商人筛选器设为“全部”，以显示通常对你的职业隐藏的物品。"
L.DISABLE_MERCHANT_COMPARE =             "禁用商人装备比较"
L.DISABLE_MERCHANT_COMPARE_DESC1 =       "禁用商人物品的自动装备比较。"
L.DISABLE_MERCHANT_COMPARE_DESC2 =       "可能与筛选商人物品的插件不兼容。"

L.WORLD =                                WORLD -- "World"
L.HALLOWSEND_NOTRICK =                   "[万圣节] 不要恶作剧"
L.HALLOWSEND_NOTRICK_DESC =              "完成糖果桶任务前先坐下，避免被恶作剧并进入无法行动状态。"
L.QUEST_SPARKLES =                       "任务闪光效果"
L.QUEST_SPARKLES_DESC1 =                 "在任务物品和任务发布者上显示闪光效果。（这两项设置无法分开调整。）"
L.QUEST_SPARKLES_DESC2 =                 "禁用此功能需要重新启动游戏客户端。"
L.MINIMAP_TARGET =                       "小地图目标"
L.MINIMAP_TARGET_DESC =                  "在小地图上显示你的目标和焦点目标。"

L.SOUND =                                SOUND -- "Sound"
L.PLAY_QUEUE_SOUND =                     "播放队列音效"
L.PLAY_QUEUE_SOUND_DESC =                "任何队列就绪时（包括战场和宠物对战），通过主音量频道播放队列音效。"
L.PLAY_READYCHECK_SOUND =                "播放就位确认音效"
L.PLAY_READYCHECK_SOUND_DESC =           "开始就位确认时，通过主音量频道播放就位确认音效。"
L.PLAY_COUNTDOWN_SOUND =                 "播放倒计时音效"
L.PLAY_COUNTDOWN_SOUND_DESC =            "开始倒计时或开怪倒计时时，通过主音量频道播放倒计时音效。"

L.ADDONS =                               "插件"
L.DISABLE_HANDYNOTES_ALTRMB =            "禁用 HandyNotes Alt " .. app.IconRMB
L.DISABLE_HANDYNOTES_ALTRMB_DESC =       "禁用地图上的 HandyNotes 快捷键，以便将其重新用于 TomTom 路径点。"
L.REQUIRES_RELOAD =                      REQUIRES_RELOAD -- "Requires Reload"
L.AH_PRICE_TOOLTIP =                     "在鼠标提示中显示拍卖行价格"
L.AH_PRICE_TOOLTIP_DESC1 =               "显示 Auctionator、Oribos Exchange 或 TradeSkillMaster 提供的最新价格信息。"
L.AH_PRICE_TOOLTIP_DESC2 =               "同时对数值进行四舍五入，并修正专业技能窗口、配方和宠物的价格。"

-- UI
L.GET_IT_NOW =                           "立即获取！"
L.HOLD_SHIFT_TOOLTIP =                   "按住Shift立即获取物品，跳过5秒等待时间。"
L.REGION =                               "%s 地区" -- %s becomes an abbreviated region name such as "EU" or "US"
L.RULESET = {}
L.RULESET[0] =                           "规则集"
L.RULESET[1] =                           GDAPI_REALMTYPE_NORMAL -- "Normal"
L.RULESET[2] =                           GDAPI_REALMTYPE_PVP -- "PvP"
L.RULESET[3] =                           "角色扮演"
L.RULESET[4] =                           "角色扮演 PvP"
L.RULESET[5] =                           GUILD_PLAYSTYLE_HARDCORE -- "Hardcore"
L.ROWS =                                 "行数："
L.COLUMNS =                              "列数："
L.QUEST_SPARKLES_WARNING =               "尝试应用任务闪光效果超过 5 次。其他插件可能也在监控这些 CVar。"
