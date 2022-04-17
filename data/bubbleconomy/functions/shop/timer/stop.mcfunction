tag @s remove --buec.timer.is_counting
tag @s add --buec.this.shop
execute as @e[type=minecraft:armor_stand, tag=buec.timer] if score @s buec.registry = @e[type=minecraft:item_frame, tag=--buec.this.shop, limit=1] buec.registry run kill @s

tag @a remove --buec.this.player
execute at @a[scores={buec.link=1..}] if score @p buec.link = @s buec.link run tag @p add --buec.this.player

data modify storage minecraft:bubbleconomy Instance set value []
scoreboard players operation #ID bubbleconomy = @p[tag=--buec.this.player] buec.id
scoreboard players operation #Amount bubbleconomy = @s buec.set_bid
scoreboard players set #Operation bubbleconomy 1
function bubbleconomy:database/write/modify_balance_by_id

data modify storage minecraft:bubbleconomy Instance set value []
scoreboard players operation #ID bubbleconomy = @s buec.id
scoreboard players operation #Amount bubbleconomy = @s buec.set_bid
scoreboard players set #Operation bubbleconomy 3
function bubbleconomy:database/write/modify_balance_by_id

execute at @s positioned ^ ^ ^-.5 run function bubbleconomy:player/operation/trade/buy/clear

execute at @p[tag=--buec.this.player] run summon minecraft:item ~ ~ ~ {Tags:["buec.item"], Item:{id:"minecraft:stone", Count:1b}}
data modify entity @e[type=minecraft:item, tag=buec.item, limit=1] Item.id set from entity @s Item.id
tag @e[type=minecraft:item, tag=buec.item, limit=1] remove buec.item

tellraw @p[tag=--buec.this.player] ["", {"text":"Bubbleconomy INFO", "bold":true}, " \u25b6 ", {"text":"Successfully won auction of ", "color":"green", "extra":[{"nbt":"Item.id", "entity":"@s", "color":"yellow"}]}, {"text":" for ", "color":"green", "extra":[{"score":{"name":"@s", "objective":"buec.set_bid"}, "color":"yellow", "extra":["β"]}]}]

execute as @p[tag=--buec.this.player] run function bubbleconomy:api/get_player_instance
data modify storage minecraft:bubbleconomy Messages append value {Target:[I; 0, 0, 0, 0], Operation:4b, Shop:{X:0, Y:0, Z:0}, Value:0}
data modify storage minecraft:bubbleconomy Messages[-1].Target set from storage minecraft:bubbleconomy Instance.Match.UUID
execute at @s run data modify storage minecraft:bubbleconomy Messages[-1].Shop.X set from block ^ ^ ^-.5 x
execute at @s run data modify storage minecraft:bubbleconomy Messages[-1].Shop.Y set from block ^ ^ ^-.5 y
execute at @s run data modify storage minecraft:bubbleconomy Messages[-1].Shop.Z set from block ^ ^ ^-.5 z
execute store result storage minecraft:bubbleconomy Messages[-1].Value int 1 run scoreboard players get @s buec.set_bid
schedule function bubbleconomy:messages/tick 5t replace

scoreboard players operation @s buec.set_bid = @s buec.item_price

execute unless block 0 0 0 minecraft:oak_sign run function bubbleconomy:etc/place_sign
data modify block 0 0 0 Text1 set value '["\'/trigger buec.set_bid\'. Starting at: ", {"score":{"name":"@e[type=minecraft:item_frame, tag=--buec.this.shop, limit=1]", "objective":"buec.item_price"}, "color":"gray", "extra":["β"]}]'
data modify entity @s Item.tag.display.Name set from block 0 0 0 Text1

tag @s remove --buec.this.shop
scoreboard players reset @p[tag=--buec.this.player] buec.link
scoreboard players reset @s buec.link