execute store result score @p bubbleconomy run clear @p #bubbleconomy:gui_items{Tags:["buec.change_price"], Value:1b}
execute if score @p bubbleconomy matches 1.. run scoreboard players add @s buec.item_price 1
execute if score @p bubbleconomy matches 1.. run tellraw @p ["", {"text":"Bubbleconomy INFO", "bold":true}, " \u25b6 ", {"text":"Changed price by +1β. Now: ", "color":"green"}, {"score":{"name":"@s", "objective":"buec.item_price"}, "color":"yellow", "extra":["β"]}]

execute store result score @p bubbleconomy run clear @p #bubbleconomy:gui_items{Tags:["buec.change_price"], Value:10b}
execute if score @p bubbleconomy matches 1.. run scoreboard players add @s buec.item_price 10
execute if score @p bubbleconomy matches 1.. run tellraw @p ["", {"text":"Bubbleconomy INFO", "bold":true}, " \u25b6 ", {"text":"Changed price by +10β. Now: ", "color":"green"}, {"score":{"name":"@s", "objective":"buec.item_price"}, "color":"yellow", "extra":["β"]}]

execute store result score @p bubbleconomy run clear @p #bubbleconomy:gui_items{Tags:["buec.change_price"], Value:100b}
execute if score @p bubbleconomy matches 1.. run scoreboard players add @s buec.item_price 100
execute if score @p bubbleconomy matches 1.. run tellraw @p ["", {"text":"Bubbleconomy INFO", "bold":true}, " \u25b6 ", {"text":"Changed price by +100β. Now: ", "color":"green"}, {"score":{"name":"@s", "objective":"buec.item_price"}, "color":"yellow", "extra":["β"]}]