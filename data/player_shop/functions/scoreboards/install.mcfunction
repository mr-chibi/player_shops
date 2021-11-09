# Create Commands:
scoreboard objectives add ps_create trigger
scoreboard objectives add ps_remove trigger
scoreboard objectives add ps_icon trigger
scoreboard objectives add ps_job trigger
scoreboard objectives add ps_type trigger
scoreboard objectives add ps_help trigger

# Buy Slots
scoreboard objectives add ps_buy_0 trigger
scoreboard objectives add ps_buy_1 trigger
scoreboard objectives add ps_buy_2 trigger

# Sell Slots
scoreboard objectives add ps_sell_0 dummy
scoreboard objectives add ps_sell_1 dummy
scoreboard objectives add ps_sell_2 dummy

# buying_slot Slots
scoreboard objectives add ps_buying_0 dummy
scoreboard objectives add ps_buying_1 dummy
scoreboard objectives add ps_buying_2 dummy

# Setup Chest Detection:
scoreboard objectives add shop_chests dummy

# Setup Varibles:
scoreboard objectives add ps_id dummy
scoreboard objectives add ps_owner dummy

# Setup Shop Slots:
scoreboard objectives add ps_slot_0 dummy
scoreboard objectives add ps_slot_1 dummy
scoreboard objectives add ps_slot_2 dummy

# Text GUI:
scoreboard objectives add ps_gui minecraft.custom:minecraft.talked_to_villager
scoreboard objectives add ps_trade_success minecraft.custom:minecraft.traded_with_villager