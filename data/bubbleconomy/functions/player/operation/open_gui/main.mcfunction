tellraw @s ["\u250c\u2500\u2500\u2500\u2500 ", {"text":"Bubbleconomy GUI:", "bold":true}]
tellraw @s ["\u2502 Enable Command access ", {"text":"[?]", "color":"yellow", "hoverEvent":{"action":"show_text", "contents":"Enable /trigger access to all commands without using the GUI.\nAll operations in this GUI have a hint with coresponding command"}}, ":  ", {"text":"[Yes]  ", "color":"green", "clickEvent":{"action":"run_command", "value":"/trigger bubbleconomy_gui set 1041"}}, {"text":"[No]", "color":"red", "clickEvent":{"action":"run_command", "value":"/trigger bubbleconomy_gui set 1042"}}]
tellraw @s ["\u2502 "]

function bubbleconomy:api/print/player_id
function bubbleconomy:api/print/player_balance
tellraw @s ["\u2502 "]
tellraw @s ["\u2502 Transfer by ID:  ", {"text":"[Click]", "color":"light_purple", "hoverEvent":{"action":"show_text", "contents":"You will be prompted to enter an ID.\nYou are able to transfer money to an existing account\neven if the player is offline."}, "clickEvent":{"action":"suggest_command", "value":"/trigger buec.transfer_id set "}}]
tellraw @s ["\u2514\u2500\u2500\u2500\u2500\u2500\u2500"]