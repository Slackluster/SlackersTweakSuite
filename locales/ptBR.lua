-------------------------------------
-- Slacker's Tweak Suite: ptBR.lua --
-------------------------------------
-- Portuguese (Brazil) localisation
-- Translator(s):

if GetLocale() ~= "ptBR" then return end
local appName, app = ...
local L = app.locales

-- Core
L.NEW_VERSION_AVAILABLE =                "Há uma versão mais recente de %s disponível:" -- %s becomes the addon name

L.DEBUG_ENABLED =                        "Modo de depuração ativado"
L.DEBUG_DISABLED =                       "Modo de depuração desativado"
L.INVALID_COMMAND =                      "Comando inválido"

-- Settings
L.VERSION =                              GAME_VERSION_LABEL .. ":" -- "Version"
L.SUPPORT_TEXTLONG1 =                    "Desenvolver este addon exige muito tempo e dedicação."
L.SUPPORT_TEXTLONG2 =                    "Considere apoiar financeiramente o desenvolvedor."
L.SUPPORT =                              "Apoiar"
L.BUY_ME_A_COFFEE =                      "Buy Me a Coffee" -- Brand name, if there isn't a localised version, keep it the way it is
L.THANK_YOU =                            "Obrigado!"
L.FEEDBACK_AND_HELP =                    "Comentários e Ajuda"
L.DISCORD =                              "Discord" -- Brand name, if there isn't a localised version, keep it the way it is
L.JOIN_DISCORD_SERVER =                  "Entre no servidor do Discord."
L.CTRL_C_COPY =                          "Ctrl+C para copiar:"
L.LINK_COPIED =                          "Link copiado para a área de transferência"

L.KEYBINDINGS_AND_SLASH_COMMANDS =       SETTINGS_KEYBINDINGS_LABEL .. " e comandos de barra" -- "Keybindings"
L.OPEN_SETTINGS =                        "Abrir as configurações"

L.GENERAL =                              GENERAL -- "General"
L.CURSOR_GUIDE =                         "Guia do Cursor"
L.CURSOR_GUIDE_DESC =                    "Mostra um guia ao redor do cursor para ajudar você a localizá-lo."
L.CURSOR_GUIDE_COMBAT =                  "Somente em combate"
L.CURSOR_GUIDE_COMBAT_DESC =             "Mostrar o guia do cursor somente em combate."
L.SKIP_SEEN_CINEMATICS =                 "Pular Cenas Já Vistas"
L.SKIP_SEEN_CINEMATICS_DESC =            "Pular automaticamente cenas já vistas."

L.INVENTORY =                            INVENTORY_TOOLTIP -- "Inventory"
L.DISABLE_ALWAYS_COMPARE =               "Desativar comparação permanente"
L.DISABLE_ALWAYS_COMPARE_DESC =          "Desativa a comparação automática e permanente de itens."
L.SHOW_TOKEN_PRICE =                     "Mostrar preço da Ficha de WoW"
L.SHOW_TOKEN_PRICE_DESC =                "Mostra o preço atual da Ficha de WoW na dica de interface do item."
L.SPLIT_BAG_COUNT =                      "Separar Contagem da Bolsa de Reagentes"
L.SPLIT_BAG_COUNT_DESC =                 "Mostra separadamente os espaços livres das bolsas normais e da bolsa de reagentes acima do ícone da mochila."

L.LOOT =                                 LOOT -- "Loot"
L.INSTANT_CATALYST =                     "Catalisador instantâneo"
L.INSTANT_CATALYST_DESC =                "Segure Shift para catalisar um item imediatamente, pulando o temporizador de 5 segundos."
L.INSTANT_VAULT =                        "Grande Cofre instantâneo"
L.INSTANT_VAULT_DESC =                   "Segure Shift para receber imediatamente sua recompensa do Grande Cofre, pulando o temporizador de 5 segundos."
L.SHOW_TOOLTIP =                         "Mostrar dica de interface"
L.SHOW_TOOLTIP_SETTING_DESC =            "Mostra a dica de interface que explica como o recurso funciona. O texto do botão continuará mudando mesmo quando isso estiver desativado."
L.HIDE_LOOT_ROLL_WINDOW =                "Ocultar janela de rolagem de saque"
L.HIDE_LOOT_ROLL_WINDOW_DESC =           "Oculta a janela de rolagem do saque e seus resultados. Você pode exibi-la novamente com %s." -- %s becomes "/loot"
L.LEM_LOOT_ROLLS =                       "Rolagens de Saque no Modo de Edição"
L.LEM_LOOT_ROLLS_DESC =                  "Adiciona a janela de rolagem de Necessidade/Ganância ao Modo de Edição."
L.EXTENDED_MERCHANT_FRAME =              "Janela de Comerciante Estendida"
L.EXTENDED_MERCHANT_FRAME_DESC =         "Escolha quantas linhas e colunas de itens serão exibidas por página nos comerciantes e adicione uma barra de pesquisa."
L.DISABLE_MERCHANT_FILTER =              "Desativar filtro de comerciante"
L.DISABLE_MERCHANT_FILTER_DESC =         "Define automaticamente todos os filtros dos comerciantes como \"Todos\" para exibir itens normalmente ocultos para sua classe."
L.DISABLE_MERCHANT_COMPARE =             "Desativar comparação com comerciantes"
L.DISABLE_MERCHANT_COMPARE_DESC1 =       "Desativa a comparação automática de equipamentos nos comerciantes."
L.DISABLE_MERCHANT_COMPARE_DESC2 =       "Pode ser incompatível com addons que filtram o conteúdo dos comerciantes."

