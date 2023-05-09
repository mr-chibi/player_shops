###########################################################################################
# Marker, "Player's" Shop, check if [buy slot] NOT empty, then check if [Recieved] is EMPTY then, [Reset Data]:
###########################################################################################
execute if data block ~ ~ ~ Items[{Slot:0b}] unless data block ~ ~ ~ Items[{Slot:18b}] run data modify entity @s data.ps_recieved[0] set value {Slot:18b, id:"minecraft:air", Count:1b}
execute if data block ~ ~ ~ Items[{Slot:1b}] unless data block ~ ~ ~ Items[{Slot:19b}] run data modify entity @s data.ps_recieved[1] set value {Slot:19b, id:"minecraft:air", Count:1b}
execute if data block ~ ~ ~ Items[{Slot:2b}] unless data block ~ ~ ~ Items[{Slot:20b}] run data modify entity @s data.ps_recieved[2] set value {Slot:20b, id:"minecraft:air", Count:1b}
execute if data block ~ ~ ~ Items[{Slot:3b}] unless data block ~ ~ ~ Items[{Slot:21b}] run data modify entity @s data.ps_recieved[3] set value {Slot:21b, id:"minecraft:air", Count:1b}
execute if data block ~ ~ ~ Items[{Slot:4b}] unless data block ~ ~ ~ Items[{Slot:22b}] run data modify entity @s data.ps_recieved[4] set value {Slot:22b, id:"minecraft:air", Count:1b}
execute if data block ~ ~ ~ Items[{Slot:5b}] unless data block ~ ~ ~ Items[{Slot:23b}] run data modify entity @s data.ps_recieved[5] set value {Slot:23b, id:"minecraft:air", Count:1b}
execute if data block ~ ~ ~ Items[{Slot:6b}] unless data block ~ ~ ~ Items[{Slot:24b}] run data modify entity @s data.ps_recieved[6] set value {Slot:24b, id:"minecraft:air", Count:1b}
execute if data block ~ ~ ~ Items[{Slot:7b}] unless data block ~ ~ ~ Items[{Slot:25b}] run data modify entity @s data.ps_recieved[7] set value {Slot:25b, id:"minecraft:air", Count:1b}
execute if data block ~ ~ ~ Items[{Slot:8b}] unless data block ~ ~ ~ Items[{Slot:26b}] run data modify entity @s data.ps_recieved[8] set value {Slot:26b, id:"minecraft:air", Count:1b}


###########################################################################################
# Marker, "Player's" Shop, check if [buy slot] NOT empty, then check if [Recieved] is EMPTY then, [Reset Data]:
###########################################################################################
execute if data block ~ ~ ~ Items[{Slot:0b}] unless data block ~ ~ ~ Items[{Slot:18b}] run scoreboard players set @s ps_payment_1 0
execute if data block ~ ~ ~ Items[{Slot:1b}] unless data block ~ ~ ~ Items[{Slot:19b}] run scoreboard players set @s ps_payment_2 0
execute if data block ~ ~ ~ Items[{Slot:2b}] unless data block ~ ~ ~ Items[{Slot:20b}] run scoreboard players set @s ps_payment_3 0
execute if data block ~ ~ ~ Items[{Slot:3b}] unless data block ~ ~ ~ Items[{Slot:21b}] run scoreboard players set @s ps_payment_4 0
execute if data block ~ ~ ~ Items[{Slot:4b}] unless data block ~ ~ ~ Items[{Slot:22b}] run scoreboard players set @s ps_payment_5 0
execute if data block ~ ~ ~ Items[{Slot:5b}] unless data block ~ ~ ~ Items[{Slot:23b}] run scoreboard players set @s ps_payment_6 0
execute if data block ~ ~ ~ Items[{Slot:6b}] unless data block ~ ~ ~ Items[{Slot:24b}] run scoreboard players set @s ps_payment_7 0
execute if data block ~ ~ ~ Items[{Slot:7b}] unless data block ~ ~ ~ Items[{Slot:25b}] run scoreboard players set @s ps_payment_8 0
execute if data block ~ ~ ~ Items[{Slot:8b}] unless data block ~ ~ ~ Items[{Slot:26b}] run scoreboard players set @s ps_payment_9 0


###########################################################################################
# Marker, "Player's" Shop, check if [buy slot] & [Recieved] is EMPTY then, [Reset Data]:
###########################################################################################
execute unless data block ~ ~ ~ Items[{Slot:0b}] unless data block ~ ~ ~ Items[{Slot:18b}] run data modify entity @s data.ps_recieved[0] set value {Slot:18b, id:"minecraft:air", Count:1b}
execute unless data block ~ ~ ~ Items[{Slot:1b}] unless data block ~ ~ ~ Items[{Slot:19b}] run data modify entity @s data.ps_recieved[1] set value {Slot:19b, id:"minecraft:air", Count:1b}
execute unless data block ~ ~ ~ Items[{Slot:2b}] unless data block ~ ~ ~ Items[{Slot:20b}] run data modify entity @s data.ps_recieved[2] set value {Slot:20b, id:"minecraft:air", Count:1b}
execute unless data block ~ ~ ~ Items[{Slot:3b}] unless data block ~ ~ ~ Items[{Slot:21b}] run data modify entity @s data.ps_recieved[3] set value {Slot:21b, id:"minecraft:air", Count:1b}
execute unless data block ~ ~ ~ Items[{Slot:4b}] unless data block ~ ~ ~ Items[{Slot:22b}] run data modify entity @s data.ps_recieved[4] set value {Slot:22b, id:"minecraft:air", Count:1b}
execute unless data block ~ ~ ~ Items[{Slot:5b}] unless data block ~ ~ ~ Items[{Slot:23b}] run data modify entity @s data.ps_recieved[5] set value {Slot:23b, id:"minecraft:air", Count:1b}
execute unless data block ~ ~ ~ Items[{Slot:6b}] unless data block ~ ~ ~ Items[{Slot:24b}] run data modify entity @s data.ps_recieved[6] set value {Slot:24b, id:"minecraft:air", Count:1b}
execute unless data block ~ ~ ~ Items[{Slot:7b}] unless data block ~ ~ ~ Items[{Slot:25b}] run data modify entity @s data.ps_recieved[7] set value {Slot:25b, id:"minecraft:air", Count:1b}
execute unless data block ~ ~ ~ Items[{Slot:8b}] unless data block ~ ~ ~ Items[{Slot:26b}] run data modify entity @s data.ps_recieved[8] set value {Slot:26b, id:"minecraft:air", Count:1b}