############################################################
# Functions to modify the durability of a specific item in a slot
############################################################

# Set storage stuff
data remove storage terra:storage root.temp
data modify storage terra:storage root.temp.item set from entity @s Inventory[{Slot:-106b}]

# Sets the item's data in storage
function terra:item/durability/modify/main
execute unless data storage terra:storage root.temp.item run item replace entity @s weapon.offhand with air
item modify entity @s weapon.offhand terra:durability_lore
data modify storage terra:storage root.temp.item set from entity @s Inventory[{Slot:-106b}]
data modify storage terra:storage root.temp.item.tag.display.Lore[0] set from storage terra:storage root.temp.item.tag.display.Lore[-1]
data remove storage terra:storage root.temp.item.tag.display.Lore[-1]
item modify entity @s weapon.offhand terra:copy_nbt
