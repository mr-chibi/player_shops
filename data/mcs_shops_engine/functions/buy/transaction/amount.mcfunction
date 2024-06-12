# Fetch Player's Inventory [Wallet Amount]:
$execute if data entity @p Inventory[{id:"$(id)"}] store result score @p mcs_wallet run clear @p $(id) 0

# Fetch [Buy Slot]:
execute if score @p mcs_pages matches 0 run scoreboard players operation @p mcs_total = @s mcs_buy_slot_0
execute if score @p mcs_pages matches 1 run scoreboard players operation @p mcs_total = @s mcs_buy_slot_1
execute if score @p mcs_pages matches 2 run scoreboard players operation @p mcs_total = @s mcs_buy_slot_2
execute if score @p mcs_pages matches 3 run scoreboard players operation @p mcs_total = @s mcs_buy_slot_3
execute if score @p mcs_pages matches 4 run scoreboard players operation @p mcs_total = @s mcs_buy_slot_4
execute if score @p mcs_pages matches 5 run scoreboard players operation @p mcs_total = @s mcs_buy_slot_5
execute if score @p mcs_pages matches 6 run scoreboard players operation @p mcs_total = @s mcs_buy_slot_6
execute if score @p mcs_pages matches 7 run scoreboard players operation @p mcs_total = @s mcs_buy_slot_7
execute if score @p mcs_pages matches 8 run scoreboard players operation @p mcs_total = @s mcs_buy_slot_8

# Fetch [Buy Slot]: (Buy Item * Player Amount)
scoreboard players operation @p mcs_total *= @p mcs_buy