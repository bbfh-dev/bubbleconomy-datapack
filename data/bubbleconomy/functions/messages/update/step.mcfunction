scoreboard players remove #Counter bubbleconomy 1
execute as @a run function bubbleconomy:player/message/is_target
execute unless entity @p[tag=+buec.message_receiver] run data modify storage minecraft:bubbleconomy Messages append from storage minecraft:bubbleconomy Thread[-1]
execute if entity @p[tag=+buec.message_receiver] as @p[tag=+buec.message_receiver] run function bubbleconomy:messages/update/send_message
execute if score #Counter bubbleconomy matches 1.. run function bubbleconomy:messages/update/step