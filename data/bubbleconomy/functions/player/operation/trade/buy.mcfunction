execute as @p run function bubbleconomy:api/get_player_instance
execute store result score #Balance bubbleconomy run data get storage minecraft:bubbleconomy Instance.Match.Balance
execute unless score #Balance bubbleconomy >= @s buec.item_price run tellraw @p ["", {"text":"Bubbleconomy ERROR", "bold":true}, " \u25b6 ", {"text":"Cash shortage", "color":"red"}]
execute if score #Balance bubbleconomy >= @s buec.item_price run function bubbleconomy:player/operation/trade/buy/succeed