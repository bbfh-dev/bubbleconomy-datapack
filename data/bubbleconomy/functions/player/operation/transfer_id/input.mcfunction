function bubbleconomy:api/get_player_instance
execute store result score #Balance bubbleconomy run data get storage minecraft:bubbleconomy Instance.Match.Balance
execute if score @s buec.set_amount > #Balance bubbleconomy run tellraw @s ["", {"text":"Bubbleconomy ERROR", "bold":true}, " \u25b6 ", {"text":"Cash shortage", "color":"red"}]
execute unless score @s buec.set_amount > #Balance bubbleconomy run function bubbleconomy:api/operation/transfer_by_id
