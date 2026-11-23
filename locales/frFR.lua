-------------------------------------
-- Slacker's Tweak Suite: frFR.lua --
-------------------------------------
-- French (France) localisation
-- Translator(s): Klep-Ysondre

if GetLocale() ~= "frFR" then return end
local appName, app = ...
local L = app.locales

-- Core
L.NEW_VERSION_AVAILABLE =                "Une nouvelle version de %s est disponible :" -- %s becomes the addon name

L.DEBUG_ENABLED =                        "Mode débogage activé"
L.DEBUG_DISABLED =                       "Mode débogage désactivé"
L.INVALID_COMMAND =                      "Commande non valide"

-- Settings
L.VERSION =                              GAME_VERSION_LABEL .. " :" -- "Version"
L.SUPPORT_TEXTLONG1 =                    "Le développement de cette extension demande beaucoup de temps et d’efforts."
L.SUPPORT_TEXTLONG2 =                    "Veuillez envisager de soutenir financièrement le développeur."
L.SUPPORT =                              "Soutien"
L.BUY_ME_A_COFFEE =                      "Buy Me a Coffee" -- Brand name, if there isn't a localised version, keep it the way it is
L.THANK_YOU =                            "Merci !"
L.FEEDBACK_AND_HELP =                    "Commentaires et aide"
L.DISCORD =                              "Discord" -- Brand name, if there isn't a localised version, keep it the way it is
L.JOIN_DISCORD_SERVER =                  "Rejoignez le serveur Discord."
L.CTRL_C_COPY =                          "Ctrl + C pour copier :"
L.LINK_COPIED =                          "Lien copié dans le presse-papiers"

L.KEYBINDINGS_AND_SLASH_COMMANDS =       SETTINGS_KEYBINDINGS_LABEL .. " & Commandes « Slash »" -- "Keybindings"
L.OPEN_SETTINGS =                        "Ouvrir les paramètres"

L.GENERAL =                              GENERAL -- "General"
L.CURSOR_GUIDE =                         "Guide du curseur"
L.CURSOR_GUIDE_DESC =                    "Affiche un repère autour du curseur pour vous aider à le retrouver."
L.CURSOR_GUIDE_COMBAT =                  "Uniquement en combat"
L.CURSOR_GUIDE_COMBAT_DESC =             "Afficher le guide du curseur uniquement en combat."
L.SKIP_SEEN_CINEMATICS =                 "Ignorer les cinématiques déjà vues"
L.SKIP_SEEN_CINEMATICS_DESC =            "Ignorer automatiquement les cinématiques déjà vues."

L.INVENTORY =                            INVENTORY_TOOLTIP -- "Inventory"
L.DISABLE_ALWAYS_COMPARE =               "Désactiver la comparaison permanente"
L.DISABLE_ALWAYS_COMPARE_DESC =          "Désactive la comparaison permanente des objets."
L.SHOW_TOKEN_PRICE =                     "Afficher le prix du Jeton WoW"
L.SHOW_TOKEN_PRICE_DESC =                "Affiche le prix actuel du Jeton WoW dans son infobulle."
L.SPLIT_BAG_COUNT =                      "Compter séparément les places du sac de composants"
L.SPLIT_BAG_COUNT_DESC =                 "Affiche séparément le nombre de places libres dans vos sacs et votre sac de composants au-dessus de l'icône du sac à dos."

L.LOOT =                                 LOOT -- "Loot"
L.INSTANT_CATALYST =                     "Catalyseur instantané"
L.INSTANT_CATALYST_DESC =                "Maintenez Maj enfoncée pour catalyser instantanément un objet, sans attendre les 5 secondes."
L.INSTANT_VAULT =                        "Coffre hebdomadaire instantané"
L.INSTANT_VAULT_DESC =                   "Maintenez Maj enfoncée pour recevoir instantanément votre récompense du Coffre hebdomadaire, sans attendre les 5 secondes."
L.SHOW_TOOLTIP =                         "Afficher l’infobulle"
L.SHOW_TOOLTIP_SETTING_DESC =            "Afficher l’infobulle expliquant le fonctionnement de cette fonctionnalité. Le texte du bouton change toujours même si cette option est désactivée."
L.HIDE_LOOT_ROLL_WINDOW =                "Masquer la fenêtre de jet de butin"
L.HIDE_LOOT_ROLL_WINDOW_DESC =           "Masquer la fenêtre des jets de butin et leurs résultats. Vous pouvez la réafficher avec %s." -- %s becomes "/loot"
L.LEM_LOOT_ROLLS =                       "Jets de butin dans le mode Édition"
L.LEM_LOOT_ROLLS_DESC =                  "Ajoute la fenêtre de jet de butin Besoin/Cupidité au mode Édition."
L.EXTENDED_MERCHANT_FRAME =              "Fenêtre de marchand étendue"
L.EXTENDED_MERCHANT_FRAME_DESC =         "Choisissez combien de lignes et de colonnes d'objets sont affichées par page chez les marchands et ajoutez une barre de recherche."
L.DISABLE_MERCHANT_FILTER =              "Désactiver le filtre des marchands"
L.DISABLE_MERCHANT_FILTER_DESC =         "Définit automatiquement tous les filtres des marchands sur \"Tous\" pour afficher les objets normalement cachés à votre classe."
L.DISABLE_MERCHANT_COMPARE =             "Désactiver la comparaison chez les marchands"
L.DISABLE_MERCHANT_COMPARE_DESC1 =       "Désactive la comparaison automatique d'équipement chez les marchands."
L.DISABLE_MERCHANT_COMPARE_DESC2 =       "Peut être incompatible avec les addons qui filtrent le contenu des marchands."

