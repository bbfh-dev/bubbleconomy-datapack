scoreboard players remove #Counter bubbleconomy 1
execute store result score #Value bubbleconomy run data get storage minecraft:bubbleconomy Bank[0].ID
execute if score #Value bubbleconomy = #ID bubbleconomy run function bubbleconomy:database/write/modify_balance_by_id/succeed
data modify storage minecraft:bubbleconomy Bank append from storage minecraft:bubbleconomy Bank[0]
data remove storage minecraft:bubbleconomy Bank[0]

execute if score #Counter bubbleconomy matches 1.. run function bubbleconomy:database/write/modify_balance_by_id/step