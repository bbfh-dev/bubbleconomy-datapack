function bubbleconomy:shop/gui/open
data modify storage minecraft:bubbleconomy Thread set from block ~ ~ ~ Items

execute run function bubbleconomy:player/operation/trade/sell/put/0
execute unless score #Succeed bubbleconomy matches 0 run function bubbleconomy:player/operation/trade/sell/put/1
execute unless score #Succeed bubbleconomy matches 0 run function bubbleconomy:player/operation/trade/sell/put/2
execute unless score #Succeed bubbleconomy matches 0 run function bubbleconomy:player/operation/trade/sell/put/3
execute unless score #Succeed bubbleconomy matches 0 run function bubbleconomy:player/operation/trade/sell/put/4
execute unless score #Succeed bubbleconomy matches 0 run function bubbleconomy:player/operation/trade/sell/put/5
execute unless score #Succeed bubbleconomy matches 0 run function bubbleconomy:player/operation/trade/sell/put/6
execute unless score #Succeed bubbleconomy matches 0 run function bubbleconomy:player/operation/trade/sell/put/9
execute unless score #Succeed bubbleconomy matches 0 run function bubbleconomy:player/operation/trade/sell/put/10
execute unless score #Succeed bubbleconomy matches 0 run function bubbleconomy:player/operation/trade/sell/put/11
execute unless score #Succeed bubbleconomy matches 0 run function bubbleconomy:player/operation/trade/sell/put/12
execute unless score #Succeed bubbleconomy matches 0 run function bubbleconomy:player/operation/trade/sell/put/13
execute unless score #Succeed bubbleconomy matches 0 run function bubbleconomy:player/operation/trade/sell/put/14
execute unless score #Succeed bubbleconomy matches 0 run function bubbleconomy:player/operation/trade/sell/put/15
execute unless score #Succeed bubbleconomy matches 0 run function bubbleconomy:player/operation/trade/sell/put/18
execute unless score #Succeed bubbleconomy matches 0 run function bubbleconomy:player/operation/trade/sell/put/19
execute unless score #Succeed bubbleconomy matches 0 run function bubbleconomy:player/operation/trade/sell/put/20
execute unless score #Succeed bubbleconomy matches 0 run function bubbleconomy:player/operation/trade/sell/put/21
execute unless score #Succeed bubbleconomy matches 0 run function bubbleconomy:player/operation/trade/sell/put/22
execute unless score #Succeed bubbleconomy matches 0 run function bubbleconomy:player/operation/trade/sell/put/23
execute unless score #Succeed bubbleconomy matches 0 run function bubbleconomy:player/operation/trade/sell/put/24

function bubbleconomy:shop/gui/close