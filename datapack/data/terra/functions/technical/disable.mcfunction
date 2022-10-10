####################
# Uninstall
####################

## Remove Scoreboards
scoreboard objectives remove terra.config
scoreboard objectives remove terra.dummy
scoreboard objectives remove terra.timer
scoreboard objectives remove terra.carrot_on_a_stick

## Kill Mobs
execute at @e[tag=terra.block] run setblock ~ ~ ~ air
tp @e[tag=terra.entity] ~ ~-666 ~
tp @e[tag=terra.modified] ~ ~-666 ~

## Team
team remove smithed.prevent_aggression

## Uninstall Message
tellraw @a [{"translate":"pack.terra.uninstall","color":"red"}]

## Disable Datapack
datapack disable "file/Terrapackb0.1Datapack.zip"
datapack disable "file/Terrapackb0.1Datapack"
