#####################################################################################
# If there's NOT a block in GUI update villagers trade set it as "AIR":
#####################################################################################
execute unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:0b}]} run data modify entity @s Offers.Recipes[0].buy set value {}
execute unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:1b}]} run data modify entity @s Offers.Recipes[0].buyB set value {}
execute unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:2b}]} run data modify entity @s Offers.Recipes[0].sell set value {}
execute unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:3b}]} run data modify entity @s Offers.Recipes[1].buy set value {}
execute unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:4b}]} run data modify entity @s Offers.Recipes[1].buyB set value {}
execute unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:5b}]} run data modify entity @s Offers.Recipes[1].sell set value {}
execute unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:6b}]} run data modify entity @s Offers.Recipes[2].buy set value {}
execute unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:7b}]} run data modify entity @s Offers.Recipes[2].buyB set value {}
execute unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:8b}]} run data modify entity @s Offers.Recipes[2].sell set value {}
execute unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:9b}]} run data modify entity @s Offers.Recipes[3].buy set value {}
execute unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:10b}]} run data modify entity @s Offers.Recipes[3].buyB set value {}
execute unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:11b}]} run data modify entity @s Offers.Recipes[3].sell set value {}
execute unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:12b}]} run data modify entity @s Offers.Recipes[4].buy set value {}
execute unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:13b}]} run data modify entity @s Offers.Recipes[4].buyB set value {}
execute unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:14b}]} run data modify entity @s Offers.Recipes[4].sell set value {}
execute unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:15b}]} run data modify entity @s Offers.Recipes[5].buy set value {}
execute unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:16b}]} run data modify entity @s Offers.Recipes[5].buyB set value {}
execute unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:17b}]} run data modify entity @s Offers.Recipes[5].sell set value {}
execute unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:18b}]} run data modify entity @s Offers.Recipes[6].buy set value {}
execute unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:19b}]} run data modify entity @s Offers.Recipes[6].buyB set value {}
execute unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:20b}]} run data modify entity @s Offers.Recipes[6].sell set value {}
execute unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:21b}]} run data modify entity @s Offers.Recipes[7].buy set value {}
execute unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:22b}]} run data modify entity @s Offers.Recipes[7].buyB set value {}
execute unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:23b}]} run data modify entity @s Offers.Recipes[7].sell set value {}
execute unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:24b}]} run data modify entity @s Offers.Recipes[8].buy set value {}
execute unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:25b}]} run data modify entity @s Offers.Recipes[8].buyB set value {}
execute unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:26b}]} run data modify entity @s Offers.Recipes[8].sell set value {}


