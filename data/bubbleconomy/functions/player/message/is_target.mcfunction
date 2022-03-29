data modify storage minecraft:bubbleconomy Instance set from storage minecraft:bubbleconomy Thread[-1].Target
execute store success score #Succeed bubbleconomy run data modify storage minecraft:bubbleconomy Instance set from entity @s UUID
execute if score #Succeed bubbleconomy matches 0 run tag @s add +buec.message_receiver