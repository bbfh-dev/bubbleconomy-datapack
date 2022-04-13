tag @s remove --buec.perm.create_auction
tellraw @s[distance=.1..] ["", {"text":"Bubbleconomy INFO", "bold":true}, " \u25b6 ", "Permission create_auction was revoked"]
tellraw @p ["", {"text":"Bubbleconomy INFO", "bold":true}, " \u25b6 ", "Permission create_auction was revoked to ", {"selector":"@s"}]