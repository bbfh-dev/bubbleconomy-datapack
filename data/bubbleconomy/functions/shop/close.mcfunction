summon armor_stand ^ ^-1.2 ^-.55 {NoGravity:1b, Invisible:1b, Small:1b, DisabledSlots:4144959, Tags:["buec.shop_shell", "-buec.notset"], Passengers:[{id:"minecraft:shulker", Tags:["buec.shell", "-buec.notset"], NoAI:1b, NoGravity:1b, Silent:1b, Invulnerable:1b, CustomName:'"Shop"', DeathLootTable:"minecraft:empty", Color:0b}]}
execute store result entity @e[type=minecraft:shulker, tag=buec.shell, tag=-buec.notset, limit=1] Color byte 1 run scoreboard players get @s buec.shell_color
execute store result score @e[type=minecraft:shulker, tag=buec.shell, tag=-buec.notset] buec.registry run scoreboard players operation @e[type=minecraft:armor_stand, tag=buec.shop_shell, tag=-buec.notset] buec.registry = @s buec.registry
tag @e[type=minecraft:armor_stand, tag=buec.shop_shell, tag=-buec.notset] remove -buec.notset
tag @e[type=minecraft:shulker, tag=buec.shell, tag=-buec.notset] remove -buec.notset
tag @s remove +buec.opened