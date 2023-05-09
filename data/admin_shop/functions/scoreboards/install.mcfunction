# Shop Admin Override:
team add ps_admin

# Shop Admin Prefix:
team modify ps_admin color gray
team modify ps_admin prefix [{"text": "[", "color": "white"}, {"text": "MC's Shops Admin", "color": "#FF2682"}, {"text": "] ", "color": "white"}]


# Admin Unlimited Items Selling:
scoreboard objectives add ps_unlimited trigger

# Admin Limited Items Selling:
scoreboard objectives add ps_limited trigger

# Keep Track Sell Counts on Unlimited:
scoreboard objectives add ps_sell_remainer_1 dummy
scoreboard objectives add ps_sell_remainer_2 dummy
scoreboard objectives add ps_sell_remainer_3 dummy
scoreboard objectives add ps_sell_remainer_4 dummy
scoreboard objectives add ps_sell_remainer_5 dummy
scoreboard objectives add ps_sell_remainer_6 dummy
scoreboard objectives add ps_sell_remainer_7 dummy
scoreboard objectives add ps_sell_remainer_8 dummy
scoreboard objectives add ps_sell_remainer_9 dummy