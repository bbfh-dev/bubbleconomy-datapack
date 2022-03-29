data merge entity @s {Tags:["buec.shop", "-buec.notset"], Item:{id:"minecraft:barrier", Count:1b, tag:{display:{Name:'{"text":"Empty", "italic":false}'}}}, Invulnerable:1b, Invisible:1b, Silent:1b, Fixed:1b}
particle lava ^0.5 ^0.5 ^-0.5 0.2 0.2 0.2 0.2 5 normal
execute store result score @e[type=minecraft:item_frame, tag=-buec.notset, limit=1] buec.registry run scoreboard players add #EntityCounter buec.registry 1
scoreboard players operation @e[type=minecraft:item_frame, tag=-buec.notset, limit=1] buec.id = @p[tag=+buec.this] buec.id
scoreboard players set @e[type=minecraft:item_frame, tag=-buec.notset, limit=1] buec.gui_op 0
scoreboard players set @e[type=minecraft:item_frame, tag=-buec.notset, limit=1] buec.shell_color 0
scoreboard players set @e[type=minecraft:item_frame, tag=-buec.notset, limit=1] buec.item_amount 0
scoreboard players set @e[type=minecraft:item_frame, tag=-buec.notset, limit=1] buec.item_price 0
tag @e[type=minecraft:item_frame, tag=-buec.notset, limit=1] remove -buec.notset
function bubbleconomy:shop/close