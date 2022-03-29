scoreboard players set #Succeed bubbleconomy -1
execute store success score #Succeed bubbleconomy run data modify storage minecraft:bubbleconomy Thread[{Slot:3b}].id set from storage minecraft:bubbleconomy Item
execute if score #Succeed bubbleconomy matches 0 run function bubbleconomy:player/operation/trade/sell/put/add/3
execute if score #Succeed bubbleconomy matches 1 unless data block ~ ~ ~ Items[{Slot:3b}].id run function bubbleconomy:player/operation/trade/sell/put/replace/3