L.WORLD =                                WORLD -- "World"
L.HALLOWSEND_NOTRICK =                   "[Sanssaint] Pas de farce"
L.HALLOWSEND_NOTRICK_DESC =              "Asseyez-vous avant de terminer une quête du seau de bonbons pour éviter de subir une farce et d'être neutralisé."
L.QUEST_SPARKLES =                       "Scintillements des quêtes"
L.QUEST_SPARKLES_DESC1 =                 "Affiche des scintillements sur les objets et donneurs de quêtes. (Ces options ne peuvent pas être séparées.)"
L.QUEST_SPARKLES_DESC2 =                 "La désactivation de cette fonction nécessite de redémarrer le jeu."
L.MINIMAP_TARGET =                       "Cible sur la minicarte"
L.MINIMAP_TARGET_DESC =                  "Affiche votre cible et votre focalisation sur la minicarte."

L.SOUND =                                SOUND -- "Sound"
L.PLAY_QUEUE_SOUND =                     "Jouer le son de la file d'attente"
L.PLAY_QUEUE_SOUND_DESC =                "Joue le son de la file d'attente sur le canal Principal lorsqu'une file se déclenche, y compris les champs de bataille et les combats de mascottes."
L.PLAY_READYCHECK_SOUND =                "Jouer le son de la vérification de préparation"
L.PLAY_READYCHECK_SOUND_DESC =           "Joue le son de la vérification de préparation sur le canal Principal lorsqu'une vérification commence."
L.PLAY_COUNTDOWN_SOUND =                 "Jouer le son du compte à rebours"
L.PLAY_COUNTDOWN_SOUND_DESC =            "Joue le son du compte à rebours sur le canal Principal lorsqu'un compte à rebours ou un minuteur de pull démarre."

L.ADDONS =                               "Addons"
L.DISABLE_HANDYNOTES_ALTRMB =            "Désactiver HandyNotes Alt " .. app.IconRMB
L.DISABLE_HANDYNOTES_ALTRMB_DESC =       "Désactive le raccourci HandyNotes sur la carte, le rendant à nouveau disponible pour les points de passage TomTom."
L.REQUIRES_RELOAD =                      REQUIRES_RELOAD -- "Requires Reload"
L.AH_PRICE_TOOLTIP =                     "Prix de l'hôtel des ventes dans l'infobulle"
L.AH_PRICE_TOOLTIP_DESC1 =               "Affiche les informations de prix les plus récentes d'Auctionator, Oribos Exchange ou TradeSkillMaster."
L.AH_PRICE_TOOLTIP_DESC2 =               "Arrondit également les valeurs et corrige les prix dans la fenêtre des métiers, des recettes et des mascottes."

-- UI
L.GET_IT_NOW =                           "Obtenir maintenant !"
L.HOLD_SHIFT_TOOLTIP =                   "Maintenir Maj pour recevoir instantanément l’objet et ignorer les 5 secondes."
L.REGION =                               "Région %s" -- %s becomes an abbreviated region name such as "EU" or "US"
L.RULESET = {}
L.RULESET[0] =                           "Ensemble de règles"
L.RULESET[1] =                           GDAPI_REALMTYPE_NORMAL -- "Normal"
L.RULESET[2] =                           GDAPI_REALMTYPE_PVP -- "PvP"
L.RULESET[3] =                           "Jeu de rôle"
L.RULESET[4] =                           "Jeu de rôle JcJ"
L.RULESET[5] =                           GUILD_PLAYSTYLE_HARDCORE -- "Hardcore"
L.ROWS =                                 "Lignes :"
L.COLUMNS =                              "Colonnes :"
L.QUEST_SPARKLES_WARNING =               "Plus de 5 tentatives d'appliquer les scintillements des quêtes. Un autre addon surveille peut-être aussi ces CVars."
