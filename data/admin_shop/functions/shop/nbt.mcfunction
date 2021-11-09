########################################################################################
# If Currency Slot is Empty, NBT as {} #
########################################################################################
execute unless block ~ ~-1 ~ chest{Items:[{Slot:0b}]} run data modify entity @s HandItems[0].tag.adminps_inventory[0] set value {}
execute unless block ~ ~-1 ~ chest{Items:[{Slot:1b}]} run data modify entity @s HandItems[0].tag.adminps_inventory[1] set value {}
execute unless block ~ ~-1 ~ chest{Items:[{Slot:3b}]} run data modify entity @s HandItems[0].tag.adminps_inventory[2] set value {}
execute unless block ~ ~-1 ~ chest{Items:[{Slot:4b}]} run data modify entity @s HandItems[0].tag.adminps_inventory[3] set value {}
execute unless block ~ ~-1 ~ chest{Items:[{Slot:6b}]} run data modify entity @s HandItems[0].tag.adminps_inventory[4] set value {}
execute unless block ~ ~-1 ~ chest{Items:[{Slot:7b}]} run data modify entity @s HandItems[0].tag.adminps_inventory[5] set value {}
execute unless block ~ ~-1 ~ chest{Items:[{Slot:9b}]} run data modify entity @s HandItems[0].tag.adminps_inventory[6] set value {}
execute unless block ~ ~-1 ~ chest{Items:[{Slot:10b}]} run data modify entity @s HandItems[0].tag.adminps_inventory[7] set value {}
execute unless block ~ ~-1 ~ chest{Items:[{Slot:12b}]} run data modify entity @s HandItems[0].tag.adminps_inventory[8] set value {}
execute unless block ~ ~-1 ~ chest{Items:[{Slot:13b}]} run data modify entity @s HandItems[0].tag.adminps_inventory[9] set value {}
execute unless block ~ ~-1 ~ chest{Items:[{Slot:15b}]} run data modify entity @s HandItems[0].tag.adminps_inventory[10] set value {}
execute unless block ~ ~-1 ~ chest{Items:[{Slot:16b}]} run data modify entity @s HandItems[0].tag.adminps_inventory[11] set value {}
execute unless block ~ ~-1 ~ chest{Items:[{Slot:18b}]} run data modify entity @s HandItems[0].tag.adminps_inventory[12] set value {}
execute unless block ~ ~-1 ~ chest{Items:[{Slot:19b}]} run data modify entity @s HandItems[0].tag.adminps_inventory[13] set value {}
execute unless block ~ ~-1 ~ chest{Items:[{Slot:21b}]} run data modify entity @s HandItems[0].tag.adminps_inventory[14] set value {}
execute unless block ~ ~-1 ~ chest{Items:[{Slot:22b}]} run data modify entity @s HandItems[0].tag.adminps_inventory[15] set value {}
execute unless block ~ ~-1 ~ chest{Items:[{Slot:24b}]} run data modify entity @s HandItems[0].tag.adminps_inventory[16] set value {}
execute unless block ~ ~-1 ~ chest{Items:[{Slot:25b}]} run data modify entity @s HandItems[0].tag.adminps_inventory[17] set value {}


########################################################################################
# If Currency Slot has something in it product NBT data:
########################################################################################
execute if block ~ ~-1 ~ chest{Items:[{Slot:0b}]} run data modify entity @s HandItems[0].tag.adminps_inventory[0] merge from block ~ ~-1 ~ Items[{Slot:0b}]
execute if block ~ ~-1 ~ chest{Items:[{Slot:1b}]} run data modify entity @s HandItems[0].tag.adminps_inventory[1] merge from block ~ ~-1 ~ Items[{Slot:1b}]
execute if block ~ ~-1 ~ chest{Items:[{Slot:3b}]} run data modify entity @s HandItems[0].tag.adminps_inventory[2] merge from block ~ ~-1 ~ Items[{Slot:3b}]
execute if block ~ ~-1 ~ chest{Items:[{Slot:4b}]} run data modify entity @s HandItems[0].tag.adminps_inventory[3] merge from block ~ ~-1 ~ Items[{Slot:4b}]
execute if block ~ ~-1 ~ chest{Items:[{Slot:6b}]} run data modify entity @s HandItems[0].tag.adminps_inventory[4] merge from block ~ ~-1 ~ Items[{Slot:6b}]
execute if block ~ ~-1 ~ chest{Items:[{Slot:7b}]} run data modify entity @s HandItems[0].tag.adminps_inventory[5] merge from block ~ ~-1 ~ Items[{Slot:7b}]
execute if block ~ ~-1 ~ chest{Items:[{Slot:9b}]} run data modify entity @s HandItems[0].tag.adminps_inventory[6] merge from block ~ ~-1 ~ Items[{Slot:9b}]
execute if block ~ ~-1 ~ chest{Items:[{Slot:10b}]} run data modify entity @s HandItems[0].tag.adminps_inventory[7] merge from block ~ ~-1 ~ Items[{Slot:10b}]
execute if block ~ ~-1 ~ chest{Items:[{Slot:12b}]} run data modify entity @s HandItems[0].tag.adminps_inventory[8] merge from block ~ ~-1 ~ Items[{Slot:12b}]
execute if block ~ ~-1 ~ chest{Items:[{Slot:13b}]} run data modify entity @s HandItems[0].tag.adminps_inventory[9] merge from block ~ ~-1 ~ Items[{Slot:13b}]
execute if block ~ ~-1 ~ chest{Items:[{Slot:15b}]} run data modify entity @s HandItems[0].tag.adminps_inventory[10] merge from block ~ ~-1 ~ Items[{Slot:15b}]
execute if block ~ ~-1 ~ chest{Items:[{Slot:16b}]} run data modify entity @s HandItems[0].tag.adminps_inventory[11] merge from block ~ ~-1 ~ Items[{Slot:16b}]
execute if block ~ ~-1 ~ chest{Items:[{Slot:18b}]} run data modify entity @s HandItems[0].tag.adminps_inventory[12] merge from block ~ ~-1 ~ Items[{Slot:18b}]
execute if block ~ ~-1 ~ chest{Items:[{Slot:19b}]} run data modify entity @s HandItems[0].tag.adminps_inventory[13] merge from block ~ ~-1 ~ Items[{Slot:19b}]
execute if block ~ ~-1 ~ chest{Items:[{Slot:21b}]} run data modify entity @s HandItems[0].tag.adminps_inventory[14] merge from block ~ ~-1 ~ Items[{Slot:21b}]
execute if block ~ ~-1 ~ chest{Items:[{Slot:22b}]} run data modify entity @s HandItems[0].tag.adminps_inventory[15] merge from block ~ ~-1 ~ Items[{Slot:22b}]
execute if block ~ ~-1 ~ chest{Items:[{Slot:24b}]} run data modify entity @s HandItems[0].tag.adminps_inventory[16] merge from block ~ ~-1 ~ Items[{Slot:24b}]
execute if block ~ ~-1 ~ chest{Items:[{Slot:25b}]} run data modify entity @s HandItems[0].tag.adminps_inventory[17] merge from block ~ ~-1 ~ Items[{Slot:25b}]