scoreboard players set #Succeed bubbleconomy -1
execute store success score #Succeed bubbleconomy run data modify storage minecraft:bubbleconomy Thread[{Slot:6b}].id set from entity @s Item.id
execute if score #Succeed bubbleconomy matches 0 run item modify block ~ ~ ~ container.6 bubbleconomy:shop/remove_item