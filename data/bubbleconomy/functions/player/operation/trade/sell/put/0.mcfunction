scoreboard players set #Succeed bubbleconomy -1
execute store success score #Succeed bubbleconomy run data modify storage minecraft:bubbleconomy Thread[{Slot:0b}].id set from storage minecraft:bubbleconomy Item
execute if score #Succeed bubbleconomy matches 0 store result score #Value bubbleconomy run data get storage minecraft:bubbleconomy Thread[{Slot:0b}].Count
execute if score #Succeed bubbleconomy matches 0 unless score #Value bubbleconomy matches 64 run item modify block ~ ~ ~ container.0 bubbleconomy:shop/add_item
execute if score #Succeed bubbleconomy matches 0 if score #Value bubbleconomy matches 64 run scoreboard players set #Succeed bubbleconomy -1