########################################################################################
# If Currency Slot is Empty, NBT as {} #
########################################################################################
execute unless block ~ ~-1 ~ chest{Items:[{Slot:0b}]} run data modify entity @s HandItems[0].tag.ps_inventory[0] set value {}
execute unless block ~ ~-1 ~ chest{Items:[{Slot:3b}]} run data modify entity @s HandItems[0].tag.ps_inventory[1] set value {}
execute unless block ~ ~-1 ~ chest{Items:[{Slot:6b}]} run data modify entity @s HandItems[0].tag.ps_inventory[2] set value {}


########################################################################################
# If Currency Slot has something in it product NBT data:
########################################################################################
execute if block ~ ~-1 ~ chest{Items:[{Slot:0b}]} run data modify entity @s HandItems[0].tag.ps_inventory[0] merge from block ~ ~-1 ~ Items[{Slot:0b}]
execute if block ~ ~-1 ~ chest{Items:[{Slot:0b}]} run data remove entity @s HandItems[0].tag.ps_inventory[0].Slot

execute if block ~ ~-1 ~ chest{Items:[{Slot:3b}]} run data modify entity @s HandItems[0].tag.ps_inventory[1] merge from block ~ ~-1 ~ Items[{Slot:3b}]
execute if block ~ ~-1 ~ chest{Items:[{Slot:3b}]} run data remove entity @s HandItems[0].tag.ps_inventory[1].Slot

execute if block ~ ~-1 ~ chest{Items:[{Slot:6b}]} run data modify entity @s HandItems[0].tag.ps_inventory[2] merge from block ~ ~-1 ~ Items[{Slot:6b}]
execute if block ~ ~-1 ~ chest{Items:[{Slot:6b}]} run data remove entity @s HandItems[0].tag.ps_inventory[2].Slot