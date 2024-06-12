###########################################################################################
# Help Menu:
###########################################################################################
tellraw @s [{"text": "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=", "color": "#FFFFFF"}]
tellraw @s [{"text": "Mr_Chibi's Player Shop", "color": "#FF2682"}, {"text": " Help Commands:", "color": "#A3A3A3"}] 
tellraw @s [{"text": "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-= \n", "color": "#FFFFFF"}]

###########################################################################################
# 
###########################################################################################
tellraw @s [{"text": "/trigger mcs_open", "color": "yellow", "bold":true}]
tellraw @s [{"text": "Opens the shop to the public to browse. ", "color": "#A3A3A3"}, {"text": "Requires, stand 0-5 blocks near chest to do command. \n", "color": "red"}]

###########################################################################################
# 
###########################################################################################
tellraw @s [{"text": "/trigger mcs_close", "color": "yellow", "bold":true}]
tellraw @s [{"text": "Locks the shop from the public. ", "color": "#A3A3A3"}, {"text": "Requires, stand 0-5 blocks near chest to do command. \n", "color": "red"}]


###########################################################################################
# 
###########################################################################################
tellraw @s [{"text": "Help Navigation:", "color": "white", "bold":true}]
tellraw @s [{"text": "Click a number below to change pages. \n",  "color": "#A3A3A3"}]

tellraw @s [{"text": "[1]", "color": "white", "bold":false, "clickEvent":{"action":"run_command","value":"/trigger mcs_help set 1"}}, {"text": " | ", "color": "white", "bold":false}, {"text": "[2]", "color": "yellow", "bold":true, "clickEvent":{"action":"run_command","value":"/trigger mcs_help set 2"}}, {"text": " | ", "color": "white", "bold":false}, {"text": "[3]", "color": "white", "bold":false, "clickEvent":{"action":"run_command","value":"/trigger mcs_help set 3"}}]