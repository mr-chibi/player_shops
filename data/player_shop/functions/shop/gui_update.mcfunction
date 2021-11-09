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



#####################################################################################
# If there's stock avalaible in chest update chest:
#####################################################################################
execute unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:2b}]} run data modify entity @s Offers.Recipes[0].sell merge from block ~ ~-1 ~ Items[{Slot:9b}]
execute unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:2b}]} unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:9b}]} run data modify entity @s Offers.Recipes[0].sell merge from block ~ ~-1 ~ Items[{Slot:10b}]
execute unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:2b}]} unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:9b}]} unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:10b}]} run data modify entity @s Offers.Recipes[0].sell merge from block ~ ~-1 ~ Items[{Slot:11b}]
execute unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:2b}]} unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:9b}]} unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:10b}]} unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:11b}]} run data modify entity @s Offers.Recipes[0].sell merge from block ~ ~-1 ~ Items[{Slot:18b}]
execute unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:2b}]} unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:9b}]} unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:10b}]} unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:11b}]} unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:18b}]} run data modify entity @s Offers.Recipes[0].sell merge from block ~ ~-1 ~ Items[{Slot:19b}]
execute unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:2b}]} unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:9b}]} unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:10b}]} unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:11b}]} unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:18b}]} unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:19b}]} run data modify entity @s Offers.Recipes[0].sell merge from block ~ ~-1 ~ Items[{Slot:20b}]


#
execute unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:5b}]} run data modify entity @s Offers.Recipes[1].sell merge from block ~ ~-1 ~ Items[{Slot:12b}]
execute unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:5b}]} unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:12b}]} run data modify entity @s Offers.Recipes[1].sell merge from block ~ ~-1 ~ Items[{Slot:13b}]
execute unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:5b}]} unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:12b}]} unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:13b}]} run data modify entity @s Offers.Recipes[1].sell merge from block ~ ~-1 ~ Items[{Slot:14b}]
execute unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:5b}]} unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:12b}]} unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:13b}]} unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:14b}]} run data modify entity @s Offers.Recipes[1].sell merge from block ~ ~-1 ~ Items[{Slot:21b}]
execute unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:5b}]} unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:12b}]} unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:13b}]} unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:14b}]} unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:21b}]} run data modify entity @s Offers.Recipes[1].sell merge from block ~ ~-1 ~ Items[{Slot:22b}]
execute unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:5b}]} unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:12b}]} unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:13b}]} unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:14b}]} unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:21b}]} unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:22b}]} run data modify entity @s Offers.Recipes[1].sell merge from block ~ ~-1 ~ Items[{Slot:23b}]



#
execute unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:8b}]} run data modify entity @s Offers.Recipes[2].sell merge from block ~ ~-1 ~ Items[{Slot:15b}]
execute unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:8b}]} unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:15b}]} run data modify entity @s Offers.Recipes[2].sell merge from block ~ ~-1 ~ Items[{Slot:16b}]
execute unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:8b}]} unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:15b}]} unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:16b}]} run data modify entity @s Offers.Recipes[2].sell merge from block ~ ~-1 ~ Items[{Slot:17b}]
execute unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:8b}]} unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:15b}]} unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:16b}]} unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:17b}]} run data modify entity @s Offers.Recipes[2].sell merge from block ~ ~-1 ~ Items[{Slot:24b}]
execute unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:8b}]} unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:15b}]} unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:16b}]} unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:17b}]} unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:24b}]} run data modify entity @s Offers.Recipes[2].sell merge from block ~ ~-1 ~ Items[{Slot:25b}]
execute unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:8b}]} unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:15b}]} unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:16b}]} unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:17b}]} unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:24b}]} unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:25b}]} run data modify entity @s Offers.Recipes[2].sell merge from block ~ ~-1 ~ Items[{Slot:26b}]
