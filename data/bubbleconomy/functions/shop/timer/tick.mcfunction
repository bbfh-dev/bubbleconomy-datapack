execute as @s[tag=!--buec.timer.is_counting] run function bubbleconomy:shop/timer/summon
tag @s add --buec.this.shop
execute as @e[type=minecraft:armor_stand, tag=buec.timer] if score @s buec.registry = @e[type=minecraft:item_frame, tag=--buec.this.shop, limit=1] buec.registry run function bubbleconomy:shop/timer/update
scoreboard players remove @s buec.exp_timer 1

tag @s remove --buec.this.shop
execute if score @s buec.exp_timer matches ..0 run function bubbleconomy:shop/timer/stop