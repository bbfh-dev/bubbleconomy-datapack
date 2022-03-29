scoreboard players set @s buec.item_amount 0
function bubbleconomy:shop/gui/open

data modify entity @s Item.tag.Bubbleconomy.ForSaleItems set value []
data modify storage minecraft:bubbleconomy Thread set from block ~ ~ ~ Items
data remove storage minecraft:bubbleconomy Thread[{tag:{Tags:["buec.gui_item"]}}]
execute if data storage minecraft:bubbleconomy Thread[] run function bubbleconomy:api/trade/query_all_items/step
function bubbleconomy:shop/gui/close