# Insert into Marker, [Buy/Sell] (Sell Data):
$execute store result entity @s data.shop_buy[$(shop_pages)].sell int 1 run scoreboard players get @p mcs_buy
$execute store result entity @s data.shop_sell[$(shop_pages)].sell int 1 run scoreboard players get @p mcs_buy

# Fetch Players/Buy Slot, [Inventory]:
$function mcs_shops_engine:buy/transaction/amount with entity @s data.shop_buy[$(shop_pages)]

# Insert into Marker, [Buy/Sell] (Buy Data):
$execute store result entity @s data.shop_buy[$(shop_pages)].buy int 1 run scoreboard players get @p mcs_total
$execute store result entity @s data.shop_sell[$(shop_pages)].buy int 1 run scoreboard players get @p mcs_total

# Update Clear [Inventory]:
$function mcs_shops_engine:buy/transaction/clear with entity @s data.shop_buy[$(shop_pages)]

# Update [Payment]:
$function mcs_shops_engine:buy/transaction/payment with entity @s data.shop_buy[$(shop_pages)]

# Update Sell [Inventory]:
$function mcs_shops_engine:buy/transaction/update_inventory with entity @s data.shop_sell[$(shop_pages)]

# Give Player, [Purchase]:
$function mcs_shops_engine:buy/transaction/purchase with entity @s data.shop_sell[$(shop_pages)]

# Reset
$data modify entity @s data.shop_buy[$(shop_pages)].sell set value 0
$data modify entity @s data.shop_buy[$(shop_pages)].buy set value 0