tag @s add --buec.perm.create_auction
tellraw @s[distance=.1..] ["", {"text":"Bubbleconomy INFO", "bold":true}, " \u25b6 ", "Permission create_auction was granted"]
tellraw @p ["", {"text":"Bubbleconomy INFO", "bold":true}, " \u25b6 ", "Permission create_auction was granted to ", {"selector":"@s"}]