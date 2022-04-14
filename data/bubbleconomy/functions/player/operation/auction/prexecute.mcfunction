execute as @e[type=minecraft:item_frame, tag=buec.shop, distance=..2] if score @s buec.gui_op matches 2 run tag @s add --buec.this.shop
execute as @e[type=minecraft:item_frame, tag=--buec.this.shop, limit=1, sort=nearest] run function bubbleconomy:player/operation/auction/conditions
tag @e remove --buec.this.shop