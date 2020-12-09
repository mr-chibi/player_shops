#####################################################################################
# Automaticly update when player has traded:
#####################################################################################
execute store result score @s ps_slot_0 run data get entity @s Offers.Recipes[0].uses
execute store result score @s ps_slot_1 run data get entity @s Offers.Recipes[1].uses
execute store result score @s ps_slot_2 run data get entity @s Offers.Recipes[2].uses
execute store result score @s ps_slot_3 run data get entity @s Offers.Recipes[3].uses
execute store result score @s ps_slot_4 run data get entity @s Offers.Recipes[4].uses
execute store result score @s ps_slot_5 run data get entity @s Offers.Recipes[5].uses
execute store result score @s ps_slot_6 run data get entity @s Offers.Recipes[6].uses
execute store result score @s ps_slot_7 run data get entity @s Offers.Recipes[7].uses
execute store result score @s ps_slot_8 run data get entity @s Offers.Recipes[8].uses



#####################################################################################
# Trade Successful place items in secondary chest:
#####################################################################################
execute as @a at @s[scores={ps_trade_success=1..}] run execute as @e[type=minecraft:villager,tag=player_shop,distance=0..5] at @s[scores={ps_slot_0=1..}] run data modify block ~ ~-2 ~ Items[{Slot:0b}] merge from entity @s HandItems.[0].tag.ps_inventory[0]
execute as @a at @s[scores={ps_trade_success=1..}] run execute as @e[type=minecraft:villager,tag=player_shop,distance=0..5] at @s[scores={ps_slot_0=1..}] run data modify block ~ ~-2 ~ Items[{Slot:1b}] merge from entity @s HandItems.[0].tag.ps_inventory[1]
execute as @a at @s[scores={ps_trade_success=1..}] run execute as @e[type=minecraft:villager,tag=player_shop,distance=0..5] at @s[scores={ps_slot_1=1..}] run data modify block ~ ~-2 ~ Items[{Slot:3b}] merge from entity @s HandItems.[0].tag.ps_inventory[2]
execute as @a at @s[scores={ps_trade_success=1..}] run execute as @e[type=minecraft:villager,tag=player_shop,distance=0..5] at @s[scores={ps_slot_1=1..}] run data modify block ~ ~-2 ~ Items[{Slot:4b}] merge from entity @s HandItems.[0].tag.ps_inventory[3]
execute as @a at @s[scores={ps_trade_success=1..}] run execute as @e[type=minecraft:villager,tag=player_shop,distance=0..5] at @s[scores={ps_slot_2=1..}] run data modify block ~ ~-2 ~ Items[{Slot:6b}] merge from entity @s HandItems.[0].tag.ps_inventory[4]
execute as @a at @s[scores={ps_trade_success=1..}] run execute as @e[type=minecraft:villager,tag=player_shop,distance=0..5] at @s[scores={ps_slot_2=1..}] run data modify block ~ ~-2 ~ Items[{Slot:7b}] merge from entity @s HandItems.[0].tag.ps_inventory[5]
execute as @a at @s[scores={ps_trade_success=1..}] run execute as @e[type=minecraft:villager,tag=player_shop,distance=0..5] at @s[scores={ps_slot_3=1..}] run data modify block ~ ~-2 ~ Items[{Slot:9b}] merge from entity @s HandItems.[0].tag.ps_inventory[6]
execute as @a at @s[scores={ps_trade_success=1..}] run execute as @e[type=minecraft:villager,tag=player_shop,distance=0..5] at @s[scores={ps_slot_3=1..}] run data modify block ~ ~-2 ~ Items[{Slot:10b}] merge from entity @s HandItems.[0].tag.ps_inventory[7]
execute as @a at @s[scores={ps_trade_success=1..}] run execute as @e[type=minecraft:villager,tag=player_shop,distance=0..5] at @s[scores={ps_slot_4=1..}] run data modify block ~ ~-2 ~ Items[{Slot:12b}] merge from entity @s HandItems.[0].tag.ps_inventory[8]
execute as @a at @s[scores={ps_trade_success=1..}] run execute as @e[type=minecraft:villager,tag=player_shop,distance=0..5] at @s[scores={ps_slot_4=1..}] run data modify block ~ ~-2 ~ Items[{Slot:13b}] merge from entity @s HandItems.[0].tag.ps_inventory[9]
execute as @a at @s[scores={ps_trade_success=1..}] run execute as @e[type=minecraft:villager,tag=player_shop,distance=0..5] at @s[scores={ps_slot_5=1..}] run data modify block ~ ~-2 ~ Items[{Slot:15b}] merge from entity @s HandItems.[0].tag.ps_inventory[10]
execute as @a at @s[scores={ps_trade_success=1..}] run execute as @e[type=minecraft:villager,tag=player_shop,distance=0..5] at @s[scores={ps_slot_5=1..}] run data modify block ~ ~-2 ~ Items[{Slot:16b}] merge from entity @s HandItems.[0].tag.ps_inventory[11]
execute as @a at @s[scores={ps_trade_success=1..}] run execute as @e[type=minecraft:villager,tag=player_shop,distance=0..5] at @s[scores={ps_slot_6=1..}] run data modify block ~ ~-2 ~ Items[{Slot:18b}] merge from entity @s HandItems.[0].tag.ps_inventory[12]
execute as @a at @s[scores={ps_trade_success=1..}] run execute as @e[type=minecraft:villager,tag=player_shop,distance=0..5] at @s[scores={ps_slot_6=1..}] run data modify block ~ ~-2 ~ Items[{Slot:19b}] merge from entity @s HandItems.[0].tag.ps_inventory[13]
execute as @a at @s[scores={ps_trade_success=1..}] run execute as @e[type=minecraft:villager,tag=player_shop,distance=0..5] at @s[scores={ps_slot_7=1..}] run data modify block ~ ~-2 ~ Items[{Slot:21b}] merge from entity @s HandItems.[0].tag.ps_inventory[14]
execute as @a at @s[scores={ps_trade_success=1..}] run execute as @e[type=minecraft:villager,tag=player_shop,distance=0..5] at @s[scores={ps_slot_7=1..}] run data modify block ~ ~-2 ~ Items[{Slot:22b}] merge from entity @s HandItems.[0].tag.ps_inventory[15]
execute as @a at @s[scores={ps_trade_success=1..}] run execute as @e[type=minecraft:villager,tag=player_shop,distance=0..5] at @s[scores={ps_slot_8=1..}] run data modify block ~ ~-2 ~ Items[{Slot:24b}] merge from entity @s HandItems.[0].tag.ps_inventory[16]
execute as @a at @s[scores={ps_trade_success=1..}] run execute as @e[type=minecraft:villager,tag=player_shop,distance=0..5] at @s[scores={ps_slot_8=1..}] run data modify block ~ ~-2 ~ Items[{Slot:25b}] merge from entity @s HandItems.[0].tag.ps_inventory[17]


