#####################################################################################
#
# Shop Slot #2 Reset After Purchase:
#
#############################################################################################################################################
execute if score @s ps_slot_0 matches 1.. run data modify entity @s HandItems[0].tag.ps_sell[0] merge from block ~ ~-1 ~ Items[{Slot:2b}]

# Refill Slots in Shop:
execute if score @s ps_slot_0 matches 1.. unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:2b}]} unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:9b}]} unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:10b}]} unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:11b}]} unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:18b}]} unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:19b}]} if block ~ ~-1 ~ minecraft:chest{Items:[{Slot:20b}]} store result block ~ ~-1 ~ Items[{Slot:20b}].Count byte 1 run scoreboard players get @s ps_sell_0
execute if score @s ps_slot_0 matches 1.. unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:2b}]} unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:9b}]} unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:10b}]} unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:11b}]} unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:18b}]} if block ~ ~-1 ~ minecraft:chest{Items:[{Slot:19b}]} store result block ~ ~-1 ~ Items[{Slot:19b}].Count byte 1 run scoreboard players get @s ps_sell_0
execute if score @s ps_slot_0 matches 1.. unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:2b}]} unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:9b}]} unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:10b}]} unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:11b}]} if block ~ ~-1 ~ minecraft:chest{Items:[{Slot:18b}]} store result block ~ ~-1 ~ Items[{Slot:18b}].Count byte 1 run scoreboard players get @s ps_sell_0
execute if score @s ps_slot_0 matches 1.. unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:2b}]} unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:9b}]} unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:10b}]} if block ~ ~-1 ~ minecraft:chest{Items:[{Slot:11b}]} store result block ~ ~-1 ~ Items[{Slot:11b}].Count byte 1 run scoreboard players get @s ps_sell_0
execute if score @s ps_slot_0 matches 1.. unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:2b}]} unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:9b}]} if block ~ ~-1 ~ minecraft:chest{Items:[{Slot:10b}]} store result block ~ ~-1 ~ Items[{Slot:10b}].Count byte 1 run scoreboard players get @s ps_sell_0
execute if score @s ps_slot_0 matches 1.. unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:2b}]} if block ~ ~-1 ~ minecraft:chest{Items:[{Slot:9b}]} store result block ~ ~-1 ~ Items[{Slot:9b}].Count byte 1 run scoreboard players get @s ps_sell_0
execute if score @s ps_slot_0 matches 1.. if block ~ ~-1 ~ minecraft:chest{Items:[{Slot:2b}]} store result block ~ ~-1 ~ Items[{Slot:2b}].Count byte 1 run scoreboard players get @s ps_sell_0

# Purchase Sound:
execute if score @s ps_slot_0 matches 1.. run playsound minecraft:entity.player.levelup master @a[distance=0..5] ~ ~ ~ 0.5 1.5

# Reset Slot 0b in shop:
execute if score @s ps_slot_0 matches 1.. store result block ~ ~-1 ~ Items[{Slot:0b}].Count byte 1 run scoreboard players get @s ps_buying_0

# Reset Scoreboards:
execute if score @s ps_slot_0 matches 1.. run scoreboard players set @s ps_sell_0 0
execute if score @s ps_slot_0 matches 1.. run data modify entity @s Offers.Recipes[0].uses set value 0

# Restock Empty Buy Slot:
execute if score @s ps_slot_0 matches 1.. run data modify block ~ ~-1 ~ Items[{Slot:0b}] merge from entity @s HandItems.[0].tag.ps_inventory[0]

#
execute if score @s ps_slot_0 matches 1.. run scoreboard players set @s ps_slot_0 0


#####################################################################################
#
# Shop Slot #5 Reset After Purchase:
#
#####################################################################################
execute if score @s ps_slot_1 matches 1.. run data modify entity @s HandItems[0].tag.ps_sell[1] merge from block ~ ~-1 ~ Items[{Slot:5b}]

# Refill Slots in Shop:
execute if score @s ps_slot_1 matches 1.. unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:5b}]} unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:12b}]} unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:13b}]} unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:14b}]} unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:21b}]} unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:22b}]} if block ~ ~-1 ~ minecraft:chest{Items:[{Slot:23b}]} store result block ~ ~-1 ~ Items[{Slot:23b}].Count byte 1 run scoreboard players get @s ps_sell_1
execute if score @s ps_slot_1 matches 1.. unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:5b}]} unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:12b}]} unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:13b}]} unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:14b}]} unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:21b}]} if block ~ ~-1 ~ minecraft:chest{Items:[{Slot:22b}]} store result block ~ ~-1 ~ Items[{Slot:22b}].Count byte 1 run scoreboard players get @s ps_sell_1
execute if score @s ps_slot_1 matches 1.. unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:5b}]} unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:12b}]} unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:13b}]} unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:14b}]} if block ~ ~-1 ~ minecraft:chest{Items:[{Slot:21b}]} store result block ~ ~-1 ~ Items[{Slot:21b}].Count byte 1 run scoreboard players get @s ps_sell_1
execute if score @s ps_slot_1 matches 1.. unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:5b}]} unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:12b}]} unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:13b}]} if block ~ ~-1 ~ minecraft:chest{Items:[{Slot:14b}]} store result block ~ ~-1 ~ Items[{Slot:14b}].Count byte 1 run scoreboard players get @s ps_sell_1
execute if score @s ps_slot_1 matches 1.. unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:5b}]} unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:12b}]} if block ~ ~-1 ~ minecraft:chest{Items:[{Slot:13b}]} store result block ~ ~-1 ~ Items[{Slot:13b}].Count byte 1 run scoreboard players get @s ps_sell_1
execute if score @s ps_slot_1 matches 1.. unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:5b}]} if block ~ ~-1 ~ minecraft:chest{Items:[{Slot:12b}]} store result block ~ ~-1 ~ Items[{Slot:12b}].Count byte 1 run scoreboard players get @s ps_sell_1
execute if score @s ps_slot_1 matches 1.. if block ~ ~-1 ~ minecraft:chest{Items:[{Slot:5b}]} store result block ~ ~-1 ~ Items[{Slot:5b}].Count byte 1 run scoreboard players get @s ps_sell_1

