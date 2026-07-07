#
execute if block ~ ~ ~ chest{Items:[{Slot:0b}]} store result score @s mcs_slot_0 run data get block ~ ~ ~ Items[{Slot:0b}].count
execute if block ~ ~ ~ chest{Items:[{Slot:1b}]} store result score @s mcs_slot_1 run data get block ~ ~ ~ Items[{Slot:1b}].count
execute if block ~ ~ ~ chest{Items:[{Slot:2b}]} store result score @s mcs_slot_2 run data get block ~ ~ ~ Items[{Slot:2b}].count
execute if block ~ ~ ~ chest{Items:[{Slot:3b}]} store result score @s mcs_slot_3 run data get block ~ ~ ~ Items[{Slot:3b}].count
execute if block ~ ~ ~ chest{Items:[{Slot:4b}]} store result score @s mcs_slot_4 run data get block ~ ~ ~ Items[{Slot:4b}].count
execute if block ~ ~ ~ chest{Items:[{Slot:5b}]} store result score @s mcs_slot_5 run data get block ~ ~ ~ Items[{Slot:5b}].count
execute if block ~ ~ ~ chest{Items:[{Slot:6b}]} store result score @s mcs_slot_6 run data get block ~ ~ ~ Items[{Slot:6b}].count
execute if block ~ ~ ~ chest{Items:[{Slot:7b}]} store result score @s mcs_slot_7 run data get block ~ ~ ~ Items[{Slot:7b}].count
execute if block ~ ~ ~ chest{Items:[{Slot:8b}]} store result score @s mcs_slot_8 run data get block ~ ~ ~ Items[{Slot:8b}].count

#
execute if block ~ ~ ~ chest{Items:[{Slot:0b}]} run data modify entity @s data.sell[0].Count set from block ~ ~ ~ Items[{Slot:0b}].count
execute if block ~ ~ ~ chest{Items:[{Slot:1b}]} run data modify entity @s data.sell[1].Count set from block ~ ~ ~ Items[{Slot:1b}].count
execute if block ~ ~ ~ chest{Items:[{Slot:2b}]} run data modify entity @s data.sell[2].Count set from block ~ ~ ~ Items[{Slot:2b}].count
execute if block ~ ~ ~ chest{Items:[{Slot:3b}]} run data modify entity @s data.sell[3].Count set from block ~ ~ ~ Items[{Slot:3b}].count
execute if block ~ ~ ~ chest{Items:[{Slot:4b}]} run data modify entity @s data.sell[4].Count set from block ~ ~ ~ Items[{Slot:4b}].count
execute if block ~ ~ ~ chest{Items:[{Slot:5b}]} run data modify entity @s data.sell[5].Count set from block ~ ~ ~ Items[{Slot:5b}].count
execute if block ~ ~ ~ chest{Items:[{Slot:6b}]} run data modify entity @s data.sell[6].Count set from block ~ ~ ~ Items[{Slot:6b}].count
execute if block ~ ~ ~ chest{Items:[{Slot:7b}]} run data modify entity @s data.sell[7].Count set from block ~ ~ ~ Items[{Slot:7b}].count
execute if block ~ ~ ~ chest{Items:[{Slot:8b}]} run data modify entity @s data.sell[8].Count set from block ~ ~ ~ Items[{Slot:8b}].count

#
execute if block ~ ~ ~ chest{Items:[{Slot:0b}]} run data modify entity @s data.sell[0].id set from block ~ ~ ~ Items[{Slot:0b}].id
execute if block ~ ~ ~ chest{Items:[{Slot:1b}]} run data modify entity @s data.sell[1].id set from block ~ ~ ~ Items[{Slot:1b}].id
execute if block ~ ~ ~ chest{Items:[{Slot:2b}]} run data modify entity @s data.sell[2].id set from block ~ ~ ~ Items[{Slot:2b}].id
execute if block ~ ~ ~ chest{Items:[{Slot:3b}]} run data modify entity @s data.sell[3].id set from block ~ ~ ~ Items[{Slot:3b}].id
execute if block ~ ~ ~ chest{Items:[{Slot:4b}]} run data modify entity @s data.sell[4].id set from block ~ ~ ~ Items[{Slot:4b}].id
execute if block ~ ~ ~ chest{Items:[{Slot:5b}]} run data modify entity @s data.sell[5].id set from block ~ ~ ~ Items[{Slot:5b}].id
execute if block ~ ~ ~ chest{Items:[{Slot:6b}]} run data modify entity @s data.sell[6].id set from block ~ ~ ~ Items[{Slot:6b}].id
execute if block ~ ~ ~ chest{Items:[{Slot:7b}]} run data modify entity @s data.sell[7].id set from block ~ ~ ~ Items[{Slot:7b}].id
execute if block ~ ~ ~ chest{Items:[{Slot:8b}]} run data modify entity @s data.sell[8].id set from block ~ ~ ~ Items[{Slot:8b}].id

