###########################################################################################
# Marker, "Player's" Shop, If there's inventory [in Stock]:
###########################################################################################
execute if data block ~ ~ ~ Items[{Slot:9b}] run data modify entity @s data.ps_sell[0] merge from block ~ ~ ~ Items[{Slot:9b}]
execute if data block ~ ~ ~ Items[{Slot:10b}] run data modify entity @s data.ps_sell[1] merge from block ~ ~ ~ Items[{Slot:10b}]
execute if data block ~ ~ ~ Items[{Slot:11b}] run data modify entity @s data.ps_sell[2] merge from block ~ ~ ~ Items[{Slot:11b}]
execute if data block ~ ~ ~ Items[{Slot:12b}] run data modify entity @s data.ps_sell[3] merge from block ~ ~ ~ Items[{Slot:12b}]
execute if data block ~ ~ ~ Items[{Slot:13b}] run data modify entity @s data.ps_sell[4] merge from block ~ ~ ~ Items[{Slot:13b}]
execute if data block ~ ~ ~ Items[{Slot:14b}] run data modify entity @s data.ps_sell[5] merge from block ~ ~ ~ Items[{Slot:14b}]
execute if data block ~ ~ ~ Items[{Slot:15b}] run data modify entity @s data.ps_sell[6] merge from block ~ ~ ~ Items[{Slot:15b}]
execute if data block ~ ~ ~ Items[{Slot:16b}] run data modify entity @s data.ps_sell[7] merge from block ~ ~ ~ Items[{Slot:16b}]
execute if data block ~ ~ ~ Items[{Slot:17b}] run data modify entity @s data.ps_sell[8] merge from block ~ ~ ~ Items[{Slot:17b}]


###########################################################################################
# Marker, "Player's" Shop, if there's NO, inventory [Empty]:
###########################################################################################
execute unless data block ~ ~ ~ Items[{Slot:9b}] run data modify entity @s data.ps_sell[0] set value {}
execute unless data block ~ ~ ~ Items[{Slot:10b}] run data modify entity @s data.ps_sell[1] set value {}
execute unless data block ~ ~ ~ Items[{Slot:11b}] run data modify entity @s data.ps_sell[2] set value {}
execute unless data block ~ ~ ~ Items[{Slot:12b}] run data modify entity @s data.ps_sell[3] set value {}
execute unless data block ~ ~ ~ Items[{Slot:13b}] run data modify entity @s data.ps_sell[4] set value {}
execute unless data block ~ ~ ~ Items[{Slot:14b}] run data modify entity @s data.ps_sell[5] set value {}
execute unless data block ~ ~ ~ Items[{Slot:15b}] run data modify entity @s data.ps_sell[6] set value {}
execute unless data block ~ ~ ~ Items[{Slot:16b}] run data modify entity @s data.ps_sell[7] set value {}
execute unless data block ~ ~ ~ Items[{Slot:17b}] run data modify entity @s data.ps_sell[8] set value {}