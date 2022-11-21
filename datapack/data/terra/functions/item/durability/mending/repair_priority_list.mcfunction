############################################################
# Repairs items in the proper order as intended
############################################################

# Set proper values for the amount that the item should be repaired
scoreboard players set #item_durability_change spin.dummy 2
scoreboard players operation #item_durability_change spin.dummy *= @s spin.old_xp

# Repair items in the proper order
execute if entity @s[predicate=spin:entity/holding/mending_item/mainhand] run function spin:item/durability/slots/mainhand
execute if entity @s[predicate=!spin:entity/holding/mending_item/mainhand,predicate=spin:entity/holding/mending_item/offhand] run function spin:item/durability/slots/offhand
execute if entity @s[predicate=!spin:entity/holding/mending_item/mainhand,predicate=!spin:entity/holding/mending_item/offhand,predicate=spin:entity/holding/mending_item/chest] run function spin:item/durability/slots/chest

# Subtract xp based on how much you used
scoreboard players operation #item_durability_change spin.dummy /= #2 spin.dummy
function spin:item/durability/mending/xp_subtraction_loop
