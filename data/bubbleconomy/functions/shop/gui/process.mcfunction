execute as @s[tag=!+buec.opened_gui] run function bubbleconomy:shop/gui/open
function bubbleconomy:shop/gui/tick
function bubbleconomy:shop/gui/interaction
execute at @s unless entity @p[distance=..1] positioned ^ ^ ^-.5 run function bubbleconomy:shop/gui/close