execute unless block 0 0 0 minecraft:oak_sign run function bubbleconomy:etc/place_sign
data modify block 0 0 0 Text1 set value '["Auction remaining time: ", {"score":{"name":"@e[type=minecraft:item_frame, tag=--buec.this.shop, limit=1]", "objective":"buec.exp_timer"}, "color":"gold", "extra":["t"]}]'
data modify entity @e[type=minecraft:armor_stand, tag=buec.timer, limit=1, sort=nearest] CustomName set from block 0 0 0 Text1
scoreboard players operation @e[type=minecraft:armor_stand, tag=buec.timer, limit=1, sort=nearest] buec.registry = @s buec.registry