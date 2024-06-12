# Revert back "Inventory" Counts:
execute as @e[type=minecraft:marker,distance=0..5,sort=nearest,tag=mcs_shops,tag=mcs_unlimited,limit=1] at @s store result block ~ ~ ~ Items[{Slot:0b}].count int 1 run scoreboard players get @s mcs_sell_orginal_slot_0
execute as @e[type=minecraft:marker,distance=0..5,sort=nearest,tag=mcs_shops,tag=mcs_unlimited,limit=1] at @s store result block ~ ~ ~ Items[{Slot:1b}].count int 1 run scoreboard players get @s mcs_sell_orginal_slot_1
execute as @e[type=minecraft:marker,distance=0..5,sort=nearest,tag=mcs_shops,tag=mcs_unlimited,limit=1] at @s store result block ~ ~ ~ Items[{Slot:2b}].count int 1 run scoreboard players get @s mcs_sell_orginal_slot_2
execute as @e[type=minecraft:marker,distance=0..5,sort=nearest,tag=mcs_shops,tag=mcs_unlimited,limit=1] at @s store result block ~ ~ ~ Items[{Slot:3b}].count int 1 run scoreboard players get @s mcs_sell_orginal_slot_3
execute as @e[type=minecraft:marker,distance=0..5,sort=nearest,tag=mcs_shops,tag=mcs_unlimited,limit=1] at @s store result block ~ ~ ~ Items[{Slot:4b}].count int 1 run scoreboard players get @s mcs_sell_orginal_slot_4
execute as @e[type=minecraft:marker,distance=0..5,sort=nearest,tag=mcs_shops,tag=mcs_unlimited,limit=1] at @s store result block ~ ~ ~ Items[{Slot:5b}].count int 1 run scoreboard players get @s mcs_sell_orginal_slot_5
execute as @e[type=minecraft:marker,distance=0..5,sort=nearest,tag=mcs_shops,tag=mcs_unlimited,limit=1] at @s store result block ~ ~ ~ Items[{Slot:6b}].count int 1 run scoreboard players get @s mcs_sell_orginal_slot_6
execute as @e[type=minecraft:marker,distance=0..5,sort=nearest,tag=mcs_shops,tag=mcs_unlimited,limit=1] at @s store result block ~ ~ ~ Items[{Slot:7b}].count int 1 run scoreboard players get @s mcs_sell_orginal_slot_7
execute as @e[type=minecraft:marker,distance=0..5,sort=nearest,tag=mcs_shops,tag=mcs_unlimited,limit=1] at @s store result block ~ ~ ~ Items[{Slot:8b}].count int 1 run scoreboard players get @s mcs_sell_orginal_slot_8

# Remove "Unlimited" [Tag]:
execute as @e[type=minecraft:marker,distance=0..5,sort=nearest,tag=mcs_shops,limit=1] at @s run tag @s remove mcs_unlimited

# Msg:
tellraw @s [{"text": "Shop Revert back to orginal inventory!", "color": "green"}]

# Reset [Command]:
scoreboard players set @s[scores={mcs_limited=1..}] mcs_limited 0