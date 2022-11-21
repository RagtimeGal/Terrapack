####################
# Global Tick
####################

## Entity Functions
execute as @e[type=#spin:technical/tick,tag=spin.tick] at @s run function spin:entity/tick

## Player Tick
execute as @a at @s run function spin:entity/player/tick/main
