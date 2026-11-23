-------------------------------------
-- Slacker's Tweak Suite: deDE.lua --
-------------------------------------
-- German (Germany) localisation
-- Translator(s):

if GetLocale() ~= "deDE" then return end
local appName, app = ...
local L = app.locales

-- Core
L.NEW_VERSION_AVAILABLE =                "Eine neuere Version von %s ist verfügbar:" -- %s becomes the addon name

L.DEBUG_ENABLED =                        "Debugmodus aktiviert"
L.DEBUG_DISABLED =                       "Debugmodus deaktiviert"
L.INVALID_COMMAND =                      "Ungültiger Befehl"

-- Settings
L.VERSION =                              GAME_VERSION_LABEL .. ":" -- "Version"
L.SUPPORT_TEXTLONG1 =                    "Die Entwicklung dieses Addons erfordert viel Zeit und Mühe."
L.SUPPORT_TEXTLONG2 =                    "Bitte erwäge, die Entwicklung finanziell zu unterstützen."
L.SUPPORT =                              "Unterstützen"
L.BUY_ME_A_COFFEE =                      "Buy Me a Coffee" -- Brand name, if there isn't a localised version, keep it the way it is
L.THANK_YOU =                            "Vielen Dank!"
L.FEEDBACK_AND_HELP =                    "Feedback und Hilfe"
L.DISCORD =                              "Discord" -- Brand name, if there isn't a localised version, keep it the way it is
L.JOIN_DISCORD_SERVER =                  "Discord-Server beitreten."
L.CTRL_C_COPY =                          "Strg+C zum Kopieren:"
L.LINK_COPIED =                          "Link in die Zwischenablage kopiert"

L.KEYBINDINGS_AND_SLASH_COMMANDS =       SETTINGS_KEYBINDINGS_LABEL .. " & Slash-Befehle" -- "Keybindings"
L.OPEN_SETTINGS =                        "Einstellungen öffnen"

L.GENERAL =                              GENERAL -- "General"
L.CURSOR_GUIDE =                         "Mauszeiger-Hilfe"
L.CURSOR_GUIDE_DESC =                    "Zeigt eine Markierung um den Mauszeiger an, damit du ihn leichter im Blick behältst."
L.CURSOR_GUIDE_COMBAT =                  "Nur im Kampf"
L.CURSOR_GUIDE_COMBAT_DESC =             "Mauszeiger-Hilfe nur im Kampf anzeigen."
L.SKIP_SEEN_CINEMATICS =                 "Bereits gesehene Zwischensequenzen überspringen"
L.SKIP_SEEN_CINEMATICS_DESC =            "Bereits gesehene Zwischensequenzen automatisch überspringen."

L.INVENTORY =                            INVENTORY_TOOLTIP -- "Inventory"
L.DISABLE_ALWAYS_COMPARE =               "Ständigen Gegenstandsvergleich deaktivieren"
L.DISABLE_ALWAYS_COMPARE_DESC =          "Deaktiviert den automatischen Vergleich von Gegenständen."
L.SHOW_TOKEN_PRICE =                     "WoW-Markenpreis anzeigen"
L.SHOW_TOKEN_PRICE_DESC =                "Zeigt den aktuellen WoW-Markenpreis im Tooltip der WoW-Marke an."
L.SPLIT_BAG_COUNT =                      "Reagenzientaschenplätze getrennt zählen"
L.SPLIT_BAG_COUNT_DESC =                 "Zeigt die freien Plätze deiner normalen Taschen und deiner Reagenzientasche getrennt über dem Rucksacksymbol an."

L.LOOT =                                 LOOT -- "Loot"
L.INSTANT_CATALYST =                     "Sofortiger Katalysator"
L.INSTANT_CATALYST_DESC =                "Halte Umschalt gedrückt, um einen Gegenstand sofort zu katalysieren und den 5-Sekunden-Timer zu überspringen."
L.INSTANT_VAULT =                        "Sofortige Große Schatzkammer"
L.INSTANT_VAULT_DESC =                   "Halte Umschalt gedrückt, um deine Belohnung aus der Großen Schatzkammer sofort zu erhalten und den 5-Sekunden-Timer zu überspringen."
L.SHOW_TOOLTIP =                         "Tooltip anzeigen"
L.SHOW_TOOLTIP_SETTING_DESC =            "Zeigt den Tooltip mit einer Erklärung dieser Funktion an. Der Schaltflächentext ändert sich auch bei deaktivierter Option."
L.HIDE_LOOT_ROLL_WINDOW =                "Beutewurffenster ausblenden"
L.HIDE_LOOT_ROLL_WINDOW_DESC =           "Blendet das Fenster mit Beutewürfen und ihren Ergebnissen aus. Du kannst es mit %s wieder einblenden." -- %s becomes "/loot"
L.LEM_LOOT_ROLLS =                       "Beutewürfe im Bearbeitungsmodus"
L.LEM_LOOT_ROLLS_DESC =                  "Füge das Bedarf/Gier-Beutefenster zum Bearbeitungsmodus hinzu."
L.EXTENDED_MERCHANT_FRAME =              "Erweitertes Händlerfenster"
L.EXTENDED_MERCHANT_FRAME_DESC =         "Wähle aus, wie viele Zeilen und Spalten von Gegenständen pro Händlerseite angezeigt werden, und füge eine Suchleiste hinzu."
L.DISABLE_MERCHANT_FILTER =              "Händlerfilter deaktivieren"
L.DISABLE_MERCHANT_FILTER_DESC =         "Setzt alle Händlerfilter automatisch auf \"Alle\", um Gegenstände anzuzeigen, die normalerweise nicht für deine Klasse sichtbar sind."
L.DISABLE_MERCHANT_COMPARE =             "Händlervergleich deaktivieren"
L.DISABLE_MERCHANT_COMPARE_DESC1 =       "Deaktiviert den automatischen Ausrüstungsvergleich bei Händlergegenständen."
L.DISABLE_MERCHANT_COMPARE_DESC2 =       "Möglicherweise nicht mit Addons kompatibel, die Händlerinhalte filtern."

