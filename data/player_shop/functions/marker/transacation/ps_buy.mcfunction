# Get "Int" Shop [Selling Stock]:
execute as @s[tag=ps_cart] if score @s ps_view_pg matches 1 as @e[type=minecraft:marker,tag=ps_shop] at @s if data entity @s {data:{ps_status:"lock"}} if entity @p[distance=0..2,scores={ps_distance=0..2}] if score @p ps_cart matches 0 store result block ~ ~ ~ Items[{Slot:9b}].Count int 1 run scoreboard players get @s ps_stock_remainer_1
execute as @s[tag=ps_cart] if score @s ps_view_pg matches 2 as @e[type=minecraft:marker,tag=ps_shop] at @s if data entity @s {data:{ps_status:"lock"}} if entity @p[distance=0..2,scores={ps_distance=0..2}] if score @p ps_cart matches 0 store result block ~ ~ ~ Items[{Slot:10b}].Count int 1 run scoreboard players get @s ps_stock_remainer_2
execute as @s[tag=ps_cart] if score @s ps_view_pg matches 3 as @e[type=minecraft:marker,tag=ps_shop] at @s if data entity @s {data:{ps_status:"lock"}} if entity @p[distance=0..2,scores={ps_distance=0..2}] if score @p ps_cart matches 0 store result block ~ ~ ~ Items[{Slot:11b}].Count int 1 run scoreboard players get @s ps_stock_remainer_3
execute as @s[tag=ps_cart] if score @s ps_view_pg matches 4 as @e[type=minecraft:marker,tag=ps_shop] at @s if data entity @s {data:{ps_status:"lock"}} if entity @p[distance=0..2,scores={ps_distance=0..2}] if score @p ps_cart matches 0 store result block ~ ~ ~ Items[{Slot:12b}].Count int 1 run scoreboard players get @s ps_stock_remainer_4
execute as @s[tag=ps_cart] if score @s ps_view_pg matches 5 as @e[type=minecraft:marker,tag=ps_shop] at @s if data entity @s {data:{ps_status:"lock"}} if entity @p[distance=0..2,scores={ps_distance=0..2}] if score @p ps_cart matches 0 store result block ~ ~ ~ Items[{Slot:13b}].Count int 1 run scoreboard players get @s ps_stock_remainer_5
execute as @s[tag=ps_cart] if score @s ps_view_pg matches 6 as @e[type=minecraft:marker,tag=ps_shop] at @s if data entity @s {data:{ps_status:"lock"}} if entity @p[distance=0..2,scores={ps_distance=0..2}] if score @p ps_cart matches 0 store result block ~ ~ ~ Items[{Slot:14b}].Count int 1 run scoreboard players get @s ps_stock_remainer_6
execute as @s[tag=ps_cart] if score @s ps_view_pg matches 7 as @e[type=minecraft:marker,tag=ps_shop] at @s if data entity @s {data:{ps_status:"lock"}} if entity @p[distance=0..2,scores={ps_distance=0..2}] if score @p ps_cart matches 0 store result block ~ ~ ~ Items[{Slot:15b}].Count int 1 run scoreboard players get @s ps_stock_remainer_7
execute as @s[tag=ps_cart] if score @s ps_view_pg matches 8 as @e[type=minecraft:marker,tag=ps_shop] at @s if data entity @s {data:{ps_status:"lock"}} if entity @p[distance=0..2,scores={ps_distance=0..2}] if score @p ps_cart matches 0 store result block ~ ~ ~ Items[{Slot:16b}].Count int 1 run scoreboard players get @s ps_stock_remainer_8
execute as @s[tag=ps_cart] if score @s ps_view_pg matches 9 as @e[type=minecraft:marker,tag=ps_shop] at @s if data entity @s {data:{ps_status:"lock"}} if entity @p[distance=0..2,scores={ps_distance=0..2}] if score @p ps_cart matches 0 store result block ~ ~ ~ Items[{Slot:17b}].Count int 1 run scoreboard players get @s ps_stock_remainer_9


