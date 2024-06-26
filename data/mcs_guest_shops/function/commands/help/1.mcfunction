###########################################################################################
# Help Menu:
###########################################################################################
tellraw @s [{"text": "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=", "color": "#FFFFFF"}]
tellraw @s [{"text": "Mr_Chibi's Player Shop", "color": "#FF2682"}, {"text": " Help Commands:", "color": "#A3A3A3"}] 
tellraw @s [{"text": "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-= \n", "color": "#FFFFFF"}]

###########################################################################################
# 
###########################################################################################
tellraw @s [{"text": "/trigger mcs_create", "color": "yellow", "bold":true}]
tellraw @s [{"text": "Creates a chest shop, but prevents shops being near each other unless it's 5 blocks away. \n", "color": "#A3A3A3"}]

###########################################################################################
# 
###########################################################################################
tellraw @s [{"text": "/trigger mcs_buy set <amount>", "color": "yellow", "bold":true}]
tellraw @s [{"text": "Player must \"Right click\" chest then, click in chat the [gui] button or /trigger mcs_buy set [amount] ", "color": "#A3A3A3"}, {"text": "Requires, stand 0-5 blocks near chest to do command. \n", "color": "red"}]

###########################################################################################
# 
###########################################################################################
tellraw @s [{"text": "Help Navigation:", "color": "white", "bold":true}]
tellraw @s [{"text": "Click a number below to change pages. \n",  "color": "#A3A3A3"}]

tellraw @s [{"text": "[1]", "color": "yellow", "bold":true, "clickEvent":{"action":"run_command","value":"/trigger mcs_help set 1"}}, {"text": " | ", "color": "white", "bold":false}, {"text": "[2]", "color": "white", "bold":false, "clickEvent":{"action":"run_command","value":"/trigger mcs_help set 2"}}, {"text": " | ", "color": "white", "bold":false}, {"text": "[3]", "color": "white", "bold":false, "clickEvent":{"action":"run_command","value":"/trigger mcs_help set 3"}}]