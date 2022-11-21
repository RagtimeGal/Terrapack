####################
# Summons a Acrocanthosaurus
####################

# Spawns Loot
loot spawn ~ ~ ~ loot spin:items/acrocanthosaurus_primary_fossil
# Copies loot to storage
data modify storage spin:storage root.temp.genome set from entity @e[type=item,limit=1,sort=nearest] Item.tag.spin.genome
# Kills Item
kill @e[type=item,limit=1,sort=nearest]
# Runs summon command
function spin:item/summoning_item/summon
# Summon Command
tellraw @s {"translate":"commands.summon.success","with": [{"translate":"entity.spin.acrocanthosaurus"}]}
tag @s add spin.no_space
function spin:entity/player/gamerule_tellraw/no_feedback_chat_message/load
