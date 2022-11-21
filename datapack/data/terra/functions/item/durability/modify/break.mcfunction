############################################################
# Commands to run if the item breaks
############################################################

playsound minecraft:entity.item.break player @a[distance=..16]
execute if data storage spin:storage root.temp.item.tag.spin{id:"osteoderm_chestplate"} run particle item minecraft:leather_chestplate{CustomModelData:400000} ~ ~1 ~ 0.2 0.2 0.2 0.1 10 normal
data remove storage spin:storage root.temp.item
