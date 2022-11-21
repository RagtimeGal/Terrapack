############################################################
# Functions to modify the durability of a specific item in a slot
############################################################

# Set storage stuff
data remove storage spin:storage root.temp
data modify storage spin:storage root.temp.item set from entity @s SelectedItem

# Sets the item's data in storage
function spin:item/durability/modify/main
execute unless data storage spin:storage root.temp.item run item replace entity @s weapon.mainhand with air
item modify entity @s weapon.mainhand spin:durability_lore
data modify storage spin:storage root.temp.item set from entity @s SelectedItem
data modify storage spin:storage root.temp.item.tag.display.Lore[0] set from storage spin:storage root.temp.item.tag.display.Lore[-1]
data remove storage spin:storage root.temp.item.tag.display.Lore[-1]
item modify entity @s weapon.mainhand spin:copy_nbt
