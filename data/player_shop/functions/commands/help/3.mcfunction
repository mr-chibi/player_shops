###########################################################################################
# Help Menu:
###########################################################################################
tellraw @s [{"text": "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=", "color": "#FFFFFF"}]
tellraw @s [{"text": "Mr_Chibi's Player Shop", "color": "#FF2682"}, {"text": " Help Commands:", "color": "#A3A3A3"}] 
tellraw @s [{"text": "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-= \n", "color": "#FFFFFF"}]


###########################################################################################
# 
###########################################################################################
tellraw @s [{"text": "/trigger ps_remove", "color": "yellow", "bold":true}]
tellraw @s [{"text": "Removes chest shop. ", "color": "#A3A3A3"}, {"text": "Requires, stand 1-2 blocks near chest to do command. \n", "color": "red"}]


###########################################################################################
# 
###########################################################################################
tellraw @s[team=ps_admin] [{"text": "/trigger ps_unlimited", "color": "yellow", "bold":true}]
tellraw @s[team=ps_admin] [{"text": "Sets the Selling item to 64 for unlimited and stores previous stored amount in scoreboard. ", "color": "#A3A3A3"}, {"text": "Requires, stand 1-2 blocks near chest to do command. \n", "color": "red"}]


###########################################################################################
# 
###########################################################################################
tellraw @s[team=ps_admin] [{"text": "/trigger ps_limited", "color": "yellow", "bold":true}]
tellraw @s[team=ps_admin] [{"text": "Reverts to previous amount from scoreboard and puts shop back to normal! ", "color": "#A3A3A3"}, {"text": "Requires, stand 1-2 blocks near chest to do command. \n", "color": "red"}]

###########################################################################################
# 
###########################################################################################
tellraw @s [{"text": "Help Navigation:", "color": "white", "bold":true}]
tellraw @s [{"text": "Click a number below to change pages. \n",  "color": "#A3A3A3"}]

tellraw @s [{"text": "[1]", "color": "white", "bold":false, "clickEvent":{"action":"run_command","value":"/trigger ps_help set 1"}}, {"text": " | ", "color": "white", "bold":false}, {"text": "[2]", "color": "white", "bold":false, "clickEvent":{"action":"run_command","value":"/trigger ps_help set 2"}}, {"text": " | ", "color": "white", "bold":false}, {"text": "[3]", "color": "yellow", "bold":true, "clickEvent":{"action":"run_command","value":"/trigger ps_help set 3"}}]


###########################################################################################
# Reset Command:
###########################################################################################
scoreboard players set @s[scores={ps_help=1..}] ps_help 0