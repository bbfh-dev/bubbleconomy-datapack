function bubbleconomy:shop/gui/open
data modify storage minecraft:bubbleconomy Thread set from block ~ ~ ~ Items

execute if data storage minecraft:bubbleconomy Thread[{Slot:24b}] run function bubbleconomy:player/operation/trade/buy/clear/24
execute unless score #Succeed bubbleconomy matches 0 if data storage minecraft:bubbleconomy Thread[{Slot:23b}] run function bubbleconomy:player/operation/trade/buy/clear/23
execute unless score #Succeed bubbleconomy matches 0 if data storage minecraft:bubbleconomy Thread[{Slot:22b}] run function bubbleconomy:player/operation/trade/buy/clear/22
execute unless score #Succeed bubbleconomy matches 0 if data storage minecraft:bubbleconomy Thread[{Slot:21b}] run function bubbleconomy:player/operation/trade/buy/clear/21
execute unless score #Succeed bubbleconomy matches 0 if data storage minecraft:bubbleconomy Thread[{Slot:20b}] run function bubbleconomy:player/operation/trade/buy/clear/20
execute unless score #Succeed bubbleconomy matches 0 if data storage minecraft:bubbleconomy Thread[{Slot:19b}] run function bubbleconomy:player/operation/trade/buy/clear/19
execute unless score #Succeed bubbleconomy matches 0 if data storage minecraft:bubbleconomy Thread[{Slot:18b}] run function bubbleconomy:player/operation/trade/buy/clear/18
execute unless score #Succeed bubbleconomy matches 0 if data storage minecraft:bubbleconomy Thread[{Slot:15b}] run function bubbleconomy:player/operation/trade/buy/clear/15
execute unless score #Succeed bubbleconomy matches 0 if data storage minecraft:bubbleconomy Thread[{Slot:14b}] run function bubbleconomy:player/operation/trade/buy/clear/14
execute unless score #Succeed bubbleconomy matches 0 if data storage minecraft:bubbleconomy Thread[{Slot:13b}] run function bubbleconomy:player/operation/trade/buy/clear/13
execute unless score #Succeed bubbleconomy matches 0 if data storage minecraft:bubbleconomy Thread[{Slot:12b}] run function bubbleconomy:player/operation/trade/buy/clear/12
execute unless score #Succeed bubbleconomy matches 0 if data storage minecraft:bubbleconomy Thread[{Slot:11b}] run function bubbleconomy:player/operation/trade/buy/clear/11
execute unless score #Succeed bubbleconomy matches 0 if data storage minecraft:bubbleconomy Thread[{Slot:10b}] run function bubbleconomy:player/operation/trade/buy/clear/10
execute unless score #Succeed bubbleconomy matches 0 if data storage minecraft:bubbleconomy Thread[{Slot:9b}] run function bubbleconomy:player/operation/trade/buy/clear/9
execute unless score #Succeed bubbleconomy matches 0 if data storage minecraft:bubbleconomy Thread[{Slot:6b}] run function bubbleconomy:player/operation/trade/buy/clear/6
execute unless score #Succeed bubbleconomy matches 0 if data storage minecraft:bubbleconomy Thread[{Slot:5b}] run function bubbleconomy:player/operation/trade/buy/clear/5
execute unless score #Succeed bubbleconomy matches 0 if data storage minecraft:bubbleconomy Thread[{Slot:4b}] run function bubbleconomy:player/operation/trade/buy/clear/4
execute unless score #Succeed bubbleconomy matches 0 if data storage minecraft:bubbleconomy Thread[{Slot:3b}] run function bubbleconomy:player/operation/trade/buy/clear/3
execute unless score #Succeed bubbleconomy matches 0 if data storage minecraft:bubbleconomy Thread[{Slot:2b}] run function bubbleconomy:player/operation/trade/buy/clear/2
execute unless score #Succeed bubbleconomy matches 0 if data storage minecraft:bubbleconomy Thread[{Slot:1b}] run function bubbleconomy:player/operation/trade/buy/clear/1
execute unless score #Succeed bubbleconomy matches 0 if data storage minecraft:bubbleconomy Thread[{Slot:0b}] run function bubbleconomy:player/operation/trade/buy/clear/0

function bubbleconomy:shop/gui/close