L.WORLD =                                WORLD -- "World"
L.HALLOWSEND_NOTRICK =                   "[Schlotternächte] Kein Streich"
L.HALLOWSEND_NOTRICK_DESC =              "Setze dich, bevor du eine Süßes-oder-Saures-Eimer-Quest abschließt, damit du nicht hereingelegt und handlungsunfähig wirst."
L.QUEST_SPARKLES =                       "Quest-Glitzern"
L.QUEST_SPARKLES_DESC1 =                 "Zeigt Glitzereffekte auf Questobjekten und Questgebern an. (Diese Einstellungen können nicht getrennt werden.)"
L.QUEST_SPARKLES_DESC2 =                 "Zum Deaktivieren dieser Funktion muss der Spielclient neu gestartet werden."
L.MINIMAP_TARGET =                       "Minikarten-Ziel"
L.MINIMAP_TARGET_DESC =                  "Zeigt dein Ziel und Fokusziel auf der Minikarte an."

L.SOUND =                                SOUND -- "Sound"
L.PLAY_QUEUE_SOUND =                     "Warteschlangenton abspielen"
L.PLAY_QUEUE_SOUND_DESC =                "Spielt den Warteschlangenton über den Master-Kanal ab, sobald eine Warteschlange bereit ist, einschließlich Schlachtfelder und Haustierkämpfe."
L.PLAY_READYCHECK_SOUND =                "Bereitschaftsprüfungston abspielen"
L.PLAY_READYCHECK_SOUND_DESC =           "Spielt den Bereitschaftsprüfungston über den Master-Kanal ab, wenn eine Bereitschaftsprüfung gestartet wird."
L.PLAY_COUNTDOWN_SOUND =                 "Countdown-Ton abspielen"
L.PLAY_COUNTDOWN_SOUND_DESC =            "Spielt den Countdown-Ton über den Master-Kanal ab, wenn ein Countdown oder Pull-Timer gestartet wird."

L.ADDONS =                               "Addons"
L.DISABLE_HANDYNOTES_ALTRMB =            "HandyNotes-Alt deaktivieren " .. app.IconRMB
L.DISABLE_HANDYNOTES_ALTRMB_DESC =       "Deaktiviert die HandyNotes-Tastenbelegung auf der Karte, damit sie wieder für TomTom-Wegpunkte verwendet werden kann."
L.REQUIRES_RELOAD =                      REQUIRES_RELOAD -- "Requires Reload"
L.AH_PRICE_TOOLTIP =                     "AH-Preis im Tooltip"
L.AH_PRICE_TOOLTIP_DESC1 =               "Zeigt die neuesten Preisinformationen von Auctionator, Oribos Exchange oder TradeSkillMaster an."
L.AH_PRICE_TOOLTIP_DESC2 =               "Rundet außerdem den Wert und korrigiert die Preise im Berufsfenster sowie für Rezepte und Haustiere."

-- UI
L.GET_IT_NOW =                           "Jetzt holen!"
L.HOLD_SHIFT_TOOLTIP =                   "Halte Umschalt gedrückt, um deinen Gegenstand sofort zu erhalten und den 5-Sekunden-Timer zu überspringen."
L.REGION =                               "Region %s" -- %s becomes an abbreviated region name such as "EU" or "US"
L.RULESET = {}
L.RULESET[0] =                           "Regelwerk"
L.RULESET[1] =                           GDAPI_REALMTYPE_NORMAL -- "Normal"
L.RULESET[2] =                           GDAPI_REALMTYPE_PVP -- "PvP"
L.RULESET[3] =                           "Rollenspiel"
L.RULESET[4] =                           "Rollenspiel-PvP"
L.RULESET[5] =                           GUILD_PLAYSTYLE_HARDCORE -- "Hardcore"
L.ROWS =                                 "Zeilen:"
L.COLUMNS =                              "Spalten:"
L.QUEST_SPARKLES_WARNING =               "Mehr als 5 Versuche, Quest-Glitzern anzuwenden. Ein anderes Addon überwacht möglicherweise ebenfalls diese CVars."
