####################
# Toggles doGeneticMods
####################

execute store result score @s terra.dummy run scoreboard players get ExpertMode terra.config
execute if score @s terra.dummy matches 0 run scoreboard players set ExpertMode terra.config 1
execute if score @s terra.dummy matches 1 run scoreboard players set ExpertMode terra.config 0
function terra:entity/player/gamerule_tellraw/menu
