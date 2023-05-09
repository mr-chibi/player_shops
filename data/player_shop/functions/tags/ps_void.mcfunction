###########################################################################################
# Player Shop, Test Message see if "numbers" are correct:
###########################################################################################
# execute as @e[type=minecraft:marker,tag=ps_shop] at @s if data entity @s {data:{ps_status:"lock"}} if entity @p[distance=0..2,scores={ps_distance=0..2}] run tellraw @p [{"text": "\n\n\nPlayer: "}, {"score":{"name": "@p", "objective": "ps_cart"}}, {"text": " | Shop Counts: "}, {"score":{"name": "@s", "objective": "ps_stock_remainer"}}]

###########################################################################################
# Player Shop, Add If Player entering more than, shop call sell then, add "Void Tag":
###########################################################################################
execute if score @s ps_view_pg matches 1 as @e[type=minecraft:marker,tag=ps_shop] at @s if data entity @s {data:{ps_status:"lock"}} if entity @p[distance=0..2,scores={ps_distance=0..2}] if score @p[tag=ps_cart] ps_cart >= @s ps_stock_remainer_1 run tag @p add ps_void
execute if score @s ps_view_pg matches 2 as @e[type=minecraft:marker,tag=ps_shop] at @s if data entity @s {data:{ps_status:"lock"}} if entity @p[distance=0..2,scores={ps_distance=0..2}] if score @p[tag=ps_cart] ps_cart >= @s ps_stock_remainer_2 run tag @p add ps_void
execute if score @s ps_view_pg matches 3 as @e[type=minecraft:marker,tag=ps_shop] at @s if data entity @s {data:{ps_status:"lock"}} if entity @p[distance=0..2,scores={ps_distance=0..2}] if score @p[tag=ps_cart] ps_cart >= @s ps_stock_remainer_3 run tag @p add ps_void
execute if score @s ps_view_pg matches 4 as @e[type=minecraft:marker,tag=ps_shop] at @s if data entity @s {data:{ps_status:"lock"}} if entity @p[distance=0..2,scores={ps_distance=0..2}] if score @p[tag=ps_cart] ps_cart >= @s ps_stock_remainer_4 run tag @p add ps_void
execute if score @s ps_view_pg matches 5 as @e[type=minecraft:marker,tag=ps_shop] at @s if data entity @s {data:{ps_status:"lock"}} if entity @p[distance=0..2,scores={ps_distance=0..2}] if score @p[tag=ps_cart] ps_cart >= @s ps_stock_remainer_5 run tag @p add ps_void
execute if score @s ps_view_pg matches 6 as @e[type=minecraft:marker,tag=ps_shop] at @s if data entity @s {data:{ps_status:"lock"}} if entity @p[distance=0..2,scores={ps_distance=0..2}] if score @p[tag=ps_cart] ps_cart >= @s ps_stock_remainer_6 run tag @p add ps_void
execute if score @s ps_view_pg matches 7 as @e[type=minecraft:marker,tag=ps_shop] at @s if data entity @s {data:{ps_status:"lock"}} if entity @p[distance=0..2,scores={ps_distance=0..2}] if score @p[tag=ps_cart] ps_cart >= @s ps_stock_remainer_7 run tag @p add ps_void
execute if score @s ps_view_pg matches 8 as @e[type=minecraft:marker,tag=ps_shop] at @s if data entity @s {data:{ps_status:"lock"}} if entity @p[distance=0..2,scores={ps_distance=0..2}] if score @p[tag=ps_cart] ps_cart >= @s ps_stock_remainer_8 run tag @p add ps_void
execute if score @s ps_view_pg matches 9 as @e[type=minecraft:marker,tag=ps_shop] at @s if data entity @s {data:{ps_status:"lock"}} if entity @p[distance=0..2,scores={ps_distance=0..2}] if score @p[tag=ps_cart] ps_cart >= @s ps_stock_remainer_9 run tag @p add ps_void

