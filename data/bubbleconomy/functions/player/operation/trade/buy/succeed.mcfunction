execute at @s positioned ^ ^ ^-.5 run function bubbleconomy:api/trade/query_whether_available
execute if score @s buec.item_amount matches 0..1 run tellraw @p ["", {"text":"Bubbleconomy ERROR", "bold":true}, " \u25b6 ", {"text":"Out of stock", "color":"red"}]
execute if score @s buec.item_amount matches 2.. run function bubbleconomy:player/operation/trade/buy/instance