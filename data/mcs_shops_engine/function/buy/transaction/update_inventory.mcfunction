#
execute if score @p mcs_pages matches 0 run scoreboard players operation @s mcs_sell_slot_0 -= @p mcs_total
execute if score @p mcs_pages matches 1 run scoreboard players operation @s mcs_sell_slot_1 -= @p mcs_total
execute if score @p mcs_pages matches 2 run scoreboard players operation @s mcs_sell_slot_2 -= @p mcs_total
execute if score @p mcs_pages matches 3 run scoreboard players operation @s mcs_sell_slot_3 -= @p mcs_total
execute if score @p mcs_pages matches 4 run scoreboard players operation @s mcs_sell_slot_4 -= @p mcs_total
execute if score @p mcs_pages matches 5 run scoreboard players operation @s mcs_sell_slot_5 -= @p mcs_total
execute if score @p mcs_pages matches 6 run scoreboard players operation @s mcs_sell_slot_6 -= @p mcs_total
execute if score @p mcs_pages matches 7 run scoreboard players operation @s mcs_sell_slot_7 -= @p mcs_total
execute if score @p mcs_pages matches 8 run scoreboard players operation @s mcs_sell_slot_8 -= @p mcs_total

#
execute if score @p mcs_pages matches 0 store result block ~ ~ ~ Items[{Slot:0b}].count int 1 run scoreboard players get @s mcs_sell_slot_0
execute if score @p mcs_pages matches 1 store result block ~ ~ ~ Items[{Slot:1b}].count int 1 run scoreboard players get @s mcs_sell_slot_1
execute if score @p mcs_pages matches 2 store result block ~ ~ ~ Items[{Slot:2b}].count int 1 run scoreboard players get @s mcs_sell_slot_2
execute if score @p mcs_pages matches 3 store result block ~ ~ ~ Items[{Slot:3b}].count int 1 run scoreboard players get @s mcs_sell_slot_3
execute if score @p mcs_pages matches 4 store result block ~ ~ ~ Items[{Slot:4b}].count int 1 run scoreboard players get @s mcs_sell_slot_4
execute if score @p mcs_pages matches 5 store result block ~ ~ ~ Items[{Slot:5b}].count int 1 run scoreboard players get @s mcs_sell_slot_5
execute if score @p mcs_pages matches 6 store result block ~ ~ ~ Items[{Slot:6b}].count int 1 run scoreboard players get @s mcs_sell_slot_6
execute if score @p mcs_pages matches 7 store result block ~ ~ ~ Items[{Slot:7b}].count int 1 run scoreboard players get @s mcs_sell_slot_7
execute if score @p mcs_pages matches 8 store result block ~ ~ ~ Items[{Slot:8b}].count int 1 run scoreboard players get @s mcs_sell_slot_8