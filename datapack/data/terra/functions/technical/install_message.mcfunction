####################
# Install Message
####################

tellraw @a [{"translate":"chat.spin.install.success","color":"yellow"}]
tellraw @a {"translate":"chat.spin.install.config","color":"aqua","clickEvent":{"action":"run_command","value":"/function spin:commands/gamerule"},"hoverEvent":{"action":"show_text","contents":[{"translate":"chat.spin.install.config.hover_event"}]}}
tellraw @a {"translate":"pack.spin.version","color":"yellow","clickEvent":{"action":"open_url","value":"https://github.com/RagtimeGal/terrapack/releases/tag/v1.4.1"},"hoverEvent":{"action":"show_text","contents":[{"translate":"pack.spin.version.hover_event"}]}}
scoreboard players set IsInstalled spin.config 1
