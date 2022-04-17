data modify entity @s Item.id set from block ~ ~ ~ Items[{Slot:0b}].id
execute unless block 0 0 0 minecraft:oak_sign run function bubbleconomy:etc/place_sign
tag @s add +buec.sign
execute if score @s buec.gui_op matches 0 run data modify block 0 0 0 Text1 set value '["Buy for ", {"score":{"name":"@e[type=minecraft:item_frame, tag=+buec.sign, limit=1]", "objective":"buec.item_price"}, "color":"green", "extra":["β"]}]'
execute if score @s buec.gui_op matches 1 run data modify block 0 0 0 Text1 set value '["Sell for ", {"score":{"name":"@e[type=minecraft:item_frame, tag=+buec.sign, limit=1]", "objective":"buec.item_price"}, "color":"green", "extra":["β"]}]'
execute if score @s buec.gui_op matches 2 run data modify block 0 0 0 Text1 set value '["\'/trigger buec.set_bid\'. Current: ", {"score":{"name":"@e[type=minecraft:item_frame, tag=+buec.sign, limit=1]", "objective":"buec.set_bid"}, "color":"green", "extra":["β"]}]'
tag @s remove +buec.sign
data modify entity @s Item.tag.display.Name set from block 0 0 0 Text1