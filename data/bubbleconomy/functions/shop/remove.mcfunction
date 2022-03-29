item replace block ~ ~ ~ container.7 with minecraft:air
item replace block ~ ~ ~ container.8 with minecraft:air
item replace block ~ ~ ~ container.16 with minecraft:air
item replace block ~ ~ ~ container.17 with minecraft:air
item replace block ~ ~ ~ container.25 with minecraft:air
item replace block ~ ~ ~ container.26 with minecraft:air
setblock ~ ~ ~ air destroy
tag @s add +buec.this
execute as @e[type=minecraft:armor_stand, tag=buec.shop_shell] if score @s buec.registry = @e[type=minecraft:item_frame, tag=+buec.this, limit=1] buec.registry run tag @s add -buec.kill
tag @s remove +buec.this
schedule function bubbleconomy:etc/kill_schedule 5t replace
kill @s