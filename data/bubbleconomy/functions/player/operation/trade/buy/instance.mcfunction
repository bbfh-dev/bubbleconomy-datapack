execute at @s positioned ^ ^ ^-.5 run function bubbleconomy:player/operation/trade/buy/clear

summon minecraft:item ~ ~ ~ {Tags:["buec.item"], Item:{id:"minecraft:stone", Count:1b}}
data modify entity @e[type=minecraft:item, tag=buec.item, limit=1] Item.id set from entity @s Item.id
tag @e[type=minecraft:item, tag=buec.item, limit=1] remove buec.item

data modify storage minecraft:bubbleconomy Instance set value []
scoreboard players operation #ID bubbleconomy = @p buec.id
scoreboard players operation #Amount bubbleconomy = @s buec.item_price
function bubbleconomy:database/write/remove_balance_by_id

data modify storage minecraft:bubbleconomy Instance set value []
scoreboard players operation #ID bubbleconomy = @s buec.id
scoreboard players operation #Amount bubbleconomy = @s buec.item_price
function bubbleconomy:database/write/add_balance_by_id

tellraw @p ["", {"text":"Bubbleconomy INFO", "bold":true}, " \u25b6 ", {"text":"Successfully bought ", "color":"green", "extra":[{"nbt":"Item.id", "entity":"@s", "color":"yellow"}]}, {"text":" for ", "color":"green", "extra":[{"score":{"name":"@s", "objective":"buec.item_price"}, "color":"yellow", "extra":["β"]}]}]

function bubbleconomy:api/get_player_instance
data modify storage minecraft:bubbleconomy Messages append value {Target:[I; 0, 0, 0, 0], Operation:0b, Shop:{X:0, Y:0, Z:0}}
data modify storage minecraft:bubbleconomy Messages[-1].Target set from storage minecraft:bubbleconomy Instance.Match.UUID
execute at @s run data modify storage minecraft:bubbleconomy Messages[-1].Shop.X set from block ^ ^ ^-.5 x
execute at @s run data modify storage minecraft:bubbleconomy Messages[-1].Shop.Y set from block ^ ^ ^-.5 y
execute at @s run data modify storage minecraft:bubbleconomy Messages[-1].Shop.Z set from block ^ ^ ^-.5 z
schedule function bubbleconomy:messages/tick 5t replace