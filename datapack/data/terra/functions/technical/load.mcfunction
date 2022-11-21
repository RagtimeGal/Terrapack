####################
# Load
####################

## Add Scoreboards
scoreboard objectives add spin.config dummy
scoreboard objectives add spin.dummy dummy
scoreboard objectives add spin.timer dummy
scoreboard objectives add spin.carrot_on_a_stick minecraft.used:carrot_on_a_stick

## Antivillager
team add smithed.prevent_aggression

## Schedule
schedule function spin:technical/ten_second_clock/main 10s replace
schedule function spin:technical/second_clock/main 1s replace

## Set Config
execute unless score version spin.config matches 1 run function spin:technical/update
scoreboard players set version spin.config 1

## Send Chat Messages
execute if score IsInstalled spin.config matches 1 if score doReloadMessage spin.config matches 1 run function spin:technical/reload_message
execute unless score IsInstalled spin.config matches 1 run function spin:technical/default_config
execute unless score IsInstalled spin.config matches 1 run function spin:technical/install_message
