execute as @s[tag=!+buec.opened] if score @s buec.id = @p buec.id run function bubbleconomy:shop/open
execute unless score @s buec.id = @p buec.id run function bubbleconomy:shop/trade/tick