L.WORLD =                                WORLD -- "World"
L.HALLOWSEND_NOTRICK =                   "[Noturnália] Sem Travessuras"
L.HALLOWSEND_NOTRICK_DESC =              "Sente-se antes de concluir uma missão de Balde de Doces para evitar travessuras que deixam você incapacitado."
L.QUEST_SPARKLES =                       "Brilhos de Missão"
L.QUEST_SPARKLES_DESC1 =                 "Mostra brilhos em objetos de missão e fornecedores de missões. (Essas configurações não podem ser separadas.)"
L.QUEST_SPARKLES_DESC2 =                 "Desativar esta função exige reiniciar o cliente do jogo."
L.MINIMAP_TARGET =                       "Alvo no Minimapa"
L.MINIMAP_TARGET_DESC =                  "Mostra seu alvo e foco no minimapa."

L.SOUND =                                SOUND -- "Sound"
L.PLAY_QUEUE_SOUND =                     "Reproduzir som da fila"
L.PLAY_QUEUE_SOUND_DESC =                "Reproduz o som da fila no canal Mestre quando uma fila é chamada, incluindo campos de batalha e batalhas de mascotes."
L.PLAY_READYCHECK_SOUND =                "Reproduzir som de verificação de prontidão"
L.PLAY_READYCHECK_SOUND_DESC =           "Reproduz o som de verificação de prontidão no canal Mestre quando uma verificação é iniciada."
L.PLAY_COUNTDOWN_SOUND =                 "Reproduzir som da contagem regressiva"
L.PLAY_COUNTDOWN_SOUND_DESC =            "Reproduz o som da contagem regressiva no canal Mestre quando um cronômetro de contagem ou de puxada é iniciado."

L.ADDONS =                               "Addons"
L.DISABLE_HANDYNOTES_ALTRMB =            "Desativar HandyNotes Alt " .. app.IconRMB
L.DISABLE_HANDYNOTES_ALTRMB_DESC =       "Desativa o atalho do HandyNotes no mapa, liberando-o novamente para os pontos de passagem do TomTom."
L.REQUIRES_RELOAD =                      REQUIRES_RELOAD -- "Requires Reload"
L.AH_PRICE_TOOLTIP =                     "Preço da Casa de Leilões na dica de interface"
L.AH_PRICE_TOOLTIP_DESC1 =               "Mostra os preços mais recentes do Auctionator, Oribos Exchange ou TradeSkillMaster."
L.AH_PRICE_TOOLTIP_DESC2 =               "Também arredonda o valor e corrige os preços da janela de profissões, receitas e mascotes."

-- UI
L.GET_IT_NOW =                           "Obtenha agora!"
L.HOLD_SHIFT_TOOLTIP =                   "Segure Shift para receber seu item imediatamente, pulando o temporizador de 5 segundos."
L.REGION =                               "Região %s" -- %s becomes an abbreviated region name such as "EU" or "US"
L.RULESET = {}
L.RULESET[0] =                           "Conjunto de regras"
L.RULESET[1] =                           GDAPI_REALMTYPE_NORMAL -- "Normal"
L.RULESET[2] =                           GDAPI_REALMTYPE_PVP -- "PvP"
L.RULESET[3] =                           "Interpretação de Papel"
L.RULESET[4] =                           "RP PvP"
L.RULESET[5] =                           GUILD_PLAYSTYLE_HARDCORE -- "Hardcore"
L.ROWS =                                 "Linhas:"
L.COLUMNS =                              "Colunas:"
L.QUEST_SPARKLES_WARNING =               "Mais de 5 tentativas de aplicar Brilhos de Missão. Outro addon talvez também esteja monitorando essas CVars."
