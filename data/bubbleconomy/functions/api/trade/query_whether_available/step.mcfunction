execute store success score #Succeed bubbleconomy run data modify storage minecraft:bubbleconomy Thread[-1].id set from entity @s Item.id
execute if score #Succeed bubbleconomy matches 0 run function bubbleconomy:api/trade/query_whether_available/succeed

data remove storage minecraft:bubbleconomy Thread[-1]
execute if data storage minecraft:bubbleconomy Thread[] run function bubbleconomy:api/trade/query_whether_available/step
