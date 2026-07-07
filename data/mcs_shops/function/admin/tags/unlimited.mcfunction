# Reset Singular Items:
execute as @e[type=minecraft:interaction,tag=mcs_shop,distance=0..5] at @s if data entity @s {data:{type:"unlimited"}} run data modify block ~ ~ ~ Items[{Slot:0b}].count set value 64
execute as @e[type=minecraft:interaction,tag=mcs_shop,distance=0..5] at @s if data entity @s {data:{type:"unlimited"}} run data modify block ~ ~ ~ Items[{Slot:1b}].count set value 64
execute as @e[type=minecraft:interaction,tag=mcs_shop,distance=0..5] at @s if data entity @s {data:{type:"unlimited"}} run data modify block ~ ~ ~ Items[{Slot:2b}].count set value 64
execute as @e[type=minecraft:interaction,tag=mcs_shop,distance=0..5] at @s if data entity @s {data:{type:"unlimited"}} run data modify block ~ ~ ~ Items[{Slot:3b}].count set value 64
execute as @e[type=minecraft:interaction,tag=mcs_shop,distance=0..5] at @s if data entity @s {data:{type:"unlimited"}} run data modify block ~ ~ ~ Items[{Slot:4b}].count set value 64
execute as @e[type=minecraft:interaction,tag=mcs_shop,distance=0..5] at @s if data entity @s {data:{type:"unlimited"}} run data modify block ~ ~ ~ Items[{Slot:5b}].count set value 64
execute as @e[type=minecraft:interaction,tag=mcs_shop,distance=0..5] at @s if data entity @s {data:{type:"unlimited"}} run data modify block ~ ~ ~ Items[{Slot:6b}].count set value 64
execute as @e[type=minecraft:interaction,tag=mcs_shop,distance=0..5] at @s if data entity @s {data:{type:"unlimited"}} run data modify block ~ ~ ~ Items[{Slot:7b}].count set value 64
execute as @e[type=minecraft:interaction,tag=mcs_shop,distance=0..5] at @s if data entity @s {data:{type:"unlimited"}} run data modify block ~ ~ ~ Items[{Slot:8b}].count set value 64