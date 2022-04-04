tag @s remove --buec.perm.set_balance
tellraw @s[distance=.1..] ["", {"text":"Bubbleconomy INFO", "bold":true}, " \u25b6 ", "Permission set_balance was revoked"]
tellraw @p ["", {"text":"Bubbleconomy INFO", "bold":true}, " \u25b6 ", "Permission set_balance was revoked from ", {"selector":"@s"}]