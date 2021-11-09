# Buy amount has be less than 64!
execute if score @s ps_buy_1 matches 65.. run tellraw @s [{"text": "[", "color": "white"}, {"text": "Mr_Chibi's Player Shop", "color": "aqua"}, {"text": "] ", "color": "white"}, {"text": "Error, you can only buy 64 items or less!", "color": "red"}]
execute if score @s ps_buy_1 matches 65.. run playsound minecraft:item.firecharge.use master @s ~ ~ ~ 1 0.8

# Count how many items the shop has to "Sell":
execute if score @s ps_buy_1 matches ..64 run execute as @e[type=minecraft:villager,tag=player_shop,sort=nearest,limit=1] at @s unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:5b}]} unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:12b}]} unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:13b}]} unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:14b}]} unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:21b}]} unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:22b}]} if block ~ ~-1 ~ minecraft:chest{Items:[{Slot:23b}]} store result score @s ps_sell_1 run data get block ~ ~-1 ~ Items[{Slot:23b}].Count
execute if score @s ps_buy_1 matches ..64 run execute as @e[type=minecraft:villager,tag=player_shop,sort=nearest,limit=1] at @s unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:5b}]} unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:12b}]} unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:13b}]} unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:14b}]} unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:21b}]} if block ~ ~-1 ~ minecraft:chest{Items:[{Slot:22b}]} store result score @s ps_sell_1 run data get block ~ ~-1 ~ Items[{Slot:22b}].Count
execute if score @s ps_buy_1 matches ..64 run execute as @e[type=minecraft:villager,tag=player_shop,sort=nearest,limit=1] at @s unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:5b}]} unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:12b}]} unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:13b}]} unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:14b}]} if block ~ ~-1 ~ minecraft:chest{Items:[{Slot:21b}]} store result score @s ps_sell_1 run data get block ~ ~-1 ~ Items[{Slot:21b}].Count
execute if score @s ps_buy_1 matches ..64 run execute as @e[type=minecraft:villager,tag=player_shop,sort=nearest,limit=1] at @s unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:5b}]} unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:12b}]} unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:13b}]} if block ~ ~-1 ~ minecraft:chest{Items:[{Slot:14b}]} store result score @s ps_sell_1 run data get block ~ ~-1 ~ Items[{Slot:14b}].Count
execute if score @s ps_buy_1 matches ..64 run execute as @e[type=minecraft:villager,tag=player_shop,sort=nearest,limit=1] at @s unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:5b}]} unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:12b}]} if block ~ ~-1 ~ minecraft:chest{Items:[{Slot:13b}]} store result score @s ps_sell_1 run data get block ~ ~-1 ~ Items[{Slot:13b}].Count
execute if score @s ps_buy_1 matches ..64 run execute as @e[type=minecraft:villager,tag=player_shop,sort=nearest,limit=1] at @s unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:5b}]} if block ~ ~-1 ~ minecraft:chest{Items:[{Slot:12b}]} store result score @s ps_sell_1 run data get block ~ ~-1 ~ Items[{Slot:12b}].Count
execute if score @s ps_buy_1 matches ..64 run execute as @e[type=minecraft:villager,tag=player_shop,sort=nearest,limit=1] at @s if block ~ ~-1 ~ minecraft:chest{Items:[{Slot:5b}]} store result score @s ps_sell_1 run data get block ~ ~-1 ~ Items[{Slot:5b}].Count


# Not Enough Stock in Shop!
execute if score @s ps_buy_1 matches ..64 if score @s ps_buy_1 > @e[type=minecraft:villager,tag=player_shop,sort=nearest,limit=1] ps_sell_1 run tellraw @s [{"text": "[", "color": "white"}, {"text": "Mr_Chibi's Player Shop", "color": "aqua"}, {"text": "] ", "color": "white"}, {"text": "Error, there's not enough stock in the shop!", "color": "red"}]
execute if score @s ps_buy_1 matches ..64 if score @s ps_buy_1 > @e[type=minecraft:villager,tag=player_shop,sort=nearest,limit=1] ps_sell_1 run playsound minecraft:item.firecharge.use master @s ~ ~ ~ 1 0.8

# Match Sell Price to Buy Price:
execute if score @s ps_buy_1 matches ..64 if score @s ps_buy_1 <= @e[type=minecraft:villager,tag=player_shop,sort=nearest,limit=1] ps_sell_1 run execute as @e[type=minecraft:villager,tag=player_shop,sort=nearest,limit=1] at @s store result score @s ps_buying_1 run data get block ~ ~-1 ~ Items[{Slot:3b}].Count
execute if score @s ps_buy_1 matches ..64 if score @s ps_buy_1 <= @e[type=minecraft:villager,tag=player_shop,sort=nearest,limit=1] ps_sell_1 run execute as @e[type=minecraft:villager,tag=player_shop,sort=nearest,limit=1] at @s store result block ~ ~-1 ~ Items[{Slot:3b}].Count byte 1 run execute as @p at @s run scoreboard players get @s ps_buy_1