execute if score @s ps_view_pg matches 1 as @e[type=minecraft:marker,tag=ps_shop] at @s if data entity @s {data:{ps_status:"lock"}} if entity @p[distance=0..2,scores={ps_distance=0..2}] if score @p[tag=ps_cart] ps_cart <= @s ps_stock_remainer_1 run tag @p remove ps_void
execute if score @s ps_view_pg matches 2 as @e[type=minecraft:marker,tag=ps_shop] at @s if data entity @s {data:{ps_status:"lock"}} if entity @p[distance=0..2,scores={ps_distance=0..2}] if score @p[tag=ps_cart] ps_cart <= @s ps_stock_remainer_2 run tag @p remove ps_void
execute if score @s ps_view_pg matches 3 as @e[type=minecraft:marker,tag=ps_shop] at @s if data entity @s {data:{ps_status:"lock"}} if entity @p[distance=0..2,scores={ps_distance=0..2}] if score @p[tag=ps_cart] ps_cart <= @s ps_stock_remainer_3 run tag @p remove ps_void
execute if score @s ps_view_pg matches 4 as @e[type=minecraft:marker,tag=ps_shop] at @s if data entity @s {data:{ps_status:"lock"}} if entity @p[distance=0..2,scores={ps_distance=0..2}] if score @p[tag=ps_cart] ps_cart <= @s ps_stock_remainer_4 run tag @p remove ps_void
execute if score @s ps_view_pg matches 5 as @e[type=minecraft:marker,tag=ps_shop] at @s if data entity @s {data:{ps_status:"lock"}} if entity @p[distance=0..2,scores={ps_distance=0..2}] if score @p[tag=ps_cart] ps_cart <= @s ps_stock_remainer_5 run tag @p remove ps_void
execute if score @s ps_view_pg matches 6 as @e[type=minecraft:marker,tag=ps_shop] at @s if data entity @s {data:{ps_status:"lock"}} if entity @p[distance=0..2,scores={ps_distance=0..2}] if score @p[tag=ps_cart] ps_cart <= @s ps_stock_remainer_6 run tag @p remove ps_void
execute if score @s ps_view_pg matches 7 as @e[type=minecraft:marker,tag=ps_shop] at @s if data entity @s {data:{ps_status:"lock"}} if entity @p[distance=0..2,scores={ps_distance=0..2}] if score @p[tag=ps_cart] ps_cart <= @s ps_stock_remainer_7 run tag @p remove ps_void
execute if score @s ps_view_pg matches 8 as @e[type=minecraft:marker,tag=ps_shop] at @s if data entity @s {data:{ps_status:"lock"}} if entity @p[distance=0..2,scores={ps_distance=0..2}] if score @p[tag=ps_cart] ps_cart <= @s ps_stock_remainer_8 run tag @p remove ps_void
execute if score @s ps_view_pg matches 9 as @e[type=minecraft:marker,tag=ps_shop] at @s if data entity @s {data:{ps_status:"lock"}} if entity @p[distance=0..2,scores={ps_distance=0..2}] if score @p[tag=ps_cart] ps_cart <= @s ps_stock_remainer_9 run tag @p remove ps_void


######################################################################################################################################################################################
# Player Shop, [Buy Item], check if "player" 0-2 blocks Next, Substract [Player Shop Stock] from [Shopping Player's Cart]:
######################################################################################################################################################################################
execute if score @s ps_view_pg matches 1 as @e[type=minecraft:marker,tag=ps_shop,sort=nearest,distance=0..2] at @s if entity @p[distance=0..2,scores={ps_distance=0..2}] run scoreboard players operation @s ps_stock_remainer_1 -= @p[tag=ps_cart] ps_cart
execute if score @s ps_view_pg matches 2 as @e[type=minecraft:marker,tag=ps_shop,sort=nearest,distance=0..2] at @s if entity @p[distance=0..2,scores={ps_distance=0..2}] run scoreboard players operation @s ps_stock_remainer_2 -= @p[tag=ps_cart] ps_cart
execute if score @s ps_view_pg matches 3 as @e[type=minecraft:marker,tag=ps_shop,sort=nearest,distance=0..2] at @s if entity @p[distance=0..2,scores={ps_distance=0..2}] run scoreboard players operation @s ps_stock_remainer_3 -= @p[tag=ps_cart] ps_cart
execute if score @s ps_view_pg matches 4 as @e[type=minecraft:marker,tag=ps_shop,sort=nearest,distance=0..2] at @s if entity @p[distance=0..2,scores={ps_distance=0..2}] run scoreboard players operation @s ps_stock_remainer_4 -= @p[tag=ps_cart] ps_cart
execute if score @s ps_view_pg matches 5 as @e[type=minecraft:marker,tag=ps_shop,sort=nearest,distance=0..2] at @s if entity @p[distance=0..2,scores={ps_distance=0..2}] run scoreboard players operation @s ps_stock_remainer_5 -= @p[tag=ps_cart] ps_cart
execute if score @s ps_view_pg matches 6 as @e[type=minecraft:marker,tag=ps_shop,sort=nearest,distance=0..2] at @s if entity @p[distance=0..2,scores={ps_distance=0..2}] run scoreboard players operation @s ps_stock_remainer_6 -= @p[tag=ps_cart] ps_cart
execute if score @s ps_view_pg matches 7 as @e[type=minecraft:marker,tag=ps_shop,sort=nearest,distance=0..2] at @s if entity @p[distance=0..2,scores={ps_distance=0..2}] run scoreboard players operation @s ps_stock_remainer_7 -= @p[tag=ps_cart] ps_cart
execute if score @s ps_view_pg matches 8 as @e[type=minecraft:marker,tag=ps_shop,sort=nearest,distance=0..2] at @s if entity @p[distance=0..2,scores={ps_distance=0..2}] run scoreboard players operation @s ps_stock_remainer_8 -= @p[tag=ps_cart] ps_cart
execute if score @s ps_view_pg matches 9 as @e[type=minecraft:marker,tag=ps_shop,sort=nearest,distance=0..2] at @s if entity @p[distance=0..2,scores={ps_distance=0..2}] run scoreboard players operation @s ps_stock_remainer_9 -= @p[tag=ps_cart] ps_cart

