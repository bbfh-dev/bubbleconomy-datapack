scoreboard players set #Value bubbleconomy 0
execute store success score #Succeed bubbleconomy run data modify storage minecraft:bubbleconomy Thread[-1].id set from entity @s Item.id
execute if score #Succeed bubbleconomy matches 0 store result score #Value bubbleconomy run data get storage minecraft:bubbleconomy Thread[-1].Count
execute if score #Succeed bubbleconomy matches 1 run scoreboard players set #Value bubbleconomy 64
scoreboard players operation @s buec.item_amount += #Value bubbleconomy

data remove storage minecraft:bubbleconomy Thread[-1]
execute if data storage minecraft:bubbleconomy Thread[] run function bubbleconomy:api/trade/query_all_items/step
