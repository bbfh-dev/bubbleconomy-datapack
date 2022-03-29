function bubbleconomy:api/database/open
execute if score #Counter bubbleconomy matches 1.. run function bubbleconomy:database/read/get_by_id_step
execute unless data storage minecraft:bubbleconomy Instance.Match run tellraw @s ["", {"text":"Bubbleconomy ERROR", "bold":true}, " \u25b6 ", {"text":"No account found by this ID", "color":"red"}]