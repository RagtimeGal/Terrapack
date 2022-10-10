####################
# Player tick function
####################

## Non-Spectator Stuffs
execute if entity @s[gamemode=!spectator] run function terra:entity/player/tick/non_spectators
