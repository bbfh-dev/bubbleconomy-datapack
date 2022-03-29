tag @s add +buec.filter
tag @p add +buec.this
execute as @p if predicate bubbleconomy:looking_at_filter as @e[tag=+buec.filter] at @s if block ^ ^ ^-.5 minecraft:trapped_chest run function bubbleconomy:shop/create
tag @s remove +buec.filter
tag @p remove +buec.this