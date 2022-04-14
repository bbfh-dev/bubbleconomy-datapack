tag @a remove +buec.target
tag @a remove +buec.player
tag @s add +buec.this
execute as @a[distance=..1] if predicate bubbleconomy:is_sneaking run function bubbleconomy:shop/tick/make_target
tag @s remove +buec.this

execute as @s[tag=+buec.process_gui] positioned ^ ^ ^-.5 run function bubbleconomy:shop/gui/process
execute as @s[tag=+buec.opened] unless entity @p[tag=+buec.target] run function bubbleconomy:shop/close
execute as @s[tag=+buec.available] unless entity @p[tag=+buec.player] run function bubbleconomy:shop/trade/make_unavailable
execute if score @s buec.exp_timer matches 1.. run function bubbleconomy:shop/timer/tick