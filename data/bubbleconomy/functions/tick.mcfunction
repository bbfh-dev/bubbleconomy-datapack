execute as @e[type=minecraft:item_frame, tag=buec.shop] at @s run function bubbleconomy:shop/tick
kill @e[type=minecraft:item, nbt={Item:{tag:{Tags:["buec.gui_item"]}}}]
scoreboard players reset @a buec.sneak_time