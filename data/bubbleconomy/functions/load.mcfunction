#! Create scoreboards
scoreboard objectives add bubbleconomy dummy
scoreboard objectives add buec.id dummy
scoreboard objectives add buec.registry dummy
scoreboard objectives add buec.link dummy
scoreboard objectives add buec.dbstate dummy
scoreboard objectives add buec.target_id dummy
scoreboard objectives add buec.sneak_time minecraft.custom:minecraft.sneak_time
scoreboard objectives add buec.gui_op dummy
scoreboard objectives add buec.item_amount dummy
scoreboard objectives add buec.item_price dummy
scoreboard objectives add buec.shell_color dummy
scoreboard objectives add buec.exp_timer dummy

#! Triggers
scoreboard objectives add bubbleconomy_gui trigger
scoreboard objectives add buec.get_balance trigger
scoreboard objectives add buec.get_id trigger
scoreboard objectives add buec.transfer_id trigger
scoreboard objectives add buec.set_amount trigger

scoreboard objectives add buec.auction trigger
scoreboard objectives add buec.set_balance trigger

forceload add 0 0

execute unless data storage minecraft:bubbleconomy Messages run data modify storage minecraft:bubbleconomy Messages set value []
execute unless score $DefaultBalance bubbleconomy matches -2147483648..2147483647 run scoreboard players set $DefaultBalance bubbleconomy 0
execute unless score $PlayerShops bubbleconomy matches -2147483648..2147483647 run scoreboard players set $PlayerShops bubbleconomy 1
execute unless score $PlayerMessages bubbleconomy matches -2147483648..2147483647 run scoreboard players set $PlayerMessages bubbleconomy 1

# execute if score $PackVersion bubbleconomy matches -2147483648..2147483647 unless score $PackVersion bubbleconomy matches 100 run ...
execute unless score $PackVersion bubbleconomy matches -2147483648..2147483647 run scoreboard players set $PackVersion bubbleconomy 100