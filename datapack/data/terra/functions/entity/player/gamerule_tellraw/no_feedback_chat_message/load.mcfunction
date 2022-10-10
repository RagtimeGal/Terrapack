####################
# Removes unwanted chat messages
####################

tellraw @s[tag=!terra.no_space] ""
tag @s remove terra.no_space
execute store result score @s terra.dummy run gamerule sendCommandFeedback
gamerule sendCommandFeedback false
execute if score @s terra.dummy matches 1.. run schedule function terra:entity/player/gamerule_tellraw/no_feedback_chat_message/scheduled 1t
