-------------------------------------
-- Slacker's Tweak Suite: itIT.lua --
-------------------------------------
-- Italian (Italy) localisation
-- Translator(s):

if GetLocale() ~= "itIT" then return end
local appName, app = ...
local L = app.locales

-- Core
L.NEW_VERSION_AVAILABLE =                "È disponibile una nuova versione di %s:" -- %s becomes the addon name

L.DEBUG_ENABLED =                        "Modalità debug attivata"
L.DEBUG_DISABLED =                       "Modalità debug disattivata"
L.INVALID_COMMAND =                      "Comando non valido"

-- Settings
L.VERSION =                              GAME_VERSION_LABEL .. ":" -- "Version"
L.SUPPORT_TEXTLONG1 =                    "Lo sviluppo di questo addon richiede molto tempo e impegno."
L.SUPPORT_TEXTLONG2 =                    "Ti invitiamo a sostenere economicamente lo sviluppatore."
L.SUPPORT =                              "Supporto"
L.BUY_ME_A_COFFEE =                      "Buy Me a Coffee" -- Brand name, if there isn't a localised version, keep it the way it is
L.THANK_YOU =                            "Grazie!"
L.FEEDBACK_AND_HELP =                    "Feedback e aiuto"
L.DISCORD =                              "Discord" -- Brand name, if there isn't a localised version, keep it the way it is
L.JOIN_DISCORD_SERVER =                  "Entra nel server Discord."
L.CTRL_C_COPY =                          "Ctrl+C per copiare:"
L.LINK_COPIED =                          "Collegamento copiato negli appunti"

L.KEYBINDINGS_AND_SLASH_COMMANDS =       SETTINGS_KEYBINDINGS_LABEL .. " e comandi slash" -- "Keybindings"
L.OPEN_SETTINGS =                        "Apri le impostazioni"

L.GENERAL =                              GENERAL -- "General"
L.CURSOR_GUIDE =                         "Guida cursore"
L.CURSOR_GUIDE_DESC =                    "Mostra una guida attorno al cursore per aiutarti a seguirlo."
L.CURSOR_GUIDE_COMBAT =                  "Solo in combattimento"
L.CURSOR_GUIDE_COMBAT_DESC =             "Mostra la guida cursore solo in combattimento."
L.SKIP_SEEN_CINEMATICS =                 "Salta filmati già visti"
L.SKIP_SEEN_CINEMATICS_DESC =            "Salta automaticamente i filmati già visti."

L.INVENTORY =                            INVENTORY_TOOLTIP -- "Inventory"
L.DISABLE_ALWAYS_COMPARE =               "Disattiva confronto permanente"
L.DISABLE_ALWAYS_COMPARE_DESC =          "Disattiva il confronto permanente degli oggetti."
L.SHOW_TOKEN_PRICE =                     "Mostra prezzo gettone WoW"
L.SHOW_TOKEN_PRICE_DESC =                "Mostra il prezzo attuale del gettone WoW nel tooltip del gettone."
L.SPLIT_BAG_COUNT =                      "Conteggio separato borsa reagenti"
L.SPLIT_BAG_COUNT_DESC =                 "Mostra separatamente gli spazi liberi delle borse normali e della borsa reagenti sopra l'icona dello zaino."

L.LOOT =                                 LOOT -- "Loot"
L.INSTANT_CATALYST =                     "Catalizzatore istantaneo"
L.INSTANT_CATALYST_DESC =                "Tieni premuto Maiusc per catalizzare subito un oggetto, saltando il timer di 5 secondi."
L.INSTANT_VAULT =                        "Gran Banca istantanea"
L.INSTANT_VAULT_DESC =                   "Tieni premuto Maiusc per ricevere subito la ricompensa della Gran Banca, saltando il timer di 5 secondi."
L.SHOW_TOOLTIP =                         "Mostra tooltip"
L.SHOW_TOOLTIP_SETTING_DESC =            "Mostra il tooltip che spiega come funziona questa opzione. Il testo del pulsante cambia comunque quando è disattivata."
L.HIDE_LOOT_ROLL_WINDOW =                "Nascondi la finestra dei tiri del bottino"
L.HIDE_LOOT_ROLL_WINDOW_DESC =           "Nasconde la finestra dei tiri del bottino e dei risultati. Puoi mostrarla di nuovo con %s." -- %s becomes "/loot"
L.LEM_LOOT_ROLLS =                       "Tiri bottino in modalità Modifica"
L.LEM_LOOT_ROLLS_DESC =                  "Aggiungi la finestra del tiro Necessità/Bramosia alla modalità Modifica."
L.EXTENDED_MERCHANT_FRAME =              "Finestra del mercante estesa"
L.EXTENDED_MERCHANT_FRAME_DESC =         "Scegli quante righe e colonne di oggetti mostrare per pagina dal mercante e aggiungi una barra di ricerca."
L.DISABLE_MERCHANT_FILTER =              "Disattiva filtro mercante"
L.DISABLE_MERCHANT_FILTER_DESC =         "Imposta automaticamente tutti i filtri dei mercanti su \"Tutti\" per mostrare gli oggetti normalmente nascosti alla tua classe."
L.DISABLE_MERCHANT_COMPARE =             "Disattiva confronto mercante"
L.DISABLE_MERCHANT_COMPARE_DESC1 =       "Disattiva il confronto automatico dell'equipaggiamento presso i mercanti."
L.DISABLE_MERCHANT_COMPARE_DESC2 =       "Potrebbe non essere compatibile con gli addon che filtrano gli oggetti dei mercanti."

