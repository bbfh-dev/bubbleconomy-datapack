execute store result score @s buec.registry run scoreboard players add #Counter buec.registry 1
tag @s add -buec.in_database

function bubbleconomy:database/write/remove_entry_by_id

data modify storage minecraft:bubbleconomy Bank append value {ID:-1, UUID:[I; 0, 0, 0, 0], Balance:0}
execute store result storage minecraft:bubbleconomy Bank[-1].ID int 1 store result score @s buec.id run scoreboard players add #IDCounter buec.registry 1
execute store result storage minecraft:bubbleconomy Bank[-1].Balance int 1 run scoreboard players get $DefaultBalance bubbleconomy
data modify storage minecraft:bubbleconomy Bank[-1].UUID set from entity @s UUID
