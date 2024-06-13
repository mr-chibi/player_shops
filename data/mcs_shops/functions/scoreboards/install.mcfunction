# Admin Permissions:
team add mcs_admin

# Preventions [Shop]:
scoreboard objectives add mcs_distance dummy

# Player's Related [Data]:
scoreboard objectives add mcs_ids dummy
scoreboard objectives add mcs_wallet dummy
scoreboard objectives add mcs_total dummy
scoreboard objectives add mcs_payments dummy

# Player's Interaction [Data]:
scoreboard objectives add mcs_chest_interaction minecraft.custom:minecraft.open_chest

# Shop [Buy]
scoreboard objectives add mcs_buy trigger

# Shop Sell [Slots]:
scoreboard objectives add mcs_sell_slot_0 dummy
scoreboard objectives add mcs_sell_slot_1 dummy
scoreboard objectives add mcs_sell_slot_2 dummy
scoreboard objectives add mcs_sell_slot_3 dummy
scoreboard objectives add mcs_sell_slot_4 dummy
scoreboard objectives add mcs_sell_slot_5 dummy
scoreboard objectives add mcs_sell_slot_6 dummy
scoreboard objectives add mcs_sell_slot_7 dummy
scoreboard objectives add mcs_sell_slot_8 dummy

# Shop Buy [Slots]:
scoreboard objectives add mcs_buy_slot_0 dummy
scoreboard objectives add mcs_buy_slot_1 dummy
scoreboard objectives add mcs_buy_slot_2 dummy
scoreboard objectives add mcs_buy_slot_3 dummy
scoreboard objectives add mcs_buy_slot_4 dummy
scoreboard objectives add mcs_buy_slot_5 dummy
scoreboard objectives add mcs_buy_slot_6 dummy
scoreboard objectives add mcs_buy_slot_7 dummy
scoreboard objectives add mcs_buy_slot_8 dummy

# Shop Buy [Slots]:
scoreboard objectives add mcs_payments_slot_0 dummy
scoreboard objectives add mcs_payments_slot_1 dummy
scoreboard objectives add mcs_payments_slot_2 dummy
scoreboard objectives add mcs_payments_slot_3 dummy
scoreboard objectives add mcs_payments_slot_4 dummy
scoreboard objectives add mcs_payments_slot_5 dummy
scoreboard objectives add mcs_payments_slot_6 dummy
scoreboard objectives add mcs_payments_slot_7 dummy
scoreboard objectives add mcs_payments_slot_8 dummy

# Player's Interaction [GUI Pages]:
scoreboard objectives add mcs_pages dummy
scoreboard objectives add mcs_pages_next trigger
scoreboard objectives add mcs_pages_prev trigger
scoreboard players set min_pages mcs_pages -1
scoreboard players set max_pages mcs_pages 9

# Shop [Create/Edit/Remove] (Database Commands):
scoreboard objectives add mcs_help trigger
scoreboard objectives add mcs_create trigger
scoreboard objectives add mcs_remove trigger

# Shop Related [Effects, Closing/Opening, Etc] Commands:
scoreboard objectives add mcs_particles trigger
scoreboard objectives add mcs_open trigger
scoreboard objectives add mcs_close trigger