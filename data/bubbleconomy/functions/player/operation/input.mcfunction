execute if score @s[scores={buec.set_amount=1..}] buec.dbstate matches 1 run function bubbleconomy:player/operation/transfer_id/input
execute if score @s buec.dbstate matches 2 run function bubbleconomy:player/operation/set_balance/input

scoreboard players reset @s buec.set_amount
scoreboard players reset @s buec.dbstate