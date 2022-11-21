############################################################
# Prevents an overflow past the maximum durability value
############################################################

execute store result score #temp_0 spin.dummy run data get storage spin:storage root.temp.item.tag.spin.durability[0] 1
execute store result score #temp_1 spin.dummy run data get storage spin:storage root.temp.item.tag.spin.durability[1] 1
scoreboard players operation #temp_0 spin.dummy -= #temp_1 spin.dummy
execute if score #item_durability_change spin.dummy < #temp_0 spin.dummy run scoreboard players operation #item_durability_change spin.dummy = #temp_0 spin.dummy
