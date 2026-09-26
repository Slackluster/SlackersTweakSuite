-------------------------------------
-- Slacker's Tweak Suite: ruRU.lua --
-------------------------------------
-- Russian (Russia) localisation
-- Translator(s): ZamestoTV

if GetLocale() ~= "ruRU" then return end
local appName, app = ...
local L = app.locales

-- Core
L.NEW_VERSION_AVAILABLE =                "Доступна более новая версия %s аддона:" -- %s becomes the addon name

L.DEBUG_ENABLED =                        "Режим отладки включен"
L.DEBUG_DISABLED =                       "Режим отладки выключен."
L.INVALID_COMMAND =                      "Неверная команда"

-- Settings
L.SETTINGS_VERSION =                     GAME_VERSION_LABEL .. ":" -- "Version"
L.SETTINGS_SUPPORT_TEXTLONG1 =           "Разработка этого аддона требует значительного времени и усилий."
L.SETTINGS_SUPPORT_TEXTLONG2 =           "Пожалуйста, рассмотрите возможность финансовой поддержки разработчика."
L.SETTINGS_SUPPORT_TEXT =                "Поддержать"
L.SETTINGS_SUPPORT_BUTTON =              "Buy Me a Coffee" -- Brand name, if there isn't a localised version, keep it the way it is
L.SETTINGS_SUPPORT_DESC =                "Спасибо!"
L.SETTINGS_HELP_TEXT =                   "Обратная связь и помощь"
L.SETTINGS_HELP_BUTTON =                 "Discord" -- Brand name, if there isn't a localised version, keep it the way it is
L.SETTINGS_HELP_DESC =                   "Присоединиться к серверу Discord."
L.SETTINGS_URL_COPY =                    "Ctrl+C — скопировать:"
L.SETTINGS_URL_COPIED =                  "Ссылка скопирована в буфер обмена"

L.SETTINGS_KEYSLASH_TITLE =              SETTINGS_KEYBINDINGS_LABEL .. " & Слэш-команды" -- "Keybindings"
L.SLASH_OPEN_SETTINGS =                  "Откройте настройки"

L.GENERAL =                              GENERAL -- "General"
L.CURSOR_GUIDE =                         "Направляющая курсора"
L.CURSOR_GUIDE_DESC =                    "Чтобы вам было легче следить за курсором, отобразите вокруг него направляющую."
L.CURSOR_GUIDE_COMBAT=                   "Только в бою"
L.CURSOR_GUIDE_COMBAT_DESC =             "Отображайте курсор только в бою."
L.SKIP_SEEN_CINEMATICS =                 "Пропуск просмотренных роликов"
L.SKIP_SEEN_CINEMATICS_DESC =            "Автоматически пропускать внутриигровые ролики, которые вы уже видели."

L.INVENTORY =                            INVENTORY_TOOLTIP -- "Inventory"
L.DISABLE_ALWAYS_COMPARE =               "Отключить постоянное сравнение"
L.DISABLE_ALWAYS_COMPARE_DESC =          "Отключить поведение постоянного сравнения предметов."
L.SHOW_TOKEN_PRICE =                     "Показать цену жетона WoW"
L.SHOW_TOKEN_PRICE_DESC =                "Отображать текущую цену жетона WoW в подсказке к предмету Жетон WoW."
L.SPLIT_BAG_COUNT =                      "Разделение количества мешков с реагентами"
L.SPLIT_BAG_COUNT_DESC =                 "Показывает свободные слоты ваших обычных сумок и сумки с реагентами отдельно над значком рюкзака."

L.LOOT =                                 LOOT -- "Loot"
L.INSTANT_CATALYST =                     "Мгновенная катализация"
L.INSTANT_CATALYST_DESC =                "Удерживайте Shift, чтобы мгновенно катализировать предмет, пропуская 5-секундный таймер."
L.INSTANT_VAULT =                        "Мгновенное Великое Хранилище"
L.INSTANT_VAULT_DESC =                   "Удерживайте Shift, чтобы мгновенно получить награду из Великого Хранилища, пропуская 5-секундный таймер."
L.INSTANT_TOOLTIP =                      "Показывать подсказку"
L.INSTANT_TOOLTIP_DESC =                 "Показывать подсказку, объясняющую, как работает эта функция. Текст кнопки все равно меняется, если это отключено."
L.HIDE_LOOT_ROLL_WINDOW =                "Скрыть окно бросков лута"
L.HIDE_LOOT_ROLL_WINDOW_DESC =           "Скрыть окно, показывающее броски лута и их результаты. Вы можете снова показать окно с помощью %s." -- %s becomes "/loot"
L.DISABLE_VENDOR_FILTER =                "Отключить фильтр торговца"
L.DISABLE_VENDOR_FILTER_DESC =           "Автоматически устанавливать все фильтры торговца на \"Все\", чтобы отображать предметы, обычно не показываемые для вашего класса."
L.DISABLE_VENDOR_COMPARE =               "Отключить сравнение у торговцев"
L.DISABLE_VENDOR_COMPARE_DESC =          "Отключает автоматическое сравнение экипировки при просмотре товаров у торговцев."

L.SOUND =                                SOUND -- "Sound"
L.PLAY_QUEUE_SOUND=                      "Воспроизвести звук очереди"
L.PLAY_QUEUE_SOUND_DESC =                "Воспроизводить звук готовности очереди на главном канале, когда срабатывает любая очередь, включая поля боя и битвы питомцев."
L.PLAY_READYCHECK_SOUND =                "Звук проверки готовности"
L.PLAY_READYCHECK_SOUND_DESC =           "Воспроизводить звук проверки готовности на главном звуковом канале, когда она запускается."
L.PLAY_COUNTDOWN_SOUND =                 "Звук отсчета времени"
L.PLAY_COUNTDOWN_SOUND_DESC =            "Воспроизводить звук отсчета времени на главном звуковом канале, когда запускается таймер до пулла или любой другой отсчет."

L.ADDONS =                               "Аддоны"
L.DISABLE_HANDYNOTES_ALTRMB =            "Отключить HandyNotes Alt " .. app.IconRMB
L.DISABLE_HANDYNOTES_ALTRMB_DESC =       "Отключить привязку клавиш HandyNotes на карте, вместо этого включив ее для точек маршрута TomTom."
L.AH_PRICE_TOOLTIP =                     "Подсказка с ценой аукциона"
L.AH_PRICE_TOOLTIP_DESC1 =               "Показывать самую свежую информацию о ценах из Auctionator, Oribos Exchange или TradeSkillMaster."
L.AH_PRICE_TOOLTIP_DESC2 =               "Также округляет значения и исправляет отображение цен в окне профессий, рецептах и ценах на питомцев."
L.REQUIRES_RELOAD =                      REQUIRES_RELOAD -- "Requires Reload"

L.HOLIDAYS =                             CALENDAR_FILTER_HOLIDAYS -- "Holidays"
L.HALLOWSEND_NOTRICK =                   "[Тыквовин] Без уловок"
L.HALLOWSEND_NOTRICK_DESC =              "Сядьте, прежде чем выполнять задание «Кулек конфет», чтобы не дать себя обмануть и успокоить."

-- UI
L.INSTANT_BUTTON =                       "Получить сейчас!"
L.INSTANT_TOOLTIP =                      "Удерживайте Shift, чтобы мгновенно получить предмет, пропуская 5-секундный таймер."
L.REGION =                               "%s Регион" -- %s becomes an abbreviated region name such as "EU" or "US"
