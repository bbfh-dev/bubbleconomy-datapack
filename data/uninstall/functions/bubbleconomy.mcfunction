scoreboard objectives remove bubbleconomy
scoreboard objectives remove buec.id
scoreboard objectives remove buec.registry
scoreboard objectives remove buec.dbstate
scoreboard objectives remove buec.target_id
scoreboard objectives remove buec.sneak_time
scoreboard objectives remove buec.gui_op
scoreboard objectives remove buec.item_amount
scoreboard objectives remove buec.item_price
scoreboard objectives remove buec.shell_color
scoreboard objectives remove bubbleconomy_gui
scoreboard objectives remove buec.get_balance
scoreboard objectives remove buec.get_id
scoreboard objectives remove buec.transfer_id
scoreboard objectives remove buec.set_amount
scoreboard objectives remove buec.set_balance

data remove storage minecraft:bubbleconomy Item
data remove storage minecraft:bubbleconomy Bank
data remove storage minecraft:bubbleconomy Balance
data remove storage minecraft:bubbleconomy Messages
data remove storage minecraft:bubbleconomy Instance
data remove storage minecraft:bubbleconomy Thread

tag @a remove -buec.in_database

tellraw @s [{"text":"Bubbleconomy has been uninstalled. Use ", "color":"red"}, {"text":"/datapack disable <name>", "color":"yellow"}, " to finish or use ", {"text":"/reload", "color":"yellow"}, " to reinstall"]