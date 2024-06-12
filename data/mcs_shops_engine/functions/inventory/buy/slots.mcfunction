# Inventory Detect If [Slot] is "Empty" then, [Empty Data]:
execute unless block ~ ~ ~ chest{Items:[{Slot:9b}]} run data modify entity @s data.shop_buy[0].Items set value {}
execute unless block ~ ~ ~ chest{Items:[{Slot:10b}]} run data modify entity @s data.shop_buy[1].Items set value {}
execute unless block ~ ~ ~ chest{Items:[{Slot:11b}]} run data modify entity @s data.shop_buy[2].Items set value {}
execute unless block ~ ~ ~ chest{Items:[{Slot:12b}]} run data modify entity @s data.shop_buy[3].Items set value {}
execute unless block ~ ~ ~ chest{Items:[{Slot:13b}]} run data modify entity @s data.shop_buy[4].Items set value {}
execute unless block ~ ~ ~ chest{Items:[{Slot:14b}]} run data modify entity @s data.shop_buy[5].Items set value {}
execute unless block ~ ~ ~ chest{Items:[{Slot:15b}]} run data modify entity @s data.shop_buy[6].Items set value {}
execute unless block ~ ~ ~ chest{Items:[{Slot:16b}]} run data modify entity @s data.shop_buy[7].Items set value {}
execute unless block ~ ~ ~ chest{Items:[{Slot:17b}]} run data modify entity @s data.shop_buy[8].Items set value {}

# Insert Data [Id/Counts/Slots/Components]:
execute if block ~ ~ ~ chest{Items:[{Slot:9b}]} run data modify entity @s data.shop_buy[0].components set from block ~ ~ ~ Items[{Slot:9b}].components
execute if block ~ ~ ~ chest{Items:[{Slot:10b}]} run data modify entity @s data.shop_buy[1].components set from block ~ ~ ~ Items[{Slot:10b}].components
execute if block ~ ~ ~ chest{Items:[{Slot:11b}]} run data modify entity @s data.shop_buy[2].components set from block ~ ~ ~ Items[{Slot:11b}].components
execute if block ~ ~ ~ chest{Items:[{Slot:12b}]} run data modify entity @s data.shop_buy[3].components set from block ~ ~ ~ Items[{Slot:12b}].components
execute if block ~ ~ ~ chest{Items:[{Slot:13b}]} run data modify entity @s data.shop_buy[4].components set from block ~ ~ ~ Items[{Slot:13b}].components
execute if block ~ ~ ~ chest{Items:[{Slot:14b}]} run data modify entity @s data.shop_buy[5].components set from block ~ ~ ~ Items[{Slot:14b}].components
execute if block ~ ~ ~ chest{Items:[{Slot:15b}]} run data modify entity @s data.shop_buy[6].components set from block ~ ~ ~ Items[{Slot:15b}].components
execute if block ~ ~ ~ chest{Items:[{Slot:16b}]} run data modify entity @s data.shop_buy[7].components set from block ~ ~ ~ Items[{Slot:16b}].components
execute if block ~ ~ ~ chest{Items:[{Slot:17b}]} run data modify entity @s data.shop_buy[8].components set from block ~ ~ ~ Items[{Slot:17b}].components

#
execute if block ~ ~ ~ chest{Items:[{Slot:9b}]} run data modify entity @s data.shop_buy[0].count set from block ~ ~ ~ Items[{Slot:9b}].count
execute if block ~ ~ ~ chest{Items:[{Slot:10b}]} run data modify entity @s data.shop_buy[1].count set from block ~ ~ ~ Items[{Slot:10b}].count
execute if block ~ ~ ~ chest{Items:[{Slot:11b}]} run data modify entity @s data.shop_buy[2].count set from block ~ ~ ~ Items[{Slot:11b}].count
execute if block ~ ~ ~ chest{Items:[{Slot:12b}]} run data modify entity @s data.shop_buy[3].count set from block ~ ~ ~ Items[{Slot:12b}].count
execute if block ~ ~ ~ chest{Items:[{Slot:13b}]} run data modify entity @s data.shop_buy[4].count set from block ~ ~ ~ Items[{Slot:13b}].count
execute if block ~ ~ ~ chest{Items:[{Slot:14b}]} run data modify entity @s data.shop_buy[5].count set from block ~ ~ ~ Items[{Slot:14b}].count
execute if block ~ ~ ~ chest{Items:[{Slot:15b}]} run data modify entity @s data.shop_buy[6].count set from block ~ ~ ~ Items[{Slot:15b}].count
execute if block ~ ~ ~ chest{Items:[{Slot:16b}]} run data modify entity @s data.shop_buy[7].count set from block ~ ~ ~ Items[{Slot:16b}].count
execute if block ~ ~ ~ chest{Items:[{Slot:17b}]} run data modify entity @s data.shop_buy[8].count set from block ~ ~ ~ Items[{Slot:17b}].count

