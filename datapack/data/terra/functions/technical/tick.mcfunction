####################
# Global Tick
####################

## Entity Functions
execute as @e[type=#terra:technical/tick,tag=terra.tick] at @s run function terra:entity/tick

## Player Tick
execute as @a at @s run function terra:entity/player/tick/main
