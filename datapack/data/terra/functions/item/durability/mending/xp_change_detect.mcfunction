############################################################
# Tests if your XP level was changed by an XP orb
############################################################

# Calculations for if your xp level changed or not
scoreboard players operation @s terra.old_xp -= @s terra.current_xp
tag @s remove terra.saw_xp_orb
execute if score @s terra.old_xp matches ..-1 run function terra:item/durability/mending/repair_priority_list
scoreboard players reset @s terra.old_xp
