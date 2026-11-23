-------------------------------------
-- Slacker's Tweak Suite: koKR.lua --
-------------------------------------
-- Korean (Korea) localisation
-- Translator(s):

if GetLocale() ~= "koKR" then return end
local appName, app = ...
local L = app.locales

-- Core
L.NEW_VERSION_AVAILABLE =                "%s의 새 버전이 출시되었습니다:" -- %s becomes the addon name

L.DEBUG_ENABLED =                        "디버그 모드 활성화"
L.DEBUG_DISABLED =                       "디버그 모드 비활성화"
L.INVALID_COMMAND =                      "잘못된 명령어"

-- Settings
L.VERSION =                              GAME_VERSION_LABEL .. ":" -- "Version"
L.SUPPORT_TEXTLONG1 =                    "이 애드온을 개발하는 데에는 많은 시간과 노력이 필요합니다."
L.SUPPORT_TEXTLONG2 =                    "개발자를 금전적으로 후원하는 것을 고려해 주세요."
L.SUPPORT =                              "후원"
L.BUY_ME_A_COFFEE =                      "Buy Me a Coffee" -- Brand name, if there isn't a localised version, keep it the way it is
L.THANK_YOU =                            "감사합니다!"
L.FEEDBACK_AND_HELP =                    "피드백 및 도움말"
L.DISCORD =                              "Discord" -- Brand name, if there isn't a localised version, keep it the way it is
L.JOIN_DISCORD_SERVER =                  "Discord 서버에 참여하세요."
L.CTRL_C_COPY =                          "Ctrl+C를 눌러 복사:"
L.LINK_COPIED =                          "링크를 클립보드에 복사했습니다"

L.KEYBINDINGS_AND_SLASH_COMMANDS =       SETTINGS_KEYBINDINGS_LABEL .. " 및 슬래시 명령어" -- "Keybindings"
L.OPEN_SETTINGS =                        "설정 열기"

L.GENERAL =                              GENERAL -- "General"
L.CURSOR_GUIDE =                         "커서 안내"
L.CURSOR_GUIDE_DESC =                    "마우스 커서를 쉽게 찾을 수 있도록 주변에 안내 표시를 추가합니다."
L.CURSOR_GUIDE_COMBAT =                  "전투 중에만"
L.CURSOR_GUIDE_COMBAT_DESC =             "전투 중에만 커서 안내를 표시합니다."
L.SKIP_SEEN_CINEMATICS =                 "이미 본 영상 건너뛰기"
L.SKIP_SEEN_CINEMATICS_DESC =            "이미 본 영상은 자동으로 건너뜁니다."

L.INVENTORY =                            INVENTORY_TOOLTIP -- "Inventory"
L.DISABLE_ALWAYS_COMPARE =               "항상 장비 비교 비활성화"
L.DISABLE_ALWAYS_COMPARE_DESC =          "아이템 항상 비교 기능을 비활성화합니다."
L.SHOW_TOKEN_PRICE =                     "WoW 토큰 가격 표시"
L.SHOW_TOKEN_PRICE_DESC =                "WoW 토큰 아이템의 툴팁에 현재 가격을 표시합니다."
L.SPLIT_BAG_COUNT =                      "재료 가방 칸 별도 표시"
L.SPLIT_BAG_COUNT_DESC =                 "배낭 아이콘 위에 일반 가방과 재료 가방의 빈 칸 수를 따로 표시합니다."

L.LOOT =                                 LOOT -- "Loot"
L.INSTANT_CATALYST =                     "즉시 촉매"
L.INSTANT_CATALYST_DESC =                "Shift 키를 누르면 5초 타이머를 건너뛰고 아이템을 즉시 촉매 변환합니다."
L.INSTANT_VAULT =                        "위대한 금고 즉시 수령"
L.INSTANT_VAULT_DESC =                   "Shift 키를 누르면 5초 타이머를 건너뛰고 위대한 금고 보상을 즉시 받습니다."
L.SHOW_TOOLTIP =                         "툴팁 표시"
L.SHOW_TOOLTIP_SETTING_DESC =            "기능 설명 툴팁을 표시합니다. 이 기능을 꺼도 버튼 텍스트는 계속 바뀝니다."
L.HIDE_LOOT_ROLL_WINDOW =                "전리품 주사위 창 숨기기"
L.HIDE_LOOT_ROLL_WINDOW_DESC =           "전리품 주사위 및 결과 창을 숨깁니다. %s을(를) 사용하면 다시 표시할 수 있습니다." -- %s becomes "/loot"
L.LEM_LOOT_ROLLS =                       "편집 모드의 전리품 주사위"
L.LEM_LOOT_ROLLS_DESC =                  "주사위 굴림 창을 편집 모드에 추가합니다."
L.EXTENDED_MERCHANT_FRAME =              "확장 상인 창"
L.EXTENDED_MERCHANT_FRAME_DESC =         "상인 창에서 페이지마다 표시할 아이템의 행과 열 수를 선택하고 검색창을 추가합니다."
L.DISABLE_MERCHANT_FILTER =              "상인 필터 비활성화"
L.DISABLE_MERCHANT_FILTER_DESC =         "모든 상인 필터를 자동으로 \"전체\"로 설정하여 직업에 따라 숨겨진 아이템도 표시합니다."
L.DISABLE_MERCHANT_COMPARE =             "상인 장비 비교 비활성화"
L.DISABLE_MERCHANT_COMPARE_DESC1 =       "상인 아이템의 자동 장비 비교를 비활성화합니다."
L.DISABLE_MERCHANT_COMPARE_DESC2 =       "상인 판매 목록을 필터링하는 애드온과 호환되지 않을 수 있습니다."

