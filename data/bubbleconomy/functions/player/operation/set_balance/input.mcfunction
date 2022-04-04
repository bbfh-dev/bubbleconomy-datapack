data modify storage minecraft:bubbleconomy Instance set value []
scoreboard players operation #ID bubbleconomy = @s buec.target_id
scoreboard players operation #Amount bubbleconomy = @s buec.set_amount
function bubbleconomy:database/write/set_balance_by_id

tellraw @s ["", {"text":"Bubbleconomy INFO", "bold":true}, " \u25b6 ", {"text":"Successfully set balance of ", "color":"green"}, {"score":{"name":"@s", "objective":"buec.target_id"}, "color":"yellow"}, {"text":" to ", "color":"green"}, {"score":{"name":"@s", "objective":"buec.set_amount"}, "color":"yellow", "extra":["β"]}]

function bubbleconomy:api/database/open
scoreboard players operation #ID bubbleconomy = @s buec.target_id
function bubbleconomy:database/read/get_by_id

data modify storage minecraft:bubbleconomy Messages append value {Target:[I; 0, 0, 0, 0], Operation:3b, From:[I; 0, 0, 0, 0], FromID:0, Amount:0}
data modify storage minecraft:bubbleconomy Messages[-1].Target set from storage minecraft:bubbleconomy Instance.Match.UUID
data modify storage minecraft:bubbleconomy Messages[-1].From set from entity @s UUID
execute store result storage minecraft:bubbleconomy Messages[-1].FromID int 1 run scoreboard players get @s buec.id
execute store result storage minecraft:bubbleconomy Messages[-1].Amount int 1 run scoreboard players get @s buec.set_amount
schedule function bubbleconomy:messages/tick 5t replace