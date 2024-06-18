# Inventory Detect If [Slot] is "Empty" then, [Empty Data]:
execute unless block ~ ~ ~ chest{Items:[{Slot:0b}]} run data modify entity @s data.shop_sell[0].Items set value {}
execute unless block ~ ~ ~ chest{Items:[{Slot:1b}]} run data modify entity @s data.shop_sell[1].Items set value {}
execute unless block ~ ~ ~ chest{Items:[{Slot:2b}]} run data modify entity @s data.shop_sell[2].Items set value {}
execute unless block ~ ~ ~ chest{Items:[{Slot:3b}]} run data modify entity @s data.shop_sell[3].Items set value {}
execute unless block ~ ~ ~ chest{Items:[{Slot:4b}]} run data modify entity @s data.shop_sell[4].Items set value {}
execute unless block ~ ~ ~ chest{Items:[{Slot:5b}]} run data modify entity @s data.shop_sell[5].Items set value {}
execute unless block ~ ~ ~ chest{Items:[{Slot:6b}]} run data modify entity @s data.shop_sell[6].Items set value {}
execute unless block ~ ~ ~ chest{Items:[{Slot:7b}]} run data modify entity @s data.shop_sell[7].Items set value {}
execute unless block ~ ~ ~ chest{Items:[{Slot:8b}]} run data modify entity @s data.shop_sell[8].Items set value {}

# Insert Data [Id/count/Slots]:
execute if block ~ ~ ~ chest{Items:[{Slot:0b}]} run data modify entity @s data.shop_sell[0].count set from block ~ ~ ~ Items[{Slot:0b}].count
execute if block ~ ~ ~ chest{Items:[{Slot:1b}]} run data modify entity @s data.shop_sell[1].count set from block ~ ~ ~ Items[{Slot:1b}].count
execute if block ~ ~ ~ chest{Items:[{Slot:2b}]} run data modify entity @s data.shop_sell[2].count set from block ~ ~ ~ Items[{Slot:2b}].count
execute if block ~ ~ ~ chest{Items:[{Slot:3b}]} run data modify entity @s data.shop_sell[3].count set from block ~ ~ ~ Items[{Slot:3b}].count
execute if block ~ ~ ~ chest{Items:[{Slot:4b}]} run data modify entity @s data.shop_sell[4].count set from block ~ ~ ~ Items[{Slot:4b}].count
execute if block ~ ~ ~ chest{Items:[{Slot:5b}]} run data modify entity @s data.shop_sell[5].count set from block ~ ~ ~ Items[{Slot:5b}].count
execute if block ~ ~ ~ chest{Items:[{Slot:6b}]} run data modify entity @s data.shop_sell[6].count set from block ~ ~ ~ Items[{Slot:6b}].count
execute if block ~ ~ ~ chest{Items:[{Slot:7b}]} run data modify entity @s data.shop_sell[7].count set from block ~ ~ ~ Items[{Slot:7b}].count
execute if block ~ ~ ~ chest{Items:[{Slot:8b}]} run data modify entity @s data.shop_sell[8].count set from block ~ ~ ~ Items[{Slot:8b}].count

#
execute if block ~ ~ ~ chest{Items:[{Slot:0b}]} run data modify entity @s data.shop_sell[0].Slot set from block ~ ~ ~ Items[{Slot:0b}].Slot
execute if block ~ ~ ~ chest{Items:[{Slot:1b}]} run data modify entity @s data.shop_sell[1].Slot set from block ~ ~ ~ Items[{Slot:1b}].Slot
execute if block ~ ~ ~ chest{Items:[{Slot:2b}]} run data modify entity @s data.shop_sell[2].Slot set from block ~ ~ ~ Items[{Slot:2b}].Slot
execute if block ~ ~ ~ chest{Items:[{Slot:3b}]} run data modify entity @s data.shop_sell[3].Slot set from block ~ ~ ~ Items[{Slot:3b}].Slot
execute if block ~ ~ ~ chest{Items:[{Slot:4b}]} run data modify entity @s data.shop_sell[4].Slot set from block ~ ~ ~ Items[{Slot:4b}].Slot
execute if block ~ ~ ~ chest{Items:[{Slot:5b}]} run data modify entity @s data.shop_sell[5].Slot set from block ~ ~ ~ Items[{Slot:5b}].Slot
execute if block ~ ~ ~ chest{Items:[{Slot:6b}]} run data modify entity @s data.shop_sell[6].Slot set from block ~ ~ ~ Items[{Slot:6b}].Slot
execute if block ~ ~ ~ chest{Items:[{Slot:7b}]} run data modify entity @s data.shop_sell[7].Slot set from block ~ ~ ~ Items[{Slot:7b}].Slot
execute if block ~ ~ ~ chest{Items:[{Slot:8b}]} run data modify entity @s data.shop_sell[8].Slot set from block ~ ~ ~ Items[{Slot:8b}].Slot

#
execute if block ~ ~ ~ chest{Items:[{Slot:0b}]} run data modify entity @s data.shop_sell[0].id set from block ~ ~ ~ Items[{Slot:0b}].id
execute if block ~ ~ ~ chest{Items:[{Slot:1b}]} run data modify entity @s data.shop_sell[1].id set from block ~ ~ ~ Items[{Slot:1b}].id
execute if block ~ ~ ~ chest{Items:[{Slot:2b}]} run data modify entity @s data.shop_sell[2].id set from block ~ ~ ~ Items[{Slot:2b}].id
execute if block ~ ~ ~ chest{Items:[{Slot:3b}]} run data modify entity @s data.shop_sell[3].id set from block ~ ~ ~ Items[{Slot:3b}].id
execute if block ~ ~ ~ chest{Items:[{Slot:4b}]} run data modify entity @s data.shop_sell[4].id set from block ~ ~ ~ Items[{Slot:4b}].id
execute if block ~ ~ ~ chest{Items:[{Slot:5b}]} run data modify entity @s data.shop_sell[5].id set from block ~ ~ ~ Items[{Slot:5b}].id
execute if block ~ ~ ~ chest{Items:[{Slot:6b}]} run data modify entity @s data.shop_sell[6].id set from block ~ ~ ~ Items[{Slot:6b}].id
execute if block ~ ~ ~ chest{Items:[{Slot:7b}]} run data modify entity @s data.shop_sell[7].id set from block ~ ~ ~ Items[{Slot:7b}].id
execute if block ~ ~ ~ chest{Items:[{Slot:8b}]} run data modify entity @s data.shop_sell[8].id set from block ~ ~ ~ Items[{Slot:8b}].id