L.WORLD =                                WORLD -- "World"
L.HALLOWSEND_NOTRICK =                   "[Veglia delle Ombre] Nessuno scherzetto"
L.HALLOWSEND_NOTRICK_DESC =              "Siediti prima di completare una missione del Secchio delle Caramelle, così da non subire uno scherzetto e restare incapacitato."
L.QUEST_SPARKLES =                       "Scintillii delle missioni"
L.QUEST_SPARKLES_DESC1 =                 "Mostra effetti scintillanti sugli oggetti e i personaggi che assegnano missioni. (Queste impostazioni non possono essere separate.)"
L.QUEST_SPARKLES_DESC2 =                 "Per disattivare questa funzione è necessario riavviare il gioco."
L.MINIMAP_TARGET =                       "Bersaglio minimappa"
L.MINIMAP_TARGET_DESC =                  "Mostra il tuo bersaglio e il tuo focus sulla minimappa."

L.SOUND =                                SOUND -- "Sound"
L.PLAY_QUEUE_SOUND =                     "Riproduci suono della coda"
L.PLAY_QUEUE_SOUND_DESC =                "Riproduce il suono della coda sul canale Principale quando una coda è pronta, inclusi campi di battaglia e scontri tra mascotte."
L.PLAY_READYCHECK_SOUND =                "Riproduci suono del controllo di prontezza"
L.PLAY_READYCHECK_SOUND_DESC =           "Riproduce il suono del controllo di prontezza sul canale Principale quando viene avviato un controllo."
L.PLAY_COUNTDOWN_SOUND =                 "Riproduci suono del conto alla rovescia"
L.PLAY_COUNTDOWN_SOUND_DESC =            "Riproduce il suono del conto alla rovescia sul canale Principale quando inizia un conto alla rovescia o un timer di ingaggio."

L.ADDONS =                               "Addon"
L.DISABLE_HANDYNOTES_ALTRMB =            "Disattiva HandyNotes Alt " .. app.IconRMB
L.DISABLE_HANDYNOTES_ALTRMB_DESC =       "Disattiva il tasto rapido di HandyNotes sulla mappa, rendendolo nuovamente disponibile per i punti di TomTom."
L.REQUIRES_RELOAD =                      REQUIRES_RELOAD -- "Requires Reload"
L.AH_PRICE_TOOLTIP =                     "Prezzo della casa d'aste nel tooltip"
L.AH_PRICE_TOOLTIP_DESC1 =               "Mostra i dati sui prezzi più recenti di Auctionator, Oribos Exchange o TradeSkillMaster."
L.AH_PRICE_TOOLTIP_DESC2 =               "Arrotonda anche il valore e corregge i prezzi nella finestra delle professioni, delle ricette e delle mascotte."

-- UI
L.GET_IT_NOW =                           "Ottienilo ora!"
L.HOLD_SHIFT_TOOLTIP =                   "Tieni premuto Maiusc per ricevere subito il tuo oggetto, saltando il timer di 5 secondi."
L.REGION =                               "Regione %s" -- %s becomes an abbreviated region name such as "EU" or "US"
L.RULESET = {}
L.RULESET[0] =                           "Regole"
L.RULESET[1] =                           GDAPI_REALMTYPE_NORMAL -- "Normal"
L.RULESET[2] =                           GDAPI_REALMTYPE_PVP -- "PvP"
L.RULESET[3] =                           "Gioco di ruolo"
L.RULESET[4] =                           "Gioco di ruolo PvP"
L.RULESET[5] =                           GUILD_PLAYSTYLE_HARDCORE -- "Hardcore"
L.ROWS =                                 "Righe:"
L.COLUMNS =                              "Colonne:"
L.QUEST_SPARKLES_WARNING =               "Tentativi di applicare gli scintillii delle missioni superiori a 5. Un altro addon potrebbe monitorare le stesse CVars."
