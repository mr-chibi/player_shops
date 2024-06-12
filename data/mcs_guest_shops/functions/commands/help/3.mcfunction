###########################################################################################
# Help Menu:
###########################################################################################
tellraw @s [{"text": "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=", "color": "#FFFFFF"}]
tellraw @s [{"text": "Mr_Chibi's Player Shop", "color": "#FF2682"}, {"text": " Help Commands:", "color": "#A3A3A3"}] 
tellraw @s [{"text": "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-= \n", "color": "#FFFFFF"}]


###########################################################################################
# 
###########################################################################################
tellraw @s [{"text": "/trigger mcs_remove", "color": "yellow", "bold":true}]
tellraw @s [{"text": "Removes chest shop. ", "color": "#A3A3A3"}, {"text": "Requires, stand 0-5 blocks near chest to do command. \n", "color": "red"}]


###########################################################################################
# 
###########################################################################################
tellraw @s[team=mcs_admin] [{"text": "/trigger mcs_unlimited", "color": "yellow", "bold":true}]
tellraw @s[team=mcs_admin] [{"text": "Allows shop to sell items unlimited! ", "color": "#A3A3A3"}, {"text": "Requires, stand 0-5 blocks near chest to do command. \n", "color": "red"}]


###########################################################################################
# 
###########################################################################################
tellraw @s[team=mcs_admin] [{"text": "/trigger mcs_limited", "color": "yellow", "bold":true}]
tellraw @s[team=mcs_admin] [{"text": "Reverts items back to original counts and no, longer unlimited ", "color": "#A3A3A3"}, {"text": "Requires, stand 0-5 blocks near chest to do command. \n", "color": "red"}]

###########################################################################################
# 
###########################################################################################
tellraw @s [{"text": "Help Navigation:", "color": "white", "bold":true}]
tellraw @s [{"text": "Click a number below to change pages. \n",  "color": "#A3A3A3"}]

tellraw @s [{"text": "[1]", "color": "white", "bold":false, "clickEvent":{"action":"run_command","value":"/trigger mcs_help set 1"}}, {"text": " | ", "color": "white", "bold":false}, {"text": "[2]", "color": "white", "bold":false, "clickEvent":{"action":"run_command","value":"/trigger mcs_help set 2"}}, {"text": " | ", "color": "white", "bold":false}, {"text": "[3]", "color": "yellow", "bold":true, "clickEvent":{"action":"run_command","value":"/trigger mcs_help set 3"}}]