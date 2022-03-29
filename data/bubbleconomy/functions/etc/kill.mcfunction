tag @s add +buec.killed
execute as @s[type=minecraft:armor_stand] as @e[type=minecraft:shulker, tag=buec.shell] if score @s buec.registry = @e[type=minecraft:armor_stand, tag=+buec.killed, limit=1] buec.registry run function bubbleconomy:etc/kill
tp @s[type=!minecraft:item_frame] ~ -256 ~
kill @s[type=!minecraft:item_frame]