L.WORLD =                                WORLD -- "World"
L.HALLOWSEND_NOTRICK =                   "[할로윈 축제] 장난 방지"
L.HALLOWSEND_NOTRICK_DESC =              "사탕 바구니 퀘스트를 완료하기 전에 앉으면 장난에 걸려 행동 불가 상태가 되는 것을 방지할 수 있습니다."
L.QUEST_SPARKLES =                       "퀘스트 반짝임 효과"
L.QUEST_SPARKLES_DESC1 =                 "퀘스트 아이템과 퀘스트 제공자에 반짝임 효과를 표시합니다. (두 설정은 따로 조정할 수 없습니다.)"
L.QUEST_SPARKLES_DESC2 =                 "이 기능을 비활성화하려면 게임 클라이언트를 다시 시작해야 합니다."
L.MINIMAP_TARGET =                       "미니맵 대상"
L.MINIMAP_TARGET_DESC =                  "미니맵에 현재 대상과 주시 대상을 표시합니다."

L.SOUND =                                SOUND -- "Sound"
L.PLAY_QUEUE_SOUND =                     "대기열 알림음 재생"
L.PLAY_QUEUE_SOUND_DESC =                "전장과 애완동물 대전을 포함해 대기열이 열리면 마스터 채널로 알림음을 재생합니다."
L.PLAY_READYCHECK_SOUND =                "준비 확인 소리 재생"
L.PLAY_READYCHECK_SOUND_DESC =           "준비 확인이 시작되면 마스터 채널로 준비 확인 소리를 재생합니다."
L.PLAY_COUNTDOWN_SOUND =                 "카운트다운 소리 재생"
L.PLAY_COUNTDOWN_SOUND_DESC =            "카운트다운이나 풀 타이머가 시작되면 마스터 채널로 카운트다운 소리를 재생합니다."

L.ADDONS =                               "애드온"
L.DISABLE_HANDYNOTES_ALTRMB =            "HandyNotes Alt 비활성화 " .. app.IconRMB
L.DISABLE_HANDYNOTES_ALTRMB_DESC =       "지도에서 HandyNotes 단축키를 비활성화하여 TomTom 경유지에 다시 사용할 수 있게 합니다."
L.REQUIRES_RELOAD =                      REQUIRES_RELOAD -- "Requires Reload"
L.AH_PRICE_TOOLTIP =                     "툴팁에 경매장 가격 표시"
L.AH_PRICE_TOOLTIP_DESC1 =               "Auctionator, Oribos Exchange, TradeSkillMaster 중 가장 최근 가격 정보를 표시합니다."
L.AH_PRICE_TOOLTIP_DESC2 =               "값을 반올림하고 전문 기술 창, 제조법, 애완동물 가격을 수정합니다."

-- UI
L.GET_IT_NOW =                           "지금 받기!"
L.HOLD_SHIFT_TOOLTIP =                   "Shift 키를 누르면 5초 타이머를 건너뛰고 아이템을 즉시 받습니다."
L.REGION =                               "%s 지역" -- %s becomes an abbreviated region name such as "EU" or "US"
L.RULESET = {}
L.RULESET[0] =                           "규칙 유형"
L.RULESET[1] =                           GDAPI_REALMTYPE_NORMAL -- "Normal"
L.RULESET[2] =                           GDAPI_REALMTYPE_PVP -- "PvP"
L.RULESET[3] =                           "역할수행"
L.RULESET[4] =                           "역할수행 PvP"
L.RULESET[5] =                           GUILD_PLAYSTYLE_HARDCORE -- "Hardcore"
L.ROWS =                                 "행:"
L.COLUMNS =                              "열:"
L.QUEST_SPARKLES_WARNING =               "퀘스트 반짝임 효과를 5회 넘게 적용하려 했습니다. 다른 애드온에서도 이 CVar를 감시 중일 수 있습니다."
