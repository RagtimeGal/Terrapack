############################################################
# Checks if the item's durability is either going to go over the maximum or under the minimum (break)
############################################################

# Prevent the added durability amount from overflowing the maximum value by setting it to the maximum repair value
execute if score #item_durability_change spin.dummy matches ..-1 run function spin:item/durability/modify/check/set_max

# Find out the new durability of the item (USED IN LATER FUNCTIONS AS WELL)
execute store result score @s spin.dummy run data get storage spin:storage root.temp.item.tag.spin.durability[0] 1
scoreboard players operation @s spin.dummy -= #item_durability_change spin.dummy

# If the durability is less than 0, break the item
execute if entity @s[scores={spin.dummy=..0}] run function spin:item/durability/modify/break

# If the durability is more than 0, modify the durability of the item
execute if entity @s[scores={spin.dummy=1..}] run function spin:item/durability/modify/change_item_data
