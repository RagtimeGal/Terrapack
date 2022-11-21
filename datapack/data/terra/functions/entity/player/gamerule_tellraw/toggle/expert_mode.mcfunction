####################
# Toggles doGeneticMods
####################

execute store result score @s spin.dummy run scoreboard players get ExpertMode spin.config
execute if score @s spin.dummy matches 0 run scoreboard players set ExpertMode spin.config 1
execute if score @s spin.dummy matches 1 run scoreboard players set ExpertMode spin.config 0
function spin:entity/player/gamerule_tellraw/menu
