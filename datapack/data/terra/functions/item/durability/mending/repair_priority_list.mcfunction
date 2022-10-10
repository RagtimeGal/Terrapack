############################################################
# Repairs items in the proper order as intended
############################################################

# Set proper values for the amount that the item should be repaired
scoreboard players set #item_durability_change terra.dummy 2
scoreboard players operation #item_durability_change terra.dummy *= @s terra.old_xp

# Repair items in the proper order
execute if entity @s[predicate=terra:entity/holding/mending_item/mainhand] run function terra:item/durability/slots/mainhand
execute if entity @s[predicate=!terra:entity/holding/mending_item/mainhand,predicate=terra:entity/holding/mending_item/offhand] run function terra:item/durability/slots/offhand
execute if entity @s[predicate=!terra:entity/holding/mending_item/mainhand,predicate=!terra:entity/holding/mending_item/offhand,predicate=terra:entity/holding/mending_item/chest] run function terra:item/durability/slots/chest

# Subtract xp based on how much you used
scoreboard players operation #item_durability_change terra.dummy /= #2 terra.dummy
function terra:item/durability/mending/xp_subtraction_loop
