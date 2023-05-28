# UUID's:
scoreboard objectives remove ps_id

# Shop Player Distance
scoreboard objectives remove ps_distance

# Player "Right Clicks" Chest:
scoreboard objectives remove ps_chest_rclick

# Shop Player View Page:
scoreboard objectives remove ps_view_pg

# Shop Player Error Detection when shopping:
scoreboard objectives remove ps_error

# Shop Chest Stock [Buying Counts]:
scoreboard objectives remove ps_stock

# Shop <Amount> Remainer Player's shop has:
scoreboard objectives remove ps_stock_remainer_1
scoreboard objectives remove ps_stock_remainer_2
scoreboard objectives remove ps_stock_remainer_3
scoreboard objectives remove ps_stock_remainer_4
scoreboard objectives remove ps_stock_remainer_5
scoreboard objectives remove ps_stock_remainer_6
scoreboard objectives remove ps_stock_remainer_7
scoreboard objectives remove ps_stock_remainer_8
scoreboard objectives remove ps_stock_remainer_9

# Shop <Amount> Player's Buying [Player Count Buying]:
scoreboard objectives remove ps_cart

# Shop Player's Inventory [Player's Inventory]:
scoreboard objectives remove ps_wallet

# Shop recieved from player purchasing:
scoreboard objectives remove ps_sending
scoreboard objectives remove ps_recieved

# Shop Payment Slots:
scoreboard objectives remove ps_payment_1
scoreboard objectives remove ps_payment_2
scoreboard objectives remove ps_payment_3
scoreboard objectives remove ps_payment_4
scoreboard objectives remove ps_payment_5
scoreboard objectives remove ps_payment_6
scoreboard objectives remove ps_payment_7
scoreboard objectives remove ps_payment_8
scoreboard objectives remove ps_payment_9

# Shop Commands:
scoreboard objectives remove ps_help
scoreboard objectives remove ps_create
scoreboard objectives remove ps_page
scoreboard objectives remove ps_buy
scoreboard objectives remove ps_edit
scoreboard objectives remove ps_particles
scoreboard objectives remove ps_lock
scoreboard objectives remove ps_unlock
scoreboard objectives remove ps_remove

# Shop Admin Override:
team remove ps_admin

#
execute as @a run tellraw @s [{"text": "[", "color": "white"}, {"text": "Mr_Chibi's Player Shop", "color": "#FF2682"}, {"text": "]", "color": "white"}, {"text": " Uninstalled Player Shop scoreboard & data!", "color": "#A3A3A3"}]
execute as @a run tellraw @s [{"text": "[", "color": "white"}, {"text": "Mr_Chibi's Player Shop", "color": "#FF2682"}, {"text": "]", "color": "white"}, {"text": " Do: '/datapack disable [Pack]' \n to disable the rest.", "color": "green"}]