###########################################################################################
# Player Shop, Void [Error Message]:
###########################################################################################
tellraw @s[tag=ps_void] [{"text": "[", "color": "white"}, {"text": "Mr_Chibi's Player Shop", "color": "#FF2682"}, {"text": "]", "color": "white"}, {"text": " Error, the <amount> you entered shop doens't have enough! The transaction has been voided.", "color": "#A3A3A3"}]

###########################################################################################
# Player Shop, Reset Shop "Scoreboards":
###########################################################################################
execute as @e[type=minecraft:marker,tag=ps_shop] at @s if entity @p[distance=0..2,scores={ps_distance=0..2},tag=ps_void] run scoreboard players reset @s ps_stock
execute if score @s ps_view_pg matches 1 as @e[type=minecraft:marker,tag=ps_shop] at @s if entity @p[distance=0..2,scores={ps_distance=0..2},tag=ps_void] run scoreboard players reset @s ps_stock_remainer_1
execute if score @s ps_view_pg matches 2 as @e[type=minecraft:marker,tag=ps_shop] at @s if entity @p[distance=0..2,scores={ps_distance=0..2},tag=ps_void] run scoreboard players reset @s ps_stock_remainer_2
execute if score @s ps_view_pg matches 3 as @e[type=minecraft:marker,tag=ps_shop] at @s if entity @p[distance=0..2,scores={ps_distance=0..2},tag=ps_void] run scoreboard players reset @s ps_stock_remainer_3
execute if score @s ps_view_pg matches 4 as @e[type=minecraft:marker,tag=ps_shop] at @s if entity @p[distance=0..2,scores={ps_distance=0..2},tag=ps_void] run scoreboard players reset @s ps_stock_remainer_4
execute if score @s ps_view_pg matches 5 as @e[type=minecraft:marker,tag=ps_shop] at @s if entity @p[distance=0..2,scores={ps_distance=0..2},tag=ps_void] run scoreboard players reset @s ps_stock_remainer_5
execute if score @s ps_view_pg matches 6 as @e[type=minecraft:marker,tag=ps_shop] at @s if entity @p[distance=0..2,scores={ps_distance=0..2},tag=ps_void] run scoreboard players reset @s ps_stock_remainer_6
execute if score @s ps_view_pg matches 7 as @e[type=minecraft:marker,tag=ps_shop] at @s if entity @p[distance=0..2,scores={ps_distance=0..2},tag=ps_void] run scoreboard players reset @s ps_stock_remainer_7
execute if score @s ps_view_pg matches 8 as @e[type=minecraft:marker,tag=ps_shop] at @s if entity @p[distance=0..2,scores={ps_distance=0..2},tag=ps_void] run scoreboard players reset @s ps_stock_remainer_8
execute if score @s ps_view_pg matches 9 as @e[type=minecraft:marker,tag=ps_shop] at @s if entity @p[distance=0..2,scores={ps_distance=0..2},tag=ps_void] run scoreboard players reset @s ps_stock_remainer_9
execute as @e[type=minecraft:marker,tag=ps_shop] at @s if entity @p[distance=0..2,scores={ps_distance=0..2},tag=ps_void] run scoreboard players reset @p ps_cart

###########################################################################################
# Player Shop, Remove "Entity":
###########################################################################################
execute as @e[type=minecraft:item,tag=ps_buy] at @s if entity @p[distance=0..2,scores={ps_distance=0..2}] if score @s ps_id = @p[distance=0..2,scores={ps_distance=0..2},tag=ps_void] ps_id run kill @s

###########################################################################################
# Player Shop, Reset "Scoreboards":
###########################################################################################
scoreboard players reset @s[tag=ps_void] ps_sending
scoreboard players reset @s[tag=ps_void] ps_buy

###########################################################################################
# Player Shop, Remove "Tags":
###########################################################################################
tag @s[tag=ps_void] remove ps_cart
tag @s[tag=ps_void] remove ps_void