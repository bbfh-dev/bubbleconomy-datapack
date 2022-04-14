tag @s add --buec.timer.is_counting

tag @s add +buec.sign
execute unless block 0 0 0 minecraft:oak_sign run function bubbleconomy:etc/place_sign
tag @s add +buec.sign
data modify block 0 0 0 Text1 set value '["Auction remaining time: ", {"score":{"name":"@e[type=minecraft:item_frame, tag=+buec.sign, limit=1]", "objective":"buec.exp_timer"}, "color":"gold", "extra":["t"]}]'
summon minecraft:armor_stand ~ ~.5 ~ {Tags:["buec.timer"], Invisible:1b, Small:1b, Invulnerable:1b, NoBasePlate:1b, Marker:1b, CustomName:'', CustomNameVisible:1b}
data modify entity @e[type=minecraft:armor_stand, tag=buec.timer, limit=1, sort=nearest] CustomName set from block 0 0 0 Text1
scoreboard players operation @e[type=minecraft:armor_stand, tag=buec.timer, limit=1, sort=nearest] buec.registry = @s buec.registry
tag @s remove +buec.sign