#
execute if block ~ ~ ~ chest{Items:[{Slot:9b}]} run data modify entity @s data.shop_buy[0].Slot set from block ~ ~ ~ Items[{Slot:9b}].Slot
execute if block ~ ~ ~ chest{Items:[{Slot:10b}]} run data modify entity @s data.shop_buy[1].Slot set from block ~ ~ ~ Items[{Slot:10b}].Slot
execute if block ~ ~ ~ chest{Items:[{Slot:11b}]} run data modify entity @s data.shop_buy[2].Slot set from block ~ ~ ~ Items[{Slot:11b}].Slot
execute if block ~ ~ ~ chest{Items:[{Slot:12b}]} run data modify entity @s data.shop_buy[3].Slot set from block ~ ~ ~ Items[{Slot:12b}].Slot
execute if block ~ ~ ~ chest{Items:[{Slot:13b}]} run data modify entity @s data.shop_buy[4].Slot set from block ~ ~ ~ Items[{Slot:13b}].Slot
execute if block ~ ~ ~ chest{Items:[{Slot:14b}]} run data modify entity @s data.shop_buy[5].Slot set from block ~ ~ ~ Items[{Slot:14b}].Slot
execute if block ~ ~ ~ chest{Items:[{Slot:15b}]} run data modify entity @s data.shop_buy[6].Slot set from block ~ ~ ~ Items[{Slot:15b}].Slot
execute if block ~ ~ ~ chest{Items:[{Slot:16b}]} run data modify entity @s data.shop_buy[7].Slot set from block ~ ~ ~ Items[{Slot:16b}].Slot
execute if block ~ ~ ~ chest{Items:[{Slot:17b}]} run data modify entity @s data.shop_buy[8].Slot set from block ~ ~ ~ Items[{Slot:17b}].Slot

#
execute if block ~ ~ ~ chest{Items:[{Slot:9b}]} run data modify entity @s data.shop_buy[0].id set from block ~ ~ ~ Items[{Slot:9b}].id
execute if block ~ ~ ~ chest{Items:[{Slot:10b}]} run data modify entity @s data.shop_buy[1].id set from block ~ ~ ~ Items[{Slot:10b}].id
execute if block ~ ~ ~ chest{Items:[{Slot:11b}]} run data modify entity @s data.shop_buy[2].id set from block ~ ~ ~ Items[{Slot:11b}].id
execute if block ~ ~ ~ chest{Items:[{Slot:12b}]} run data modify entity @s data.shop_buy[3].id set from block ~ ~ ~ Items[{Slot:12b}].id
execute if block ~ ~ ~ chest{Items:[{Slot:13b}]} run data modify entity @s data.shop_buy[4].id set from block ~ ~ ~ Items[{Slot:13b}].id
execute if block ~ ~ ~ chest{Items:[{Slot:14b}]} run data modify entity @s data.shop_buy[5].id set from block ~ ~ ~ Items[{Slot:14b}].id
execute if block ~ ~ ~ chest{Items:[{Slot:15b}]} run data modify entity @s data.shop_buy[6].id set from block ~ ~ ~ Items[{Slot:15b}].id
execute if block ~ ~ ~ chest{Items:[{Slot:16b}]} run data modify entity @s data.shop_buy[7].id set from block ~ ~ ~ Items[{Slot:16b}].id
execute if block ~ ~ ~ chest{Items:[{Slot:17b}]} run data modify entity @s data.shop_buy[8].id set from block ~ ~ ~ Items[{Slot:17b}].id