#####################################################################################
# Update Shop:
# 1. Remove the Items
# 2. Reset Slot
# 3. Reset scoreboard
#####################################################################################
execute if score @s ps_slot_0 matches 1.. run data remove block ~ ~-1 ~ Items[{Slot:2b}]
execute if score @s ps_slot_0 matches 1.. run data modify entity @s Offers.Recipes[0].uses set value 0
execute if score @s ps_slot_0 matches 1.. run scoreboard players set @s ps_slot_0 0

execute if score @s ps_slot_1 matches 1.. run data remove block ~ ~-1 ~ Items[{Slot:5b}]
execute if score @s ps_slot_1 matches 1.. run data modify entity @s Offers.Recipes[1].uses set value 0
execute if score @s ps_slot_1 matches 1.. run scoreboard players set @s ps_slot_1 0

execute if score @s ps_slot_2 matches 1.. run data remove block ~ ~-1 ~ Items[{Slot:8b}]
execute if score @s ps_slot_2 matches 1.. run data modify entity @s Offers.Recipes[2].uses set value 0
execute if score @s ps_slot_2 matches 1.. run scoreboard players set @s ps_slot_2 0

execute if score @s ps_slot_3 matches 1.. run data remove block ~ ~-1 ~ Items[{Slot:11b}]
execute if score @s ps_slot_3 matches 1.. run data modify entity @s Offers.Recipes[3].uses set value 0
execute if score @s ps_slot_3 matches 1.. run scoreboard players set @s ps_slot_3 0

execute if score @s ps_slot_4 matches 1.. run data remove block ~ ~-1 ~ Items[{Slot:14b}]
execute if score @s ps_slot_4 matches 1.. run data modify entity @s Offers.Recipes[4].uses set value 0
execute if score @s ps_slot_4 matches 1.. run scoreboard players set @s ps_slot_4 0

execute if score @s ps_slot_5 matches 1.. run data remove block ~ ~-1 ~ Items[{Slot:17b}]
execute if score @s ps_slot_5 matches 1.. run data modify entity @s Offers.Recipes[5].uses set value 0
execute if score @s ps_slot_5 matches 1.. run scoreboard players set @s ps_slot_5 0

execute if score @s ps_slot_6 matches 1.. run data remove block ~ ~-1 ~ Items[{Slot:20b}]
execute if score @s ps_slot_6 matches 1.. run data modify entity @s Offers.Recipes[6].uses set value 0
execute if score @s ps_slot_6 matches 1.. run scoreboard players set @s ps_slot_6 0

execute if score @s ps_slot_7 matches 1.. run data remove block ~ ~-1 ~ Items[{Slot:23b}]
execute if score @s ps_slot_7 matches 1.. run data modify entity @s Offers.Recipes[7].uses set value 0
execute if score @s ps_slot_7 matches 1.. run scoreboard players set @s ps_slot_7 0

execute if score @s ps_slot_8 matches 1.. run data remove block ~ ~-1 ~ Items[{Slot:26b}]
execute if score @s ps_slot_8 matches 1.. run data modify entity @s Offers.Recipes[8].uses set value 0
execute if score @s ps_slot_8 matches 1.. run scoreboard players set @s ps_slot_8 0