#
execute if block ~ ~ ~ chest{Items:[{Slot:0b}]} run data modify entity @s data.sell[0].components set from block ~ ~ ~ Items[{Slot:0b}].components
execute if block ~ ~ ~ chest{Items:[{Slot:1b}]} run data modify entity @s data.sell[1].components set from block ~ ~ ~ Items[{Slot:1b}].components
execute if block ~ ~ ~ chest{Items:[{Slot:2b}]} run data modify entity @s data.sell[2].components set from block ~ ~ ~ Items[{Slot:2b}].components
execute if block ~ ~ ~ chest{Items:[{Slot:3b}]} run data modify entity @s data.sell[3].components set from block ~ ~ ~ Items[{Slot:3b}].components
execute if block ~ ~ ~ chest{Items:[{Slot:4b}]} run data modify entity @s data.sell[4].components set from block ~ ~ ~ Items[{Slot:4b}].components
execute if block ~ ~ ~ chest{Items:[{Slot:5b}]} run data modify entity @s data.sell[5].components set from block ~ ~ ~ Items[{Slot:5b}].components
execute if block ~ ~ ~ chest{Items:[{Slot:6b}]} run data modify entity @s data.sell[6].components set from block ~ ~ ~ Items[{Slot:6b}].components
execute if block ~ ~ ~ chest{Items:[{Slot:7b}]} run data modify entity @s data.sell[7].components set from block ~ ~ ~ Items[{Slot:7b}].components
execute if block ~ ~ ~ chest{Items:[{Slot:8b}]} run data modify entity @s data.sell[8].components set from block ~ ~ ~ Items[{Slot:8b}].components

#
execute if block ~ ~ ~ chest{Items:[{Slot:0b}]} store result block ~ ~ ~ Items[{Slot:0b}].count int 1 run scoreboard players get @s mcs_slot_0
execute if block ~ ~ ~ chest{Items:[{Slot:1b}]} store result block ~ ~ ~ Items[{Slot:1b}].count int 1 run scoreboard players get @s mcs_slot_1
execute if block ~ ~ ~ chest{Items:[{Slot:2b}]} store result block ~ ~ ~ Items[{Slot:2b}].count int 1 run scoreboard players get @s mcs_slot_2
execute if block ~ ~ ~ chest{Items:[{Slot:3b}]} store result block ~ ~ ~ Items[{Slot:3b}].count int 1 run scoreboard players get @s mcs_slot_3
execute if block ~ ~ ~ chest{Items:[{Slot:4b}]} store result block ~ ~ ~ Items[{Slot:4b}].count int 1 run scoreboard players get @s mcs_slot_4
execute if block ~ ~ ~ chest{Items:[{Slot:5b}]} store result block ~ ~ ~ Items[{Slot:5b}].count int 1 run scoreboard players get @s mcs_slot_5
execute if block ~ ~ ~ chest{Items:[{Slot:6b}]} store result block ~ ~ ~ Items[{Slot:6b}].count int 1 run scoreboard players get @s mcs_slot_6
execute if block ~ ~ ~ chest{Items:[{Slot:7b}]} store result block ~ ~ ~ Items[{Slot:7b}].count int 1 run scoreboard players get @s mcs_slot_7
execute if block ~ ~ ~ chest{Items:[{Slot:8b}]} store result block ~ ~ ~ Items[{Slot:8b}].count int 1 run scoreboard players get @s mcs_slot_8