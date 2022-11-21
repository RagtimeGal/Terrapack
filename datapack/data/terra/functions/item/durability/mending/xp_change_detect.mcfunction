############################################################
# Tests if your XP level was changed by an XP orb
############################################################

# Calculations for if your xp level changed or not
scoreboard players operation @s spin.old_xp -= @s spin.current_xp
tag @s remove spin.saw_xp_orb
execute if score @s spin.old_xp matches ..-1 run function spin:item/durability/mending/repair_priority_list
scoreboard players reset @s spin.old_xp
