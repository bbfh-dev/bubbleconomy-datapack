scoreboard players remove #Counter bubbleconomy 1
execute store result score #Value bubbleconomy run data get storage minecraft:bubbleconomy Thread[-1].ID
execute unless score #Value bubbleconomy = #ID bubbleconomy run data modify storage minecraft:bubbleconomy Bank append from storage minecraft:bubbleconomy Thread[-1]
execute if score #Counter bubbleconomy matches 1.. run function bubbleconomy:database/write/remove_entry_by_id_step