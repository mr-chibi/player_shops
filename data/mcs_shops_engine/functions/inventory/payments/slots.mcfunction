# Inventory Detect If [Slot] is "Empty" then, [Empty Data]:
execute unless block ~ ~ ~ chest{Items:[{Slot:18b}]} run data modify block ~ ~ ~ Items[{Slot:18b}] merge value {id:"minecraft:gray_stained_glass_pane",Count:1b,tag:{Tags:["mcs_display"]}}
execute unless block ~ ~ ~ chest{Items:[{Slot:19b}]} run data modify block ~ ~ ~ Items[{Slot:19b}] merge value {id:"minecraft:gray_stained_glass_pane",Count:1b,tag:{Tags:["mcs_display"]}}
execute unless block ~ ~ ~ chest{Items:[{Slot:20b}]} run data modify block ~ ~ ~ Items[{Slot:20b}] merge value {id:"minecraft:gray_stained_glass_pane",Count:1b,tag:{Tags:["mcs_display"]}}
execute unless block ~ ~ ~ chest{Items:[{Slot:21b}]} run data modify block ~ ~ ~ Items[{Slot:21b}] merge value {id:"minecraft:gray_stained_glass_pane",Count:1b,tag:{Tags:["mcs_display"]}}
execute unless block ~ ~ ~ chest{Items:[{Slot:22b}]} run data modify block ~ ~ ~ Items[{Slot:22b}] merge value {id:"minecraft:gray_stained_glass_pane",Count:1b,tag:{Tags:["mcs_display"]}}
execute unless block ~ ~ ~ chest{Items:[{Slot:23b}]} run data modify block ~ ~ ~ Items[{Slot:23b}] merge value {id:"minecraft:gray_stained_glass_pane",Count:1b,tag:{Tags:["mcs_display"]}}
execute unless block ~ ~ ~ chest{Items:[{Slot:24b}]} run data modify block ~ ~ ~ Items[{Slot:24b}] merge value {id:"minecraft:gray_stained_glass_pane",Count:1b,tag:{Tags:["mcs_display"]}}
execute unless block ~ ~ ~ chest{Items:[{Slot:25b}]} run data modify block ~ ~ ~ Items[{Slot:25b}] merge value {id:"minecraft:gray_stained_glass_pane",Count:1b,tag:{Tags:["mcs_display"]}}
execute unless block ~ ~ ~ chest{Items:[{Slot:26b}]} run data modify block ~ ~ ~ Items[{Slot:26b}] merge value {id:"minecraft:gray_stained_glass_pane",Count:1b,tag:{Tags:["mcs_display"]}}

# Inventory Detect If [Slot] is "NOT Empty" then, [Fetch Data]:
execute if block ~ ~ ~ chest{Items:[{Slot:18b}]} run data modify entity @s data.shop_payments[0] set from block ~ ~ ~ Items[{Slot:18b}]
execute if block ~ ~ ~ chest{Items:[{Slot:19b}]} run data modify entity @s data.shop_payments[1] set from block ~ ~ ~ Items[{Slot:19b}]
execute if block ~ ~ ~ chest{Items:[{Slot:20b}]} run data modify entity @s data.shop_payments[2] set from block ~ ~ ~ Items[{Slot:20b}]
execute if block ~ ~ ~ chest{Items:[{Slot:21b}]} run data modify entity @s data.shop_payments[3] set from block ~ ~ ~ Items[{Slot:21b}]
execute if block ~ ~ ~ chest{Items:[{Slot:22b}]} run data modify entity @s data.shop_payments[4] set from block ~ ~ ~ Items[{Slot:22b}]
execute if block ~ ~ ~ chest{Items:[{Slot:23b}]} run data modify entity @s data.shop_payments[5] set from block ~ ~ ~ Items[{Slot:23b}]
execute if block ~ ~ ~ chest{Items:[{Slot:24b}]} run data modify entity @s data.shop_payments[6] set from block ~ ~ ~ Items[{Slot:24b}]
execute if block ~ ~ ~ chest{Items:[{Slot:25b}]} run data modify entity @s data.shop_payments[7] set from block ~ ~ ~ Items[{Slot:25b}]
execute if block ~ ~ ~ chest{Items:[{Slot:26b}]} run data modify entity @s data.shop_payments[8] set from block ~ ~ ~ Items[{Slot:26b}]