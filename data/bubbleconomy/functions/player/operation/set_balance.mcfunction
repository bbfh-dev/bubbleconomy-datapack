tag @a remove +buec.this
data modify storage minecraft:bubbleconomy Instance set value []
scoreboard players operation #ID bubbleconomy = @s buec.set_balance
function bubbleconomy:database/read/get_by_id
execute if data storage minecraft:bubbleconomy Instance.Match run function bubbleconomy:player/operation/set_balance/instance