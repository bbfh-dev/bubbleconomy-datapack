execute store result score #Value bubbleconomy run data get storage minecraft:bubbleconomy Thread[{Slot:23b}].Count
execute unless score #Value bubbleconomy matches 64 run item modify block ~ ~ ~ container.23 bubbleconomy:shop/add_item
execute if score #Value bubbleconomy matches 64 run scoreboard players set #Succeed bubbleconomy -1