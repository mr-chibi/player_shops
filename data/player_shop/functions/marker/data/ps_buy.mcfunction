###########################################################################################
# Marker, "Player's" Shop, If there's inventory [in Stock]:
###########################################################################################
execute if data block ~ ~ ~ Items[{Slot:0b}] run data modify entity @s data.ps_buy[0] merge from block ~ ~ ~ Items[{Slot:0b}]
execute if data block ~ ~ ~ Items[{Slot:1b}] run data modify entity @s data.ps_buy[1] merge from block ~ ~ ~ Items[{Slot:1b}]
execute if data block ~ ~ ~ Items[{Slot:2b}] run data modify entity @s data.ps_buy[2] merge from block ~ ~ ~ Items[{Slot:2b}]
execute if data block ~ ~ ~ Items[{Slot:3b}] run data modify entity @s data.ps_buy[3] merge from block ~ ~ ~ Items[{Slot:3b}]
execute if data block ~ ~ ~ Items[{Slot:4b}] run data modify entity @s data.ps_buy[4] merge from block ~ ~ ~ Items[{Slot:4b}]
execute if data block ~ ~ ~ Items[{Slot:5b}] run data modify entity @s data.ps_buy[5] merge from block ~ ~ ~ Items[{Slot:5b}]
execute if data block ~ ~ ~ Items[{Slot:6b}] run data modify entity @s data.ps_buy[6] merge from block ~ ~ ~ Items[{Slot:6b}]
execute if data block ~ ~ ~ Items[{Slot:7b}] run data modify entity @s data.ps_buy[7] merge from block ~ ~ ~ Items[{Slot:7b}]
execute if data block ~ ~ ~ Items[{Slot:8b}] run data modify entity @s data.ps_buy[8] merge from block ~ ~ ~ Items[{Slot:8b}]


###########################################################################################
# Marker, "Player's" Shop, if there's NO, inventory [Empty]:
###########################################################################################
execute unless data block ~ ~ ~ Items[{Slot:0b}] run data modify entity @s data.ps_buy[0] set value {}
execute unless data block ~ ~ ~ Items[{Slot:1b}] run data modify entity @s data.ps_buy[1] set value {}
execute unless data block ~ ~ ~ Items[{Slot:2b}] run data modify entity @s data.ps_buy[2] set value {}
execute unless data block ~ ~ ~ Items[{Slot:3b}] run data modify entity @s data.ps_buy[3] set value {}
execute unless data block ~ ~ ~ Items[{Slot:4b}] run data modify entity @s data.ps_buy[4] set value {}
execute unless data block ~ ~ ~ Items[{Slot:5b}] run data modify entity @s data.ps_buy[5] set value {}
execute unless data block ~ ~ ~ Items[{Slot:6b}] run data modify entity @s data.ps_buy[6] set value {}
execute unless data block ~ ~ ~ Items[{Slot:7b}] run data modify entity @s data.ps_buy[7] set value {}
execute unless data block ~ ~ ~ Items[{Slot:8b}] run data modify entity @s data.ps_buy[8] set value {}