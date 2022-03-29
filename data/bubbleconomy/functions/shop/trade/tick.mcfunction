execute at @s run particle happy_villager ^.5 ^.5 ^ 0.2 0.2 0.2 0 1 normal
execute as @s[tag=!+buec.available] run function bubbleconomy:shop/trade/make_available
execute as @s[nbt=!{ItemRotation:0b}] run function bubbleconomy:shop/trade/instance