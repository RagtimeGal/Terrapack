####################
# Removes unwanted chat messages
####################

tellraw @s[tag=!spin.no_space] ""
tag @s remove spin.no_space
execute store result score @s spin.dummy run gamerule sendCommandFeedback
gamerule sendCommandFeedback false
execute if score @s spin.dummy matches 1.. run schedule function spin:entity/player/gamerule_tellraw/no_feedback_chat_message/scheduled 1t
