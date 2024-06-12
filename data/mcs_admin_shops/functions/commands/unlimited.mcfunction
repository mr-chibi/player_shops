# Add "Unlimited" [Tag]
execute as @e[type=minecraft:marker,distance=0..5,sort=nearest,tag=mcs_shops,limit=1] at @s run tag @s add mcs_unlimited

# Save "Inventory" Counts:
execute as @e[type=minecraft:marker,distance=0..5,sort=nearest,tag=mcs_shops,tag=mcs_unlimited,limit=1] at @s store result score @s mcs_sell_orginal_slot_0 run data get block ~ ~ ~ Items[{Slot:0b}].count 
execute as @e[type=minecraft:marker,distance=0..5,sort=nearest,tag=mcs_shops,tag=mcs_unlimited,limit=1] at @s store result score @s mcs_sell_orginal_slot_1 run data get block ~ ~ ~ Items[{Slot:1b}].count 
execute as @e[type=minecraft:marker,distance=0..5,sort=nearest,tag=mcs_shops,tag=mcs_unlimited,limit=1] at @s store result score @s mcs_sell_orginal_slot_2 run data get block ~ ~ ~ Items[{Slot:2b}].count 
execute as @e[type=minecraft:marker,distance=0..5,sort=nearest,tag=mcs_shops,tag=mcs_unlimited,limit=1] at @s store result score @s mcs_sell_orginal_slot_3 run data get block ~ ~ ~ Items[{Slot:3b}].count 
execute as @e[type=minecraft:marker,distance=0..5,sort=nearest,tag=mcs_shops,tag=mcs_unlimited,limit=1] at @s store result score @s mcs_sell_orginal_slot_4 run data get block ~ ~ ~ Items[{Slot:4b}].count 
execute as @e[type=minecraft:marker,distance=0..5,sort=nearest,tag=mcs_shops,tag=mcs_unlimited,limit=1] at @s store result score @s mcs_sell_orginal_slot_5 run data get block ~ ~ ~ Items[{Slot:5b}].count 
execute as @e[type=minecraft:marker,distance=0..5,sort=nearest,tag=mcs_shops,tag=mcs_unlimited,limit=1] at @s store result score @s mcs_sell_orginal_slot_6 run data get block ~ ~ ~ Items[{Slot:6b}].count 
execute as @e[type=minecraft:marker,distance=0..5,sort=nearest,tag=mcs_shops,tag=mcs_unlimited,limit=1] at @s store result score @s mcs_sell_orginal_slot_7 run data get block ~ ~ ~ Items[{Slot:7b}].count 
execute as @e[type=minecraft:marker,distance=0..5,sort=nearest,tag=mcs_shops,tag=mcs_unlimited,limit=1] at @s store result score @s mcs_sell_orginal_slot_8 run data get block ~ ~ ~ Items[{Slot:8b}].count 

# Msg:
tellraw @s [{"text": "Updated to Admin Shop unlimited items!", "color": "green"}]

# Reset [Command]:
scoreboard players set @s[scores={mcs_unlimited=1..}] mcs_unlimited 0