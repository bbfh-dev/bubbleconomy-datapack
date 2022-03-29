execute store result score @p bubbleconomy run clear @p #bubbleconomy:gui_items{Tags:["buec.change_price"]} 0
execute if score @p bubbleconomy matches 1 run function bubbleconomy:shop/gui/operation/remove_price
execute if score @p bubbleconomy matches 2 run function bubbleconomy:shop/gui/operation/add_price

execute store result score @p bubbleconomy run clear @p #bubbleconomy:gui_items{Tags:["buec.set_operation"]} 0
execute if score @p bubbleconomy matches 1.. run function bubbleconomy:shop/gui/operation/change_operation

execute store result score @p bubbleconomy run clear @p #bubbleconomy:gui_items{Tags:["buec.change_color"]}
execute if score @p bubbleconomy matches 1.. run function bubbleconomy:shop/gui/operation/change_color

execute store result score @p bubbleconomy run clear @p #bubbleconomy:gui_items{Tags:["buec.remove"]}
execute if score @p bubbleconomy matches 1.. run function bubbleconomy:shop/gui/operation/remove

clear @p #bubbleconomy:gui_items{Tags:["buec.gui_item"]}
playsound minecraft:ui.button.click master @p ~ ~ ~