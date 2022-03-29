scoreboard players remove #Counter bubbleconomy 1
execute store result score #Value bubbleconomy run data get storage minecraft:bubbleconomy Thread[-1].ID
execute if score #Value bubbleconomy = #ID bubbleconomy run function bubbleconomy:database/read/get_by_id_succeed
data remove storage minecraft:bubbleconomy Thread[-1]

execute if score #Counter bubbleconomy matches 1.. run function bubbleconomy:database/read/get_by_id_step