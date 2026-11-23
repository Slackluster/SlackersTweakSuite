-------------------------------------
-- Slacker's Tweak Suite: zhTW.lua --
-------------------------------------
-- Chinese (Traditional, Taiwan) localisation
-- Translator(s):

if GetLocale() ~= "zhTW" then return end
local appName, app = ...
local L = app.locales

-- Core
L.NEW_VERSION_AVAILABLE =                "%s 有新版本可用：" -- %s becomes the addon name

L.DEBUG_ENABLED =                        "除錯模式已啟用"
L.DEBUG_DISABLED =                       "除錯模式已停用"
L.INVALID_COMMAND =                      "指令無效"

-- Settings
L.VERSION =                              GAME_VERSION_LABEL .. "：" -- "Version"
L.SUPPORT_TEXTLONG1 =                    "開發這個插件需要投入大量的時間與心力。"
L.SUPPORT_TEXTLONG2 =                    "歡迎考慮以金錢支持開發者。"
L.SUPPORT =                              "支持"
L.BUY_ME_A_COFFEE =                      "Buy Me a Coffee" -- Brand name, if there isn't a localised version, keep it the way it is
L.THANK_YOU =                            "謝謝！"
L.FEEDBACK_AND_HELP =                    "意見回饋與協助"
L.DISCORD =                              "Discord" -- Brand name, if there isn't a localised version, keep it the way it is
L.JOIN_DISCORD_SERVER =                  "加入 Discord 伺服器。"
L.CTRL_C_COPY =                          "按 Ctrl+C 複製："
L.LINK_COPIED =                          "連結已複製到剪貼簿"

L.KEYBINDINGS_AND_SLASH_COMMANDS =       SETTINGS_KEYBINDINGS_LABEL .. " & 斜線指令" -- "Keybindings"
L.OPEN_SETTINGS =                        "開啟設定"

L.GENERAL =                              GENERAL -- "General"
L.CURSOR_GUIDE =                         "游標指引"
L.CURSOR_GUIDE_DESC =                    "在游標周圍顯示指引，讓你更容易找到游標。"
L.CURSOR_GUIDE_COMBAT =                  "僅戰鬥中"
L.CURSOR_GUIDE_COMBAT_DESC =             "僅在戰鬥中顯示游標指引。"
L.SKIP_SEEN_CINEMATICS =                 "跳過已看過的過場動畫"
L.SKIP_SEEN_CINEMATICS_DESC =            "自動跳過已看過的過場動畫。"

L.INVENTORY =                            INVENTORY_TOOLTIP -- "Inventory"
L.DISABLE_ALWAYS_COMPARE =               "停用永遠比較裝備"
L.DISABLE_ALWAYS_COMPARE_DESC =          "停用永遠比較物品的功能。"
L.SHOW_TOKEN_PRICE =                     "顯示 WoW 代幣價格"
L.SHOW_TOKEN_PRICE_DESC =                "在 WoW 代幣物品的滑鼠提示中顯示目前價格。"
L.SPLIT_BAG_COUNT =                      "分開計算材料包欄位"
L.SPLIT_BAG_COUNT_DESC =                 "在背包圖示上方，分別顯示一般背包與材料包剩餘的欄位數量。"

L.LOOT =                                 LOOT -- "Loot"
L.INSTANT_CATALYST =                     "即時催化器"
L.INSTANT_CATALYST_DESC =                "按住 Shift 可立即催化物品，跳過 5 秒倒數。"
L.INSTANT_VAULT =                        "立即領取寶庫"
L.INSTANT_VAULT_DESC =                   "按住 Shift 可立即領取寶庫獎勵，跳過 5 秒倒數。"
L.SHOW_TOOLTIP =                         "顯示滑鼠提示"
L.SHOW_TOOLTIP_SETTING_DESC =            "顯示介紹此功能的滑鼠提示。即使停用，按鈕文字仍會變更。"
L.HIDE_LOOT_ROLL_WINDOW =                "隱藏戰利品擲骰視窗"
L.HIDE_LOOT_ROLL_WINDOW_DESC =           "隱藏顯示戰利品擲骰及結果的視窗。你可以使用 %s 再次顯示。" -- %s becomes "/loot"
L.LEM_LOOT_ROLLS =                       "編輯模式中的戰利品擲骰"
L.LEM_LOOT_ROLLS_DESC =                  "將需求／貪婪擲骰視窗加入編輯模式。"
L.EXTENDED_MERCHANT_FRAME =              "擴充商人視窗"
L.EXTENDED_MERCHANT_FRAME_DESC =         "選擇商人每頁要顯示的物品列數與欄數，並加入搜尋列。"
L.DISABLE_MERCHANT_FILTER =              "停用商人篩選"
L.DISABLE_MERCHANT_FILTER_DESC =         "自動將所有商人篩選條件設為「全部」，以顯示平常不會對你的職業顯示的物品。"
L.DISABLE_MERCHANT_COMPARE =             "停用商人物品比較"
L.DISABLE_MERCHANT_COMPARE_DESC1 =       "停用商人物品的自動裝備比較。"
L.DISABLE_MERCHANT_COMPARE_DESC2 =       "可能與篩選商人物品的插件不相容。"

