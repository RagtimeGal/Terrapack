####################
# Commands to run if the player is holding an item
####################

## Carrot on stick commands
execute if entity @s[predicate=terra:entity/holding/carrot_on_a_stick] run function terra:item/carrot_on_a_stick/holding

## Mending Items
execute if entity @s[predicate=terra:entity/holding/mending_item/any] positioned ~ ~0.805 ~ run function terra:item/durability/mending/xp_orb_test/main
