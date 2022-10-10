####################
# Gamerule menu
####################

## Menu Title
tellraw @s ["\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",{"translate":"chat.terra.gamerules.title", "bold":true, "color":"#FFAA00"}," ",{"translate":"pack.terra.version","color":"yellow","clickEvent":{"action":"open_url","value":"https://github.com/RagtimeGal/Dinos-n-Dodos/releases/tag/v1.3.0"},"hoverEvent":{"action":"show_text","contents":[{"translate":"pack.terra.version.hover_event"}]}},"\n"]
## Wiki
tellraw @a [{"translate":"chat.terra.wiki","color":"aqua","clickEvent":{"action":"open_url","value":"https://github.com/RagtimeGal/terra/wiki"},"hoverEvent":{"action":"show_text","contents":[{"translate":"chat.terra.wiki.hover_event"}]}},"\n"]
## Disocrd
tellraw @a [{"translate":"chat.terra.discord","color":"aqua","clickEvent":{"action":"open_url","value":"https://discord.gg/qawUwZK"},"hoverEvent":{"action":"show_text","contents":[{"translate":"chat.terra.discord.hover_event"}]}},"\n"]
# doReloadMessage
execute unless score doReloadMessage terra.config matches 1 run tellraw @s [{"translate":"chat.terra.gamerules.doreloadmessage", "color":"aqua", "hoverEvent":{"action":"show_text", "contents":[{"translate":"chat.terra.gamerules.doreloadmessage.description"},"\n",{"translate":"chat.terra.gamerules.default_false", "color":"aqua"}]}}," ",{"translate":"chat.terra.gamerules.false", "color":"red", "clickEvent":{"action":"run_command", "value":"/function terra:entity/player/gamerule_tellraw/toggle/do_reload_message"}}]
execute if score doReloadMessage terra.config matches 1 run tellraw @s [{"translate":"chat.terra.gamerules.doreloadmessage", "color":"aqua", "hoverEvent":{"action":"show_text", "contents":[{"translate":"chat.terra.gamerules.doreloadmessage.description"},"\n",{"translate":"chat.terra.gamerules.default_false", "color":"aqua"}]}}," ",{"translate":"chat.terra.gamerules.true", "color":"green", "clickEvent":{"action":"run_command", "value":"/function terra:entity/player/gamerule_tellraw/toggle/do_reload_message"}}]
# ExpertMode
execute unless score ExpertMode terra.config matches 1 run tellraw @s [{"translate":"chat.terra.gamerules.expertmode", "color":"aqua", "hoverEvent":{"action":"show_text", "contents":[{"translate":"chat.terra.gamerules.expertmode.description"},"\n",{"translate":"chat.terra.gamerules.default_false", "color":"aqua"}]}}," ",{"translate":"chat.terra.gamerules.false", "color":"red", "clickEvent":{"action":"run_command", "value":"/function terra:entity/player/gamerule_tellraw/toggle/expert_mode"}}]
execute if score ExpertMode terra.config matches 1 run tellraw @s [{"translate":"chat.terra.gamerules.expertmode", "color":"aqua", "hoverEvent":{"action":"show_text", "contents":[{"translate":"chat.terra.gamerules.expertmode.description"},"\n",{"translate":"chat.terra.gamerules.default_false", "color":"aqua"}]}}," ",{"translate":"chat.terra.gamerules.true", "color":"green", "clickEvent":{"action":"run_command", "value":"/function terra:entity/player/gamerule_tellraw/toggle/expert_mode"}}]
# No Feedback
function terra:entity/player/gamerule_tellraw/no_feedback_chat_message/load
