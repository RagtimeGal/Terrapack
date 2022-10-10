####################
# Summons a Acrocanthosaurus
####################

# Spawns Loot
loot spawn ~ ~ ~ loot terra:items/acrocanthosaurus_primary_fossil
# Copies loot to storage
data modify storage terra:storage root.temp.genome set from entity @e[type=item,limit=1,sort=nearest] Item.tag.terra.genome
# Kills Item
kill @e[type=item,limit=1,sort=nearest]
# Runs summon command
function terra:item/summoning_item/summon
# Summon Command
tellraw @s {"translate":"commands.summon.success","with": [{"translate":"entity.terra.acrocanthosaurus"}]}
tag @s add terra.no_space
function terra:entity/player/gamerule_tellraw/no_feedback_chat_message/load
