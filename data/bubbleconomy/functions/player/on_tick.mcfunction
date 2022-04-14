advancement revoke @s only bubbleconomy:event/on_tick
execute unless entity @s[tag=-buec.in_database] run function bubbleconomy:player/register

execute if score @s bubbleconomy_gui matches 1.. run function bubbleconomy:player/operation/open_gui
execute if score @s buec.get_id matches 1.. run function bubbleconomy:api/print/player_id
execute if score @s buec.get_balance matches 1.. run function bubbleconomy:api/print/player_balance
execute if score @s buec.transfer_id matches 0.. run function bubbleconomy:player/operation/transfer_id
execute if score @s buec.set_amount matches 0.. run function bubbleconomy:player/operation/input
execute if score @s buec.set_balance matches 0.. run function bubbleconomy:player/operation/set_balance
execute if score @s buec.auction matches 0.. run function bubbleconomy:player/operation/auction

scoreboard players enable @s bubbleconomy_gui
scoreboard players enable @s buec.transfer_id
scoreboard players set @s buec.transfer_id -1

execute if entity @s[tag=buec.command_alias] run function bubbleconomy:player/alias
execute unless entity @s[tag=buec.command_alias] run function bubbleconomy:player/revoke_alias

scoreboard players reset @s buec.set_balance
execute if entity @s[tag=--buec.perm.set_balance] run function bubbleconomy:player/grant_set_balance

execute unless entity @e[type=minecraft:item_frame, tag=buec.shop, distance=..2] run scoreboard players reset @s buec.auction
execute as @e[type=minecraft:item_frame, tag=buec.shop, distance=..2] if score @s buec.gui_op matches 2 run function bubbleconomy:shop/trade/enable_auction