# Update Shop [Counts] in [Stock]:
execute as @s[tag=ps_cart] if score @s ps_view_pg matches 1 as @e[type=minecraft:marker,tag=ps_shop] at @s if data entity @s {data:{ps_status:"lock"}} if entity @p[distance=0..2,scores={ps_distance=0..2}] if score @p ps_cart matches 0 run scoreboard players operation @s ps_stock = @s ps_stock_remainer_1
execute as @s[tag=ps_cart] if score @s ps_view_pg matches 2 as @e[type=minecraft:marker,tag=ps_shop] at @s if data entity @s {data:{ps_status:"lock"}} if entity @p[distance=0..2,scores={ps_distance=0..2}] if score @p ps_cart matches 0 run scoreboard players operation @s ps_stock = @s ps_stock_remainer_2
execute as @s[tag=ps_cart] if score @s ps_view_pg matches 3 as @e[type=minecraft:marker,tag=ps_shop] at @s if data entity @s {data:{ps_status:"lock"}} if entity @p[distance=0..2,scores={ps_distance=0..2}] if score @p ps_cart matches 0 run scoreboard players operation @s ps_stock = @s ps_stock_remainer_3
execute as @s[tag=ps_cart] if score @s ps_view_pg matches 4 as @e[type=minecraft:marker,tag=ps_shop] at @s if data entity @s {data:{ps_status:"lock"}} if entity @p[distance=0..2,scores={ps_distance=0..2}] if score @p ps_cart matches 0 run scoreboard players operation @s ps_stock = @s ps_stock_remainer_4
execute as @s[tag=ps_cart] if score @s ps_view_pg matches 5 as @e[type=minecraft:marker,tag=ps_shop] at @s if data entity @s {data:{ps_status:"lock"}} if entity @p[distance=0..2,scores={ps_distance=0..2}] if score @p ps_cart matches 0 run scoreboard players operation @s ps_stock = @s ps_stock_remainer_5
execute as @s[tag=ps_cart] if score @s ps_view_pg matches 6 as @e[type=minecraft:marker,tag=ps_shop] at @s if data entity @s {data:{ps_status:"lock"}} if entity @p[distance=0..2,scores={ps_distance=0..2}] if score @p ps_cart matches 0 run scoreboard players operation @s ps_stock = @s ps_stock_remainer_6
execute as @s[tag=ps_cart] if score @s ps_view_pg matches 7 as @e[type=minecraft:marker,tag=ps_shop] at @s if data entity @s {data:{ps_status:"lock"}} if entity @p[distance=0..2,scores={ps_distance=0..2}] if score @p ps_cart matches 0 run scoreboard players operation @s ps_stock = @s ps_stock_remainer_7
execute as @s[tag=ps_cart] if score @s ps_view_pg matches 8 as @e[type=minecraft:marker,tag=ps_shop] at @s if data entity @s {data:{ps_status:"lock"}} if entity @p[distance=0..2,scores={ps_distance=0..2}] if score @p ps_cart matches 0 run scoreboard players operation @s ps_stock = @s ps_stock_remainer_8
execute as @s[tag=ps_cart] if score @s ps_view_pg matches 9 as @e[type=minecraft:marker,tag=ps_shop] at @s if data entity @s {data:{ps_status:"lock"}} if entity @p[distance=0..2,scores={ps_distance=0..2}] if score @p ps_cart matches 0 run scoreboard players operation @s ps_stock = @s ps_stock_remainer_9

# Purchase Sound:
execute as @s[tag=ps_cart] as @e[type=minecraft:item,tag=ps_buy] at @s if entity @p[distance=0..2,scores={ps_distance=0..2}] if score @s ps_id = @p[distance=0..2,scores={ps_distance=0..2},tag=ps_cart] ps_id if score @p ps_cart matches 0 run playsound minecraft:entity.experience_orb.pickup master @p ~ ~ ~ 5 1.5

# Remove Shop Item floating:
execute as @s[tag=ps_cart] as @e[type=minecraft:item,tag=ps_buy] at @s if entity @p[distance=0..2,scores={ps_distance=0..2}] if score @s ps_id = @p[distance=0..2,scores={ps_distance=0..2},tag=ps_cart] ps_id if score @p ps_cart matches 0 run kill @s