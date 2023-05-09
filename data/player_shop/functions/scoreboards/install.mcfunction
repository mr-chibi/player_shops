# UUID's:
scoreboard objectives add ps_id dummy

# Shop Player Distance
scoreboard objectives add ps_distance dummy

# Player "Right Clicks" Chest:
scoreboard objectives add ps_chest_rclick minecraft.custom:minecraft.open_chest

# Shop Player View Page:
scoreboard objectives add ps_view_pg dummy

# Shop Player Error Detection when shopping:
scoreboard objectives add ps_error dummy

# Shop Chest Stock [Buying Counts]:
scoreboard objectives add ps_stock dummy

# Shop <Amount> Remainer Player's shop has:
scoreboard objectives add ps_stock_remainer_1 dummy
scoreboard objectives add ps_stock_remainer_2 dummy
scoreboard objectives add ps_stock_remainer_3 dummy
scoreboard objectives add ps_stock_remainer_4 dummy
scoreboard objectives add ps_stock_remainer_5 dummy
scoreboard objectives add ps_stock_remainer_6 dummy
scoreboard objectives add ps_stock_remainer_7 dummy
scoreboard objectives add ps_stock_remainer_8 dummy
scoreboard objectives add ps_stock_remainer_9 dummy

# Shop <Amount> Player's Buying [Player Count Buying]:
scoreboard objectives add ps_cart dummy

# Shop Player's Inventory [Player's Inventory]:
scoreboard objectives add ps_wallet dummy
scoreboard players set ps_max_payment ps_wallet 64

# Shop recieved from player purchasing:
scoreboard objectives add ps_sending dummy
scoreboard objectives add ps_recieved dummy

# Shop Payment Slots:
scoreboard objectives add ps_payment_1 dummy
scoreboard objectives add ps_payment_2 dummy
scoreboard objectives add ps_payment_3 dummy
scoreboard objectives add ps_payment_4 dummy
scoreboard objectives add ps_payment_5 dummy
scoreboard objectives add ps_payment_6 dummy
scoreboard objectives add ps_payment_7 dummy
scoreboard objectives add ps_payment_8 dummy
scoreboard objectives add ps_payment_9 dummy

# Shop Commands:
scoreboard objectives add ps_help trigger
scoreboard objectives add ps_create trigger
scoreboard objectives add ps_page trigger
scoreboard objectives add ps_buy trigger
scoreboard objectives add ps_edit trigger
scoreboard objectives add ps_particles trigger
scoreboard objectives add ps_lock trigger
scoreboard objectives add ps_unlock trigger
scoreboard objectives add ps_remove trigger