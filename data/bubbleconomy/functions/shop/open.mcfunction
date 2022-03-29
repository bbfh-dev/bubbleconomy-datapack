tag @s add +buec.this_
execute as @e[type=minecraft:armor_stand, tag=buec.shop_shell] if score @s buec.registry = @e[type=minecraft:item_frame, tag=+buec.this_, limit=1] buec.registry run function bubbleconomy:etc/kill
tag @s remove +buec.this_
tag @s add +buec.opened
tag @s add +buec.process_gui