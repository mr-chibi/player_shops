# Do Something:
execute if data entity @e[type=minecraft:interaction,tag=mcs_shop,distance=0..5,limit=1] {data:{type:"unlimited"}} run data modify entity @e[type=minecraft:interaction,tag=mcs_shop,distance=0..5,limit=1] data.type set value "limited"
execute if data entity @e[type=minecraft:interaction,tag=mcs_shop,distance=0..5,limit=1] {data:{type:"limited"}} run tellraw @s [{"text": "Shop has been set to limited!", "color": "green"}]

#
execute as @e[type=minecraft:interaction,tag=mcs_shop,distance=0..5,limit=1] at @s store result block ~ ~ ~ Items[{Slot:0b}].count int 1 run scoreboard players get @s mcs_limited_0
execute as @e[type=minecraft:interaction,tag=mcs_shop,distance=0..5,limit=1] at @s store result block ~ ~ ~ Items[{Slot:1b}].count int 1 run scoreboard players get @s mcs_limited_1
execute as @e[type=minecraft:interaction,tag=mcs_shop,distance=0..5,limit=1] at @s store result block ~ ~ ~ Items[{Slot:2b}].count int 1 run scoreboard players get @s mcs_limited_2
execute as @e[type=minecraft:interaction,tag=mcs_shop,distance=0..5,limit=1] at @s store result block ~ ~ ~ Items[{Slot:3b}].count int 1 run scoreboard players get @s mcs_limited_3
execute as @e[type=minecraft:interaction,tag=mcs_shop,distance=0..5,limit=1] at @s store result block ~ ~ ~ Items[{Slot:4b}].count int 1 run scoreboard players get @s mcs_limited_4
execute as @e[type=minecraft:interaction,tag=mcs_shop,distance=0..5,limit=1] at @s store result block ~ ~ ~ Items[{Slot:5b}].count int 1 run scoreboard players get @s mcs_limited_5
execute as @e[type=minecraft:interaction,tag=mcs_shop,distance=0..5,limit=1] at @s store result block ~ ~ ~ Items[{Slot:6b}].count int 1 run scoreboard players get @s mcs_limited_6
execute as @e[type=minecraft:interaction,tag=mcs_shop,distance=0..5,limit=1] at @s store result block ~ ~ ~ Items[{Slot:7b}].count int 1 run scoreboard players get @s mcs_limited_7
execute as @e[type=minecraft:interaction,tag=mcs_shop,distance=0..5,limit=1] at @s store result block ~ ~ ~ Items[{Slot:8b}].count int 1 run scoreboard players get @s mcs_limited_8

# Reset Command:
scoreboard players set @s[scores={mcs_limited=1..}] mcs_limited 0