-------------------------------------
-- Slacker's Tweak Suite: esES.lua --
-------------------------------------
-- Spanish (Spain) localisation
-- Translator(s): Ferran Carril

if GetLocale() ~= "esES" then return end
local appName, app = ...
local L = app.locales

-- Core
L.NEW_VERSION_AVAILABLE =                "Hay una versión más nueva de %s disponible:" -- %s becomes the addon name

L.DEBUG_ENABLED =                        "Modo de depuración activado"
L.DEBUG_DISABLED =                       "Modo de depuración desactivado"
L.INVALID_COMMAND =                      "Comando no válido"

-- Settings
L.VERSION =                              GAME_VERSION_LABEL .. ":" -- "Version"
L.SUPPORT_TEXTLONG1 =                    "Desarrollar este addon requiere una cantidad significativa de tiempo y esfuerzo."
L.SUPPORT_TEXTLONG2 =                    "Por favor, considera apoyar financieramente al desarrollador."
L.SUPPORT =                              "Apoyar"
L.BUY_ME_A_COFFEE =                      "Buy Me a Coffee" -- Brand name, if there isn't a localised version, keep it the way it is
L.THANK_YOU =                            "¡Gracias!"
L.FEEDBACK_AND_HELP =                    "Comentarios y Ayuda"
L.DISCORD =                              "Discord" -- Brand name, if there isn't a localised version, keep it the way it is
L.JOIN_DISCORD_SERVER =                  "Únete al servidor de Discord."
L.CTRL_C_COPY =                          "Ctrl+C para copiar:"
L.LINK_COPIED =                          "Enlace copiado al portapapeles"

L.KEYBINDINGS_AND_SLASH_COMMANDS =       SETTINGS_KEYBINDINGS_LABEL .. " y Comandos" -- "Keybindings"
L.OPEN_SETTINGS =                        "Abrir opciones"

L.GENERAL =                              GENERAL -- "General"
L.CURSOR_GUIDE =                         "Guía del cursor"
L.CURSOR_GUIDE_DESC =                    "Muestra una guía alrededor del cursor para ayudarte a localizarlo."
L.CURSOR_GUIDE_COMBAT =                  "Solo en combate"
L.CURSOR_GUIDE_COMBAT_DESC =             "Mostrar la guía del cursor solo durante el combate."
L.SKIP_SEEN_CINEMATICS =                 "Omitir cinemáticas ya vistas"
L.SKIP_SEEN_CINEMATICS_DESC =            "Omitir automáticamente las cinemáticas ya vistas."

L.INVENTORY =                            INVENTORY_TOOLTIP -- "Inventory"
L.DISABLE_ALWAYS_COMPARE =               "Desactivar la comparación permanente"
L.DISABLE_ALWAYS_COMPARE_DESC =          "Desactiva la comparación permanente de objetos."
L.SHOW_TOKEN_PRICE =                     "Mostrar precio de la ficha de WoW"
L.SHOW_TOKEN_PRICE_DESC =                "Muestra el precio actual de la ficha de WoW en su descripción emergente."
L.SPLIT_BAG_COUNT =                      "Separar recuento de bolsa de componentes"
L.SPLIT_BAG_COUNT_DESC =                 "Muestra por separado los huecos libres de las bolsas normales y de la bolsa de componentes encima del icono de la mochila."

L.LOOT =                                 LOOT -- "Loot"
L.INSTANT_CATALYST =                     "Catalizador instantáneo"
L.INSTANT_CATALYST_DESC =                "Mantén Mayús presionado para catalizar instantáneamente un objeto, omitiendo el temporizador de 5 segundos."
L.INSTANT_VAULT =                        "Gran Cámara instantánea"
L.INSTANT_VAULT_DESC =                   "Mantén Mayús presionado para recibir instantáneamente tu recompensa de la Gran Cámara y omitir el temporizador de 5 segundos."
L.SHOW_TOOLTIP =                         "Mostrar información emergente"
L.SHOW_TOOLTIP_SETTING_DESC =            "Muestra la información emergente que explica cómo funciona esta función. El texto del botón sigue cambiando cuando esto está desactivado."
L.HIDE_LOOT_ROLL_WINDOW =                "Ocultar ventana de tirada de botín"
L.HIDE_LOOT_ROLL_WINDOW_DESC =           "Oculta la ventana que muestra las tiradas de botín y sus resultados. Puedes mostrar la ventana de nuevo con %s." -- %s becomes "/loot"
L.LEM_LOOT_ROLLS =                       "Tiradas de botín en Modo de Edición"
L.LEM_LOOT_ROLLS_DESC =                  "Añade la ventana de tiradas de Necesidad/Codicia al Modo de Edición."
L.EXTENDED_MERCHANT_FRAME =              "Ventana de comerciante ampliada"
L.EXTENDED_MERCHANT_FRAME_DESC =         "Elige cuántas filas y columnas de objetos se muestran por página de comerciante y añade una barra de búsqueda."
L.DISABLE_MERCHANT_FILTER =              "Desactivar filtro de comerciante"
L.DISABLE_MERCHANT_FILTER_DESC =         "Establece automáticamente todos los filtros de comerciantes en \"Todos\" para mostrar objetos normalmente ocultos para tu clase."
L.DISABLE_MERCHANT_COMPARE =             "Desactivar comparación con comerciantes"
L.DISABLE_MERCHANT_COMPARE_DESC1 =       "Desactiva la comparación automática de equipo en objetos de comerciantes."
L.DISABLE_MERCHANT_COMPARE_DESC2 =       "Puede ser incompatible con addons que filtran los objetos de comerciantes."

