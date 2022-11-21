####################
# Gamerule menu
####################

## Menu Title
tellraw @s ["\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",{"translate":"chat.spin.gamerules.title", "bold":true, "color":"#FFAA00"}," ",{"translate":"pack.spin.version","color":"yellow","clickEvent":{"action":"open_url","value":"https://github.com/RagtimeGal/Dinos-n-Dodos/releases/tag/v1.3.0"},"hoverEvent":{"action":"show_text","contents":[{"translate":"pack.spin.version.hover_event"}]}},"\n"]
## Wiki
tellraw @a [{"translate":"chat.spin.wiki","color":"aqua","clickEvent":{"action":"open_url","value":"https://github.com/RagtimeGal/spin/wiki"},"hoverEvent":{"action":"show_text","contents":[{"translate":"chat.spin.wiki.hover_event"}]}},"\n"]
## Disocrd
tellraw @a [{"translate":"chat.spin.discord","color":"aqua","clickEvent":{"action":"open_url","value":"https://discord.gg/qawUwZK"},"hoverEvent":{"action":"show_text","contents":[{"translate":"chat.spin.discord.hover_event"}]}},"\n"]
# doReloadMessage
execute unless score doReloadMessage spin.config matches 1 run tellraw @s [{"translate":"chat.spin.gamerules.doreloadmessage", "color":"aqua", "hoverEvent":{"action":"show_text", "contents":[{"translate":"chat.spin.gamerules.doreloadmessage.description"},"\n",{"translate":"chat.spin.gamerules.default_false", "color":"aqua"}]}}," ",{"translate":"chat.spin.gamerules.false", "color":"red", "clickEvent":{"action":"run_command", "value":"/function spin:entity/player/gamerule_tellraw/toggle/do_reload_message"}}]
execute if score doReloadMessage spin.config matches 1 run tellraw @s [{"translate":"chat.spin.gamerules.doreloadmessage", "color":"aqua", "hoverEvent":{"action":"show_text", "contents":[{"translate":"chat.spin.gamerules.doreloadmessage.description"},"\n",{"translate":"chat.spin.gamerules.default_false", "color":"aqua"}]}}," ",{"translate":"chat.spin.gamerules.true", "color":"green", "clickEvent":{"action":"run_command", "value":"/function spin:entity/player/gamerule_tellraw/toggle/do_reload_message"}}]
# ExpertMode
execute unless score ExpertMode spin.config matches 1 run tellraw @s [{"translate":"chat.spin.gamerules.expertmode", "color":"aqua", "hoverEvent":{"action":"show_text", "contents":[{"translate":"chat.spin.gamerules.expertmode.description"},"\n",{"translate":"chat.spin.gamerules.default_false", "color":"aqua"}]}}," ",{"translate":"chat.spin.gamerules.false", "color":"red", "clickEvent":{"action":"run_command", "value":"/function spin:entity/player/gamerule_tellraw/toggle/expert_mode"}}]
execute if score ExpertMode spin.config matches 1 run tellraw @s [{"translate":"chat.spin.gamerules.expertmode", "color":"aqua", "hoverEvent":{"action":"show_text", "contents":[{"translate":"chat.spin.gamerules.expertmode.description"},"\n",{"translate":"chat.spin.gamerules.default_false", "color":"aqua"}]}}," ",{"translate":"chat.spin.gamerules.true", "color":"green", "clickEvent":{"action":"run_command", "value":"/function spin:entity/player/gamerule_tellraw/toggle/expert_mode"}}]
# No Feedback
function spin:entity/player/gamerule_tellraw/no_feedback_chat_message/load
