############################################################
# Prevents an overflow past the maximum durability value
############################################################

execute store result score #temp_0 terra.dummy run data get storage terra:storage root.temp.item.tag.terra.durability[0] 1
execute store result score #temp_1 terra.dummy run data get storage terra:storage root.temp.item.tag.terra.durability[1] 1
scoreboard players operation #temp_0 terra.dummy -= #temp_1 terra.dummy
execute if score #item_durability_change terra.dummy < #temp_0 terra.dummy run scoreboard players operation #item_durability_change terra.dummy = #temp_0 terra.dummy
