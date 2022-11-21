############################################################
# Detects XP orbs near you
############################################################

execute if entity @e[distance=..3,type=experience_orb,tag=!global.ignore] run tag @s add spin.tag
execute if entity @s[tag=!spin.saw_xp_orb,tag=spin.tag] run function spin:item/durability/mending/xp_orb_test/set_tags
execute if entity @s[tag=spin.saw_xp_orb,tag=!spin.tag] run function spin:item/durability/mending/xp_change_detect
tag @s remove spin.tag
