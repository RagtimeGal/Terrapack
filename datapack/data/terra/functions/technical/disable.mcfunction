####################
# Uninstall
####################

## Remove Scoreboards
scoreboard objectives remove spin.config
scoreboard objectives remove spin.dummy
scoreboard objectives remove spin.timer
scoreboard objectives remove spin.carrot_on_a_stick

## Kill Mobs
execute at @e[tag=spin.block] run setblock ~ ~ ~ air
tp @e[tag=spin.entity] ~ ~-666 ~
tp @e[tag=spin.modified] ~ ~-666 ~

## Team
team remove smithed.prevent_aggression

## Uninstall Message
tellraw @a [{"translate":"pack.spin.uninstall","color":"red"}]

## Disable Datapack
datapack disable "file/Terrapackb0.1Datapack.zip"
datapack disable "file/Terrapackb0.1Datapack"
