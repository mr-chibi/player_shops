execute as @e[type=minecraft:interaction,distance=0..5,tag=mcs_shop] at @s run function #mcs_engine:stock
execute as @e[type=minecraft:interaction,distance=0..5,tag=mcs_shop] at @s run function #mcs_engine:empty

#
execute as @e[type=minecraft:item_display,distance=0..5] at @s if block ~ ~-1 ~ minecraft:chest run tp @s ~ ~ ~ ~5.5 ~