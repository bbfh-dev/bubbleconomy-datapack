scoreboard players add @s buec.shell_color 1
scoreboard players set @s[scores={buec.shell_color=16..}] buec.shell_color 0
tag @s add +buec.this
execute as @e[type=minecraft:shulker, tag=buec.shell] if score @s buec.registry = @e[type=minecraft:item_frame, tag=+buec.this, limit=1] buec.registry store result entity @s Color byte 1 run scoreboard players get @e[type=minecraft:item_frame, tag=+buec.this, limit=1] buec.shell_color
tag @s remove +buec.this
tellraw @p ["", {"text":"Bubbleconomy INFO", "bold":true}, " \u25b6 ", {"text":"Changed the shell color", "color":"green"}]