L.WORLD =                                WORLD -- "World"
L.HALLOWSEND_NOTRICK =                   "[萬鬼節] 不要惡作劇"
L.HALLOWSEND_NOTRICK_DESC =              "完成糖果桶任務前先坐下，以避免遭到惡作劇並陷入無法行動狀態。"
L.QUEST_SPARKLES =                       "任務閃爍效果"
L.QUEST_SPARKLES_DESC1 =                 "在任務物件及任務給予者上顯示閃爍效果。（無法分別調整這兩項設定。）"
L.QUEST_SPARKLES_DESC2 =                 "停用此功能需要重新啟動遊戲客戶端。"
L.MINIMAP_TARGET =                       "小地圖目標"
L.MINIMAP_TARGET_DESC =                  "在小地圖上顯示你的目標和專注目標。"

L.SOUND =                                SOUND -- "Sound"
L.PLAY_QUEUE_SOUND =                     "播放排隊音效"
L.PLAY_QUEUE_SOUND_DESC =                "任何佇列就緒時（包括戰場與寵物對戰），透過主要音效頻道播放排隊音效。"
L.PLAY_READYCHECK_SOUND =                "播放就緒確認音效"
L.PLAY_READYCHECK_SOUND_DESC =           "開始就緒確認時，透過主要音效頻道播放就緒確認音效。"
L.PLAY_COUNTDOWN_SOUND =                 "播放倒數音效"
L.PLAY_COUNTDOWN_SOUND_DESC =            "開始倒數或開怪計時器時，透過主要音效頻道播放倒數音效。"

L.ADDONS =                               "插件"
L.DISABLE_HANDYNOTES_ALTRMB =            "停用 HandyNotes Alt " .. app.IconRMB
L.DISABLE_HANDYNOTES_ALTRMB_DESC =       "停用地圖上 HandyNotes 的快捷鍵，讓 TomTom 導航點重新使用該按鍵。"
L.REQUIRES_RELOAD =                      REQUIRES_RELOAD -- "Requires Reload"
L.AH_PRICE_TOOLTIP =                     "滑鼠提示中的拍賣場價格"
L.AH_PRICE_TOOLTIP_DESC1 =               "顯示 Auctionator、Oribos Exchange 或 TradeSkillMaster 提供的最新價格資訊。"
L.AH_PRICE_TOOLTIP_DESC2 =               "同時將數值四捨五入，並修正專業技能視窗、配方與寵物的價格。"

-- UI
L.GET_IT_NOW =                           "立即取得！"
L.HOLD_SHIFT_TOOLTIP =                   "按住 Shift 可立即領取物品，跳過 5 秒倒數。"
L.REGION =                               "%s 地區" -- %s becomes an abbreviated region name such as "EU" or "US"
L.RULESET = {}
L.RULESET[0] =                           "規則集"
L.RULESET[1] =                           GDAPI_REALMTYPE_NORMAL -- "Normal"
L.RULESET[2] =                           GDAPI_REALMTYPE_PVP -- "PvP"
L.RULESET[3] =                           "角色扮演"
L.RULESET[4] =                           "角色扮演 PvP"
L.RULESET[5] =                           GUILD_PLAYSTYLE_HARDCORE -- "Hardcore"
L.ROWS =                                 "列數："
L.COLUMNS =                              "欄數："
L.QUEST_SPARKLES_WARNING =               "已嘗試套用任務閃爍效果超過 5 次。其他插件可能也在監控這些 CVar。"
