execute at @s positioned ^ ^ ^-.5 run function bubbleconomy:api/trade/query_all_items
execute if score @s buec.item_amount matches 1344.. run tellraw @p ["", {"text":"Bubbleconomy ERROR", "bold":true}, " \u25b6 ", {"text":"The shop is full", "color":"red"}]
execute unless score @s buec.item_amount matches 1344.. run function bubbleconomy:player/operation/trade/sell/instance