# change to sell <amount>:
execute if score @s ps_buy_1 matches ..64 if score @s ps_buy_1 <= @e[type=minecraft:villager,tag=player_shop,sort=nearest,limit=1] ps_sell_1 run execute as @e[type=minecraft:villager,tag=player_shop,sort=nearest,limit=1] at @s unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:5b}]} unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:12b}]} unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:13b}]} unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:14b}]} unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:21b}]} unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:22b}]} if block ~ ~-1 ~ minecraft:chest{Items:[{Slot:23b}]} store result block ~ ~-1 ~ Items[{Slot:23b}].Count byte 1 run execute as @p at @s run scoreboard players get @s ps_buy_1
execute if score @s ps_buy_1 matches ..64 if score @s ps_buy_1 <= @e[type=minecraft:villager,tag=player_shop,sort=nearest,limit=1] ps_sell_1 run execute as @e[type=minecraft:villager,tag=player_shop,sort=nearest,limit=1] at @s unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:5b}]} unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:12b}]} unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:13b}]} unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:14b}]} unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:21b}]} if block ~ ~-1 ~ minecraft:chest{Items:[{Slot:22b}]} store result block ~ ~-1 ~ Items[{Slot:22b}].Count byte 1 run execute as @p at @s run scoreboard players get @s ps_buy_1
execute if score @s ps_buy_1 matches ..64 if score @s ps_buy_1 <= @e[type=minecraft:villager,tag=player_shop,sort=nearest,limit=1] ps_sell_1 run execute as @e[type=minecraft:villager,tag=player_shop,sort=nearest,limit=1] at @s unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:5b}]} unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:12b}]} unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:13b}]} unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:14b}]} if block ~ ~-1 ~ minecraft:chest{Items:[{Slot:21b}]} store result block ~ ~-1 ~ Items[{Slot:21b}].Count byte 1 run execute as @p at @s run scoreboard players get @s ps_buy_1
execute if score @s ps_buy_1 matches ..64 if score @s ps_buy_1 <= @e[type=minecraft:villager,tag=player_shop,sort=nearest,limit=1] ps_sell_1 run execute as @e[type=minecraft:villager,tag=player_shop,sort=nearest,limit=1] at @s unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:5b}]} unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:12b}]} unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:13b}]} if block ~ ~-1 ~ minecraft:chest{Items:[{Slot:14b}]} store result score @s ps_sell_1 run data get block ~ ~-1 ~ Items[{Slot:14b}].Count
execute if score @s ps_buy_1 matches ..64 if score @s ps_buy_1 <= @e[type=minecraft:villager,tag=player_shop,sort=nearest,limit=1] ps_sell_1 run execute as @e[type=minecraft:villager,tag=player_shop,sort=nearest,limit=1] at @s unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:5b}]} unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:12b}]} if block ~ ~-1 ~ minecraft:chest{Items:[{Slot:13b}]} store result block ~ ~-1 ~ Items[{Slot:13b}].Count byte 1 run execute as @p at @s run scoreboard players get @s ps_buy_1
execute if score @s ps_buy_1 matches ..64 if score @s ps_buy_1 <= @e[type=minecraft:villager,tag=player_shop,sort=nearest,limit=1] ps_sell_1 run execute as @e[type=minecraft:villager,tag=player_shop,sort=nearest,limit=1] at @s unless block ~ ~-1 ~ minecraft:chest{Items:[{Slot:5b}]} if block ~ ~-1 ~ minecraft:chest{Items:[{Slot:12b}]} store result block ~ ~-1 ~ Items[{Slot:12b}].Count byte 1 run execute as @p at @s run scoreboard players get @s ps_buy_1
execute if score @s ps_buy_1 matches ..64 if score @s ps_buy_1 <= @e[type=minecraft:villager,tag=player_shop,sort=nearest,limit=1] ps_sell_1 run execute as @e[type=minecraft:villager,tag=player_shop,sort=nearest,limit=1] at @s if block ~ ~-1 ~ minecraft:chest{Items:[{Slot:5b}]} store result block ~ ~-1 ~ Items[{Slot:5b}].Count byte 1 run execute as @p at @s run scoreboard players get @s ps_buy_1


# Remaining Stock:
execute if score @s ps_buy_1 matches ..64 if score @s ps_buy_1 <= @e[type=minecraft:villager,tag=player_shop,sort=nearest,limit=1] ps_sell_1 run execute as @e[type=minecraft:villager,tag=player_shop,sort=nearest,limit=1] at @s run scoreboard players operation @s ps_sell_1 -= @p ps_buy_1

# Reset
scoreboard players set @s ps_buy_1 0