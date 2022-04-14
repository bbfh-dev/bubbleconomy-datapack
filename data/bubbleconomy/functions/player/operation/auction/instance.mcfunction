scoreboard players set @s buec.exp_timer 100
scoreboard players operation @s buec.auction = @p buec.auction

execute at @a[scores={buec.link=1..}] run function bubbleconomy:player/operation/auction/reset
execute store result score @s buec.link store result score @p buec.link run scoreboard players add #Counter buec.link 1

tag @s add +buec.sign
execute unless block 0 0 0 minecraft:oak_sign run function bubbleconomy:etc/place_sign
data modify block 0 0 0 Text1 set value '["\'/trigger buec.auction\'. Current: ", {"score":{"name":"@e[type=minecraft:item_frame, tag=+buec.sign, limit=1]", "objective":"buec.auction"}, "color":"green", "extra":["β"]}]'
data modify entity @s Item.tag.display.Name set from block 0 0 0 Text1
tag @s remove +buec.sign