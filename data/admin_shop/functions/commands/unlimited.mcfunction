# Grant shop "Admin Selling" Unlimited:
execute as @e[type=minecraft:marker,tag=ps_shop] at @s if entity @p[scores={ps_distance=0..2},distance=0..2] run tag @s[tag=!ps_admin] add ps_admin

# Count Items in shop incase have to "remove" unlimited selling:
execute as @e[type=minecraft:marker,tag=ps_shop] at @s if entity @p[scores={ps_distance=0..2},distance=0..2] store result score @s ps_sell_remainer_1 run data get block ~ ~ ~ Items[{Slot:9b}].Count
execute as @e[type=minecraft:marker,tag=ps_shop] at @s if entity @p[scores={ps_distance=0..2},distance=0..2] store result score @s ps_sell_remainer_2 run data get block ~ ~ ~ Items[{Slot:10b}].Count
execute as @e[type=minecraft:marker,tag=ps_shop] at @s if entity @p[scores={ps_distance=0..2},distance=0..2] store result score @s ps_sell_remainer_3 run data get block ~ ~ ~ Items[{Slot:11b}].Count
execute as @e[type=minecraft:marker,tag=ps_shop] at @s if entity @p[scores={ps_distance=0..2},distance=0..2] store result score @s ps_sell_remainer_4 run data get block ~ ~ ~ Items[{Slot:12b}].Count
execute as @e[type=minecraft:marker,tag=ps_shop] at @s if entity @p[scores={ps_distance=0..2},distance=0..2] store result score @s ps_sell_remainer_5 run data get block ~ ~ ~ Items[{Slot:13b}].Count
execute as @e[type=minecraft:marker,tag=ps_shop] at @s if entity @p[scores={ps_distance=0..2},distance=0..2] store result score @s ps_sell_remainer_6 run data get block ~ ~ ~ Items[{Slot:14b}].Count
execute as @e[type=minecraft:marker,tag=ps_shop] at @s if entity @p[scores={ps_distance=0..2},distance=0..2] store result score @s ps_sell_remainer_7 run data get block ~ ~ ~ Items[{Slot:15b}].Count
execute as @e[type=minecraft:marker,tag=ps_shop] at @s if entity @p[scores={ps_distance=0..2},distance=0..2] store result score @s ps_sell_remainer_8 run data get block ~ ~ ~ Items[{Slot:16b}].Count
execute as @e[type=minecraft:marker,tag=ps_shop] at @s if entity @p[scores={ps_distance=0..2},distance=0..2] store result score @s ps_sell_remainer_9 run data get block ~ ~ ~ Items[{Slot:17b}].Count

###########################################################################################
# Shop Admin Message:
###########################################################################################
tellraw @s [{"text": "[", "color": "white"}, {"text": "Mr_Chibi's Player Shop", "color": "#FF2682"}, {"text": "]", "color": "white"}, {"text": " Unlimited Selling has been enabled for this shop!", "color": "#A3A3A3"}] 

###########################################################################################
# Reset Command:
###########################################################################################
scoreboard players set @s[scores={ps_unlimited=1..}] ps_unlimited 0