execute unless score @s bubbleconomy_gui matches 1041..1042 run function bubbleconomy:player/operation/open_gui/main
execute if score @s bubbleconomy_gui matches 1041 run function bubbleconomy:player/operation/open_gui/grant_alias
execute if score @s bubbleconomy_gui matches 1042 run function bubbleconomy:player/operation/open_gui/revoke_alias
scoreboard players reset @s bubbleconomy_gui