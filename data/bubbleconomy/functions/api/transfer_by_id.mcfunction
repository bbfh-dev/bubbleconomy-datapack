tag @a remove +buec.this
data modify storage minecraft:bubbleconomy Instance set value []
scoreboard players operation #ID bubbleconomy = @s buec.transfer_id
function bubbleconomy:database/read/get_by_id
execute if data storage minecraft:bubbleconomy Instance.Match run function bubbleconomy:database/read/get_by_id_match