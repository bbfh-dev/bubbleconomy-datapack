data modify storage minecraft:bubbleconomy Thread set from storage minecraft:bubbleconomy Messages
execute store result score #Counter bubbleconomy run data get storage minecraft:bubbleconomy Thread
data modify storage minecraft:bubbleconomy Messages set value []
function bubbleconomy:messages/update/step