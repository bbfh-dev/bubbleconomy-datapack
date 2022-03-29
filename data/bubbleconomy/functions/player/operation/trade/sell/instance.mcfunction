data modify storage minecraft:bubbleconomy Instance set from entity @p SelectedItem.id
execute store success score #Succeed bubbleconomy run data modify storage minecraft:bubbleconomy Instance set from entity @s Item.id
execute if score #Succeed bubbleconomy matches 1 run tellraw @p ["", {"text":"Bubbleconomy ERROR", "bold":true}, " \u25b6 ", {"text":"You must be holding the same item as in the shop", "color":"red"}]
execute if score #Succeed bubbleconomy matches 0 run function bubbleconomy:player/operation/trade/sell/instance_succeed