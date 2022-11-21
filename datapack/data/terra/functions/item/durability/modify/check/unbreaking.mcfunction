############################################################
# Checks if an item is going to take damage based on unbreaking enchantments
############################################################

execute if data storage spin:storage root.temp.item.tag.Enchantments[{lvl:1s,id:"minecraft:unbreaking"}] if predicate spin:chance/one_half run function spin:item/durability/modify/check/overflow
execute if data storage spin:storage root.temp.item.tag.Enchantments[{lvl:2s,id:"minecraft:unbreaking"}] if predicate spin:chance/one_third run function spin:item/durability/modify/check/overflow
execute if data storage spin:storage root.temp.item.tag.Enchantments[{lvl:3s,id:"minecraft:unbreaking"}] if predicate spin:chance/one_fourth run function spin:item/durability/modify/check/overflow
execute unless data storage spin:storage root.temp.item.tag.Enchantments[{id:"minecraft:unbreaking"}] run function spin:item/durability/modify/check/overflow