# Purchase Sound:
execute if score @s ps_slot_1 matches 1.. run playsound minecraft:entity.player.levelup master @a[distance=0..5] ~ ~ ~ 0.5 1.5

# Reset Slot 3b in shop:
execute if score @s ps_slot_1 matches 1.. store result block ~ ~-1 ~ Items[{Slot:3b}].Count byte 1 run scoreboard players get @s ps_buying_1

# Reset Scoreboards:
execute if score @s ps_slot_1 matches 1.. run scoreboard players set @s ps_sell_1 0
execute if score @s ps_slot_1 matches 1.. run data modify entity @s Offers.Recipes[1].uses set value 0

# Restock Empty Buy Slot:
execute if score @s ps_slot_1 matches 1.. run data modify block ~ ~-1 ~ Items[{Slot:3b}] merge from entity @s HandItems.[0].tag.ps_inventory[1]

#
execute if score @s ps_slot_1 matches 1.. run scoreboard players set @s ps_slot_1 0


#####################################################################################
#
# Shop Slot #8 Reset After Purchase:
#
#####################################################################################
execute if score @s ps_slot_2 matches 1.. run data modify entity @s HandItems[0].tag.ps_sell[2] merge from block ~ ~-1 ~ Items[{Slot:8b}]

# Refill Slots in Shop:
execute if score @s ps_slot_2 matches 1.. unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:8b}]} unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:15b}]} unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:16b}]} unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:17b}]} unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:24b}]} unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:25b}]} if block ~ ~-1 ~ minecraft:chest{Items:[{Slot:26b}]} store result block ~ ~-1 ~ Items[{Slot:26b}].Count byte 1 run scoreboard players get @s ps_sell_2
execute if score @s ps_slot_2 matches 1.. unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:8b}]} unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:15b}]} unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:16b}]} unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:17b}]} unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:24b}]} if block ~ ~-1 ~ minecraft:chest{Items:[{Slot:25b}]} store result block ~ ~-1 ~ Items[{Slot:25b}].Count byte 1 run scoreboard players get @s ps_sell_2
execute if score @s ps_slot_2 matches 1.. unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:8b}]} unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:15b}]} unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:16b}]} unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:17b}]} if block ~ ~-1 ~ minecraft:chest{Items:[{Slot:24b}]} store result block ~ ~-1 ~ Items[{Slot:24b}].Count byte 1 run scoreboard players get @s ps_sell_2
execute if score @s ps_slot_2 matches 1.. unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:8b}]} unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:15b}]} unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:16b}]} if block ~ ~-1 ~ minecraft:chest{Items:[{Slot:17b}]} store result block ~ ~-1 ~ Items[{Slot:17b}].Count byte 1 run scoreboard players get @s ps_sell_2
execute if score @s ps_slot_2 matches 1.. unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:8b}]} unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:15b}]} if block ~ ~-1 ~ minecraft:chest{Items:[{Slot:16b}]} store result block ~ ~-1 ~ Items[{Slot:16b}].Count byte 1 run scoreboard players get @s ps_sell_2
execute if score @s ps_slot_2 matches 1.. unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:8b}]} if block ~ ~-1 ~ minecraft:chest{Items:[{Slot:15b}]} store result block ~ ~-1 ~ Items[{Slot:15b}].Count byte 1 run scoreboard players get @s ps_sell_2
execute if score @s ps_slot_2 matches 1.. if block ~ ~-1 ~ minecraft:chest{Items:[{Slot:8b}]} store result block ~ ~-1 ~ Items[{Slot:8b}].Count byte 1 run scoreboard players get @s ps_sell_2

# Purchase Sound:
execute if score @s ps_slot_2 matches 1.. run playsound minecraft:entity.player.levelup master @a[distance=0..5] ~ ~ ~ 0.5 1.5

# Reset Slot 6b in shop:
execute if score @s ps_slot_2 matches 1.. store result block ~ ~-1 ~ Items[{Slot:6b}].Count byte 1 run scoreboard players get @s ps_buying_2

# Reset Scoreboards:
execute if score @s ps_slot_2 matches 1.. run scoreboard players set @s ps_sell_2 0
execute if score @s ps_slot_2 matches 1.. run data modify entity @s Offers.Recipes[2].uses set value 0

# Restock Empty Buy Slot:
execute if score @s ps_slot_2 matches 1.. run data modify block ~ ~-1 ~ Items[{Slot:6b}] merge from entity @s HandItems.[0].tag.ps_inventory[2]

#
execute if score @s ps_slot_2 matches 1.. run scoreboard players set @s ps_slot_2 0


#####################################################################################
# Automaticly update when player has traded:
#####################################################################################
execute store result score @s ps_slot_0 run data get entity @s Offers.Recipes[0].uses
execute store result score @s ps_slot_1 run data get entity @s Offers.Recipes[1].uses
execute store result score @s ps_slot_2 run data get entity @s Offers.Recipes[2].uses