#####################################################################################
# If there's a block in GUI update villagers trade:
#####################################################################################
execute if block ~ ~-1 ~ minecraft:chest{Items:[{Slot:0b}]} run data modify entity @s Offers.Recipes[0].buy merge from block ~ ~-1 ~ Items[{Slot:0b}]
execute if block ~ ~-1 ~ minecraft:chest{Items:[{Slot:1b}]} run data modify entity @s Offers.Recipes[0].buyB merge from block ~ ~-1 ~ Items[{Slot:1b}]
execute if block ~ ~-1 ~ minecraft:chest{Items:[{Slot:2b}]} run data modify entity @s Offers.Recipes[0].sell merge from block ~ ~-1 ~ Items[{Slot:2b}]
execute if block ~ ~-1 ~ minecraft:chest{Items:[{Slot:3b}]} run data modify entity @s Offers.Recipes[1].buy merge from block ~ ~-1 ~ Items[{Slot:3b}]
execute if block ~ ~-1 ~ minecraft:chest{Items:[{Slot:4b}]} run data modify entity @s Offers.Recipes[1].buyB merge from block ~ ~-1 ~ Items[{Slot:4b}]
execute if block ~ ~-1 ~ minecraft:chest{Items:[{Slot:5b}]} run data modify entity @s Offers.Recipes[1].sell merge from block ~ ~-1 ~ Items[{Slot:5b}]
execute if block ~ ~-1 ~ minecraft:chest{Items:[{Slot:6b}]} run data modify entity @s Offers.Recipes[2].buy merge from block ~ ~-1 ~ Items[{Slot:6b}]
execute if block ~ ~-1 ~ minecraft:chest{Items:[{Slot:7b}]} run data modify entity @s Offers.Recipes[2].buyB merge from block ~ ~-1 ~ Items[{Slot:7b}]
execute if block ~ ~-1 ~ minecraft:chest{Items:[{Slot:8b}]} run data modify entity @s Offers.Recipes[2].sell merge from block ~ ~-1 ~ Items[{Slot:8b}]
execute if block ~ ~-1 ~ minecraft:chest{Items:[{Slot:9b}]} run data modify entity @s Offers.Recipes[3].buy merge from block ~ ~-1 ~ Items[{Slot:9b}]
execute if block ~ ~-1 ~ minecraft:chest{Items:[{Slot:10b}]} run data modify entity @s Offers.Recipes[3].buyB merge from block ~ ~-1 ~ Items[{Slot:10b}]
execute if block ~ ~-1 ~ minecraft:chest{Items:[{Slot:11b}]} run data modify entity @s Offers.Recipes[3].sell merge from block ~ ~-1 ~ Items[{Slot:11b}]
execute if block ~ ~-1 ~ minecraft:chest{Items:[{Slot:12b}]} run data modify entity @s Offers.Recipes[4].buy merge from block ~ ~-1 ~ Items[{Slot:12b}]
execute if block ~ ~-1 ~ minecraft:chest{Items:[{Slot:13b}]} run data modify entity @s Offers.Recipes[4].buyB merge from block ~ ~-1 ~ Items[{Slot:13b}]
execute if block ~ ~-1 ~ minecraft:chest{Items:[{Slot:14b}]} run data modify entity @s Offers.Recipes[4].sell merge from block ~ ~-1 ~ Items[{Slot:14b}]
execute if block ~ ~-1 ~ minecraft:chest{Items:[{Slot:15b}]} run data modify entity @s Offers.Recipes[5].buy merge from block ~ ~-1 ~ Items[{Slot:15b}]
execute if block ~ ~-1 ~ minecraft:chest{Items:[{Slot:16b}]} run data modify entity @s Offers.Recipes[5].buyB merge from block ~ ~-1 ~ Items[{Slot:16b}]
execute if block ~ ~-1 ~ minecraft:chest{Items:[{Slot:17b}]} run data modify entity @s Offers.Recipes[5].sell merge from block ~ ~-1 ~ Items[{Slot:17b}]
execute if block ~ ~-1 ~ minecraft:chest{Items:[{Slot:18b}]} run data modify entity @s Offers.Recipes[6].buy merge from block ~ ~-1 ~ Items[{Slot:18b}]
execute if block ~ ~-1 ~ minecraft:chest{Items:[{Slot:19b}]} run data modify entity @s Offers.Recipes[6].buyB merge from block ~ ~-1 ~ Items[{Slot:19b}]
execute if block ~ ~-1 ~ minecraft:chest{Items:[{Slot:20b}]} run data modify entity @s Offers.Recipes[6].sell merge from block ~ ~-1 ~ Items[{Slot:20b}]
execute if block ~ ~-1 ~ minecraft:chest{Items:[{Slot:21b}]} run data modify entity @s Offers.Recipes[7].buy merge from block ~ ~-1 ~ Items[{Slot:21b}]
execute if block ~ ~-1 ~ minecraft:chest{Items:[{Slot:22b}]} run data modify entity @s Offers.Recipes[7].buyB merge from block ~ ~-1 ~ Items[{Slot:22b}]
execute if block ~ ~-1 ~ minecraft:chest{Items:[{Slot:23b}]} run data modify entity @s Offers.Recipes[7].sell merge from block ~ ~-1 ~ Items[{Slot:23b}]
execute if block ~ ~-1 ~ minecraft:chest{Items:[{Slot:24b}]} run data modify entity @s Offers.Recipes[8].buy merge from block ~ ~-1 ~ Items[{Slot:24b}]
execute if block ~ ~-1 ~ minecraft:chest{Items:[{Slot:25b}]} run data modify entity @s Offers.Recipes[8].buyB merge from block ~ ~-1 ~ Items[{Slot:25b}]
execute if block ~ ~-1 ~ minecraft:chest{Items:[{Slot:26b}]} run data modify entity @s Offers.Recipes[8].sell merge from block ~ ~-1 ~ Items[{Slot:26b}]