############################################################
# Modifies the data of the item
############################################################

# Set the durability tag
execute store result storage terra:storage root.temp.item.tag.terra.durability[0] int 1 run scoreboard players get @s terra.dummy

# Set repaired tag if the max and current durabilities are the same
execute store result score @s terra.dummy2 run data get storage terra:storage root.temp.item.tag.terra.durability[1] 1
data modify storage terra:storage root.temp.item.tag.terra.repaired set value 0b
execute if score @s terra.dummy = @s terra.dummy2 run data modify storage terra:storage root.temp.item.tag.terra.repaired set value 1b
