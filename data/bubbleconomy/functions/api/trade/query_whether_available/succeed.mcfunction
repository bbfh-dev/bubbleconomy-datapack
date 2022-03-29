execute store result score #Value bubbleconomy run data get storage minecraft:bubbleconomy Thread[-1].Count
scoreboard players operation @s buec.item_amount += #Value bubbleconomy
data modify entity @s Item.tag.Bubbleconomy.ForSaleItems append from storage minecraft:bubbleconomy Thread[-1]