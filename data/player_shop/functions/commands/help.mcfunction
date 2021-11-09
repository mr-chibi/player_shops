############################################################################################
	# Menu GUI #
############################################################################################
tellraw @s [{"text": "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=", "color": "blue"}]
tellraw @s [{"text": "Mr_Chibi's Player Shops Help", "color": "aqua"}]
tellraw @s [{"text": "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=", "color": "blue"}]
tellraw @s [{"text": ""}]


# [/trigger ps_create]:
tellraw @s [{"text": "/trigger ps_create ", "color": "yellow"}]
tellraw @s [{"text": "Creates a shop linked to players UUID. \n", "color": "gray"}]

# [/trigger ps_remove]:
tellraw @s [{"text": "/trigger ps_remove ", "color": "yellow"}]
tellraw @s [{"text": "Removes a shop linked from players matching UUID. \n", "color": "gray"}]

# [/trigger ps_icon]:
tellraw @s [{"text": "/trigger ps_icon ", "color": "yellow"}]
tellraw @s [{"text": "Gives the villager custom icon to hold for shop! \n", "color": "gray"}]

# [/trigger ps_job]:
tellraw @s [{"text": "/trigger ps_job set 1-13", "color": "yellow"}]
tellraw @s [{"text": "Changes the job of the villager. \n", "color": "gray"}]

# [/trigger ps_type]:
tellraw @s [{"text": "/trigger ps_type set 1-7", "color": "yellow"}]
tellraw @s [{"text": "Changes the design of the villager. \n", "color": "gray"}]

# [/trigger ps_buy_0]:
tellraw @s [{"text": "/trigger ps_buy_0 set <amount>", "color": "yellow"}]
tellraw @s [{"text": "Buys amount from player's shop! In Slot #0\n", "color": "gray"}]

# [/trigger ps_buy_1]:
tellraw @s [{"text": "/trigger ps_buy_1 set <amount>", "color": "yellow"}]
tellraw @s [{"text": "Buys amount from player's shop! In Slot #1\n", "color": "gray"}]

# [/trigger ps_buy_2]:
tellraw @s [{"text": "/trigger ps_buy_2 set <amount>", "color": "yellow"}]
tellraw @s [{"text": "Buys amount from player's shop! In Slot #2\n", "color": "gray"}]

# Reset Command:
scoreboard players set @s[scores={ps_help=1..}] ps_help 0