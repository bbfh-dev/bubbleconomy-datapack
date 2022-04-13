data modify storage minecraft:bubbleconomy Item set from entity @p SelectedItem.id
execute at @s positioned ^ ^ ^-.5 run function bubbleconomy:player/operation/trade/sell/put_item
item modify entity @p weapon.mainhand bubbleconomy:shop/remove_item

data modify storage minecraft:bubbleconomy Instance set value []
scoreboard players operation #ID bubbleconomy = @p buec.id
scoreboard players operation #Amount bubbleconomy = @s buec.item_price
scoreboard players set #Operation bubbleconomy 3
function bubbleconomy:database/write/modify_balance_by_id

data modify storage minecraft:bubbleconomy Instance set value []
scoreboard players operation #ID bubbleconomy = @s buec.id
scoreboard players operation #Amount bubbleconomy = @s buec.item_price
scoreboard players set #Operation bubbleconomy 1
function bubbleconomy:database/write/modify_balance_by_id

tellraw @p ["", {"text":"Bubbleconomy INFO", "bold":true}, " \u25b6 ", {"text":"Successfully sold ", "color":"green", "extra":[{"nbt":"Item.id", "entity":"@s", "color":"yellow"}]}, {"text":" for ", "color":"green", "extra":[{"score":{"name":"@s", "objective":"buec.item_price"}, "color":"yellow", "extra":["β"]}]}]

function bubbleconomy:api/get_player_instance
data modify storage minecraft:bubbleconomy Messages append value {Target:[I; 0, 0, 0, 0], Operation:1b, Shop:{X:0, Y:0, Z:0}}
data modify storage minecraft:bubbleconomy Messages[-1].Target set from storage minecraft:bubbleconomy Instance.Match.UUID
execute at @s run data modify storage minecraft:bubbleconomy Messages[-1].Shop.X set from block ^ ^ ^-.5 x
execute at @s run data modify storage minecraft:bubbleconomy Messages[-1].Shop.Y set from block ^ ^ ^-.5 y
execute at @s run data modify storage minecraft:bubbleconomy Messages[-1].Shop.Z set from block ^ ^ ^-.5 z
schedule function bubbleconomy:messages/tick 5t replace