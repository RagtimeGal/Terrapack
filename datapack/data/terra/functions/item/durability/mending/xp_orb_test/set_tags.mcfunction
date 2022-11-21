############################################################
# Sets tags if xp orbs were found
############################################################

scoreboard players operation @s spin.old_xp = @s spin.current_xp
tag @s add spin.saw_xp_orb
