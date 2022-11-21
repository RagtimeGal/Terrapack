############################################################
# Modifies the data of the item
############################################################

# Set the durability tag
execute store result storage spin:storage root.temp.item.tag.spin.durability[0] int 1 run scoreboard players get @s spin.dummy

# Set repaired tag if the max and current durabilities are the same
execute store result score @s spin.dummy2 run data get storage spin:storage root.temp.item.tag.spin.durability[1] 1
data modify storage spin:storage root.temp.item.tag.spin.repaired set value 0b
execute if score @s spin.dummy = @s spin.dummy2 run data modify storage spin:storage root.temp.item.tag.spin.repaired set value 1b
