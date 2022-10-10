####################
# Toggles doReloadMessage
####################

execute store result score @s terra.dummy run scoreboard players get doReloadMessage terra.config
execute if score @s terra.dummy matches 0 run scoreboard players set doReloadMessage terra.config 1
execute if score @s terra.dummy matches 1 run scoreboard players set doReloadMessage terra.config 0
function terra:entity/player/gamerule_tellraw/menu
