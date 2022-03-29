tag @s remove +buec.process_gui
tag @s remove +buec.opened_gui
function bubbleconomy:shop/gui/load_icon
data modify entity @s Item.tag.Bubbleconomy.Items set from block ~ ~ ~ Items
data modify block ~ ~ ~ Items set value []