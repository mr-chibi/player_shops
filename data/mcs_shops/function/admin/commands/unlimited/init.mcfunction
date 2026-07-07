# Do Something:
execute if data entity @e[type=minecraft:interaction,tag=mcs_shop,distance=0..5,limit=1] {data:{type:"limited"}} run data modify entity @e[type=minecraft:interaction,tag=mcs_shop,distance=0..5,limit=1] data.type set value "unlimited"
execute if data entity @e[type=minecraft:interaction,tag=mcs_shop,distance=0..5,limit=1] {data:{type:"unlimited"}} run tellraw @s [{"text": "Shop has been set to unlimited!", "color": "green"}]

#
execute as @e[type=minecraft:interaction,tag=mcs_shop,distance=0..5,limit=1] at @s store result score @s mcs_limited_0 run data get entity @s data.sell[0].Count
execute as @e[type=minecraft:interaction,tag=mcs_shop,distance=0..5,limit=1] at @s store result score @s mcs_limited_1 run data get entity @s data.sell[1].Count
execute as @e[type=minecraft:interaction,tag=mcs_shop,distance=0..5,limit=1] at @s store result score @s mcs_limited_2 run data get entity @s data.sell[2].Count
execute as @e[type=minecraft:interaction,tag=mcs_shop,distance=0..5,limit=1] at @s store result score @s mcs_limited_3 run data get entity @s data.sell[3].Count
execute as @e[type=minecraft:interaction,tag=mcs_shop,distance=0..5,limit=1] at @s store result score @s mcs_limited_4 run data get entity @s data.sell[4].Count
execute as @e[type=minecraft:interaction,tag=mcs_shop,distance=0..5,limit=1] at @s store result score @s mcs_limited_5 run data get entity @s data.sell[5].Count
execute as @e[type=minecraft:interaction,tag=mcs_shop,distance=0..5,limit=1] at @s store result score @s mcs_limited_6 run data get entity @s data.sell[6].Count
execute as @e[type=minecraft:interaction,tag=mcs_shop,distance=0..5,limit=1] at @s store result score @s mcs_limited_7 run data get entity @s data.sell[7].Count
execute as @e[type=minecraft:interaction,tag=mcs_shop,distance=0..5,limit=1] at @s store result score @s mcs_limited_8 run data get entity @s data.sell[8].Count

# Reset Command:
scoreboard players set @s[scores={mcs_unlimited=1..}] mcs_unlimited 0