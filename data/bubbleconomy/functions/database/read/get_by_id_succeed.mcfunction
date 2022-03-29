scoreboard players set #Counter bubbleconomy 0
data modify storage minecraft:bubbleconomy Instance.Match set from storage minecraft:bubbleconomy Thread[-1]
execute as @a if score @s buec.id = #ID bubbleconomy run tag @s add +buec.this