L.WORLD =                                WORLD -- "World"
L.HALLOWSEND_NOTRICK =                   "[Halloween] Sin travesura"
L.HALLOWSEND_NOTRICK_DESC =              "Siéntate antes de completar una misión del Cubo de caramelos para evitar sufrir una travesura y quedar incapacitado."
L.QUEST_SPARKLES =                       "Brillos de misión"
L.QUEST_SPARKLES_DESC1 =                 "Muestra brillos sobre objetos de misión y personajes que ofrecen misiones. (Estos ajustes no se pueden separar)."
L.QUEST_SPARKLES_DESC2 =                 "Para desactivar esta función es necesario reiniciar el juego."
L.MINIMAP_TARGET =                       "Objetivo del minimapa"
L.MINIMAP_TARGET_DESC =                  "Muestra tu objetivo y foco en el minimapa."

L.SOUND =                                SOUND -- "Sound"
L.PLAY_QUEUE_SOUND =                     "Reproducir sonido de cola"
L.PLAY_QUEUE_SOUND_DESC =                "Reproduce el sonido de cola en el canal Principal cuando salta cualquier cola, incluidos campos de batalla y duelos de mascotas."
L.PLAY_READYCHECK_SOUND =                "Reproducir sonido de comprobación de preparación"
L.PLAY_READYCHECK_SOUND_DESC =           "Reproduce el sonido de comprobación de preparación en el canal Principal cuando se inicia una comprobación."
L.PLAY_COUNTDOWN_SOUND =                 "Reproducir sonido de cuenta atrás"
L.PLAY_COUNTDOWN_SOUND_DESC =            "Reproduce el sonido de cuenta atrás en el canal Principal cuando se inicia una cuenta atrás o un temporizador de pull."

L.ADDONS =                               "Addons"
L.DISABLE_HANDYNOTES_ALTRMB =            "Desactivar HandyNotes Alt " .. app.IconRMB
L.DISABLE_HANDYNOTES_ALTRMB_DESC =       "Desactiva el atajo de HandyNotes en el mapa, dejándolo libre para los puntos de TomTom."
L.REQUIRES_RELOAD =                      REQUIRES_RELOAD -- "Requires Reload"
L.AH_PRICE_TOOLTIP =                     "Precio de subasta en la descripción emergente"
L.AH_PRICE_TOOLTIP_DESC1 =               "Muestra la información de precios más reciente de Auctionator, Oribos Exchange o TradeSkillMaster."
L.AH_PRICE_TOOLTIP_DESC2 =               "También redondea el valor y corrige los precios en la ventana de profesiones, recetas y mascotas."

-- UI
L.GET_IT_NOW =                           "¡Recíbelo ahora!"
L.HOLD_SHIFT_TOOLTIP =                   "Mantén Mayús presionado para recibir tu objeto al instante y omitir el temporizador de 5 segundos."
L.REGION =                               "Región %s" -- %s becomes an abbreviated region name such as "EU" or "US"
L.RULESET = {}
L.RULESET[0] =                           "Conjunto de reglas"
L.RULESET[1] =                           GDAPI_REALMTYPE_NORMAL -- "Normal"
L.RULESET[2] =                           GDAPI_REALMTYPE_PVP -- "PvP"
L.RULESET[3] =                           "Rol"
L.RULESET[4] =                           "Rol PvP"
L.RULESET[5] =                           GUILD_PLAYSTYLE_HARDCORE -- "Hardcore"
L.ROWS =                                 "Filas:"
L.COLUMNS =                              "Columnas:"
L.QUEST_SPARKLES_WARNING =               "Se ha intentado aplicar Brillos de misión más de 5 veces. Puede que otro addon también vigile estas CVars."
