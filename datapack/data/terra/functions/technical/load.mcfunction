####################
# Load
####################

## Add Scoreboards
scoreboard objectives add terra.config dummy
scoreboard objectives add terra.dummy dummy
scoreboard objectives add terra.timer dummy
scoreboard objectives add terra.carrot_on_a_stick minecraft.used:carrot_on_a_stick

## Antivillager
team add smithed.prevent_aggression

## Schedule
schedule function terra:technical/ten_second_clock/main 10s replace
schedule function terra:technical/second_clock/main 1s replace

## Set Config
execute unless score version terra.config matches 1 run function terra:technical/update
scoreboard players set version terra.config 1

## Send Chat Messages
execute if score IsInstalled terra.config matches 1 if score doReloadMessage terra.config matches 1 run function terra:technical/reload_message
execute unless score IsInstalled terra.config matches 1 run function terra:technical/default_config
execute unless score IsInstalled terra.config matches 1 run function terra:technical/install_message
