####################
# Reload Message
####################

tellraw @a [{"translate":"chat.terra.reload","color":"green"}]
tellraw @a {"translate":"pack.terra.version","color":"yellow","clickEvent":{"action":"open_url","value":"https://github.com/RagtimeGal/terra/releases/tag/v1.4.1"},"hoverEvent":{"action":"show_text","contents":[{"translate":"pack.terra.version.hover_event"}]}}
