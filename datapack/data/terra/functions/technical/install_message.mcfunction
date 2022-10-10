####################
# Install Message
####################

tellraw @a [{"translate":"chat.terra.install.success","color":"yellow"}]
tellraw @a {"translate":"chat.terra.install.config","color":"aqua","clickEvent":{"action":"run_command","value":"/function terra:commands/gamerule"},"hoverEvent":{"action":"show_text","contents":[{"translate":"chat.terra.install.config.hover_event"}]}}
tellraw @a {"translate":"pack.terra.version","color":"yellow","clickEvent":{"action":"open_url","value":"https://github.com/RagtimeGal/terrapack/releases/tag/v1.4.1"},"hoverEvent":{"action":"show_text","contents":[{"translate":"pack.terra.version.hover_event"}]}}
scoreboard players set IsInstalled terra.config 1
