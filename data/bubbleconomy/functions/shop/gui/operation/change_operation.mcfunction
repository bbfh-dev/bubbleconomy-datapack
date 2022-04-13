execute store result score @p bubbleconomy run clear @p #bubbleconomy:gui_items{Tags:["buec.set_operation"], Value:2b}
execute if score @p bubbleconomy matches 1.. run scoreboard players set @s buec.gui_op 2

execute store result score @p bubbleconomy run clear @p #bubbleconomy:gui_items{Tags:["buec.set_operation"], Value:1b}
execute if score @p bubbleconomy matches 1.. run scoreboard players set @s buec.gui_op 1

execute store result score @p bubbleconomy run clear @p #bubbleconomy:gui_items{Tags:["buec.set_operation"], Value:0b}
execute if score @p bubbleconomy matches 1.. run scoreboard players set @s buec.gui_op 0