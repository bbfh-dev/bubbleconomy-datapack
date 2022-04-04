function bubbleconomy:api/database/open
data modify storage minecraft:bubbleconomy Bank set value []
execute if score #Counter bubbleconomy matches 1.. run function bubbleconomy:database/write/set_balance_by_id_step