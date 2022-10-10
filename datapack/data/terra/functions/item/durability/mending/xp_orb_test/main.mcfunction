############################################################
# Detects XP orbs near you
############################################################

execute if entity @e[distance=..3,type=experience_orb,tag=!global.ignore] run tag @s add terra.tag
execute if entity @s[tag=!terra.saw_xp_orb,tag=terra.tag] run function terra:item/durability/mending/xp_orb_test/set_tags
execute if entity @s[tag=terra.saw_xp_orb,tag=!terra.tag] run function terra:item/durability/mending/xp_change_detect
tag @s remove terra.tag
