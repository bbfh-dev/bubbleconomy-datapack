tag @s add --buec.perm.set_balance
tellraw @s[distance=.1..] ["", {"text":"Bubbleconomy INFO", "bold":true}, " \u25b6 ", "Permission set_balance was granted"]
tellraw @p ["", {"text":"Bubbleconomy INFO", "bold":true}, " \u25b6 ", "Permission set_balance was granted to ", {"selector":"@s"}]