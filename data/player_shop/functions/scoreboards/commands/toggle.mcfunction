###########################################################################################
# Player Shop, Commands Toggled, by "Player":
###########################################################################################
execute if score @s ps_create matches 1 run function player_shop:commands/create
execute if score @s ps_buy matches 1.. run function player_shop:commands/buy
execute if score @s ps_edit matches 1 run function player_shop:commands/edit
execute if score @s ps_particles matches 1.. run function player_shop:commands/particles
execute if score @s[team=!ps_admin] ps_remove matches 1 run function player_shop:commands/remove


###########################################################################################
# Player Shop, "Help" Pages:
###########################################################################################
execute if score @s ps_help matches 1 run function player_shop:commands/help/1
execute if score @s ps_help matches 2 run function player_shop:commands/help/2
execute if score @s ps_help matches 3 run function player_shop:commands/help/3


###########################################################################################
# Player Shop, "Toggle" Pages:
###########################################################################################
execute as @e[type=minecraft:marker,tag=ps_shop] at @s if data entity @s {data:{ps_status:"lock"}} as @a at @s[distance=0..2,scores={ps_distance=0..2}] if score @s ps_page matches 1 run function player_shop:marker/gui/pages/1
execute as @e[type=minecraft:marker,tag=ps_shop] at @s if data entity @s {data:{ps_status:"lock"}} as @a at @s[distance=0..2,scores={ps_distance=0..2}] if score @s ps_page matches 2 run function player_shop:marker/gui/pages/2
execute as @e[type=minecraft:marker,tag=ps_shop] at @s if data entity @s {data:{ps_status:"lock"}} as @a at @s[distance=0..2,scores={ps_distance=0..2}] if score @s ps_page matches 3 run function player_shop:marker/gui/pages/3
execute as @e[type=minecraft:marker,tag=ps_shop] at @s if data entity @s {data:{ps_status:"lock"}} as @a at @s[distance=0..2,scores={ps_distance=0..2}] if score @s ps_page matches 4 run function player_shop:marker/gui/pages/4
execute as @e[type=minecraft:marker,tag=ps_shop] at @s if data entity @s {data:{ps_status:"lock"}} as @a at @s[distance=0..2,scores={ps_distance=0..2}] if score @s ps_page matches 5 run function player_shop:marker/gui/pages/5
execute as @e[type=minecraft:marker,tag=ps_shop] at @s if data entity @s {data:{ps_status:"lock"}} as @a at @s[distance=0..2,scores={ps_distance=0..2}] if score @s ps_page matches 6 run function player_shop:marker/gui/pages/6
execute as @e[type=minecraft:marker,tag=ps_shop] at @s if data entity @s {data:{ps_status:"lock"}} as @a at @s[distance=0..2,scores={ps_distance=0..2}] if score @s ps_page matches 7 run function player_shop:marker/gui/pages/7
execute as @e[type=minecraft:marker,tag=ps_shop] at @s if data entity @s {data:{ps_status:"lock"}} as @a at @s[distance=0..2,scores={ps_distance=0..2}] if score @s ps_page matches 8 run function player_shop:marker/gui/pages/8
execute as @e[type=minecraft:marker,tag=ps_shop] at @s if data entity @s {data:{ps_status:"lock"}} as @a at @s[distance=0..2,scores={ps_distance=0..2}] if score @s ps_page matches 9 run function player_shop:marker/gui/pages/9 


###########################################################################################
# Player Shop, "Player" shop owner "recieving" [Payment]:
###########################################################################################
execute as @s[tag=!ps_void,tag=ps_cart,tag=ps_payment_accept] run function player_shop:marker/transacation/data/ps_count_recieved


###########################################################################################
# Player Shop, "Player" is viewing "Page", to "buy" what shop is "selling":
###########################################################################################
execute as @e[type=minecraft:marker,tag=ps_shop] at @s if data entity @s {data:{ps_status:"lock"}} as @a at @s[distance=0..2,scores={ps_distance=0..2},tag=!ps_void,tag=ps_cart,tag=ps_payment_accept] if score @s ps_view_pg matches 1 if score @s ps_cart matches 1.. run function player_shop:marker/transacation/pages/1
execute as @e[type=minecraft:marker,tag=ps_shop] at @s if data entity @s {data:{ps_status:"lock"}} as @a at @s[distance=0..2,scores={ps_distance=0..2},tag=!ps_void,tag=ps_cart,tag=ps_payment_accept] if score @s ps_view_pg matches 2 if score @s ps_cart matches 1.. run function player_shop:marker/transacation/pages/2
execute as @e[type=minecraft:marker,tag=ps_shop] at @s if data entity @s {data:{ps_status:"lock"}} as @a at @s[distance=0..2,scores={ps_distance=0..2},tag=!ps_void,tag=ps_cart,tag=ps_payment_accept] if score @s ps_view_pg matches 3 if score @s ps_cart matches 1.. run function player_shop:marker/transacation/pages/3
execute as @e[type=minecraft:marker,tag=ps_shop] at @s if data entity @s {data:{ps_status:"lock"}} as @a at @s[distance=0..2,scores={ps_distance=0..2},tag=!ps_void,tag=ps_cart,tag=ps_payment_accept] if score @s ps_view_pg matches 4 if score @s ps_cart matches 1.. run function player_shop:marker/transacation/pages/4
execute as @e[type=minecraft:marker,tag=ps_shop] at @s if data entity @s {data:{ps_status:"lock"}} as @a at @s[distance=0..2,scores={ps_distance=0..2},tag=!ps_void,tag=ps_cart,tag=ps_payment_accept] if score @s ps_view_pg matches 5 if score @s ps_cart matches 1.. run function player_shop:marker/transacation/pages/5
execute as @e[type=minecraft:marker,tag=ps_shop] at @s if data entity @s {data:{ps_status:"lock"}} as @a at @s[distance=0..2,scores={ps_distance=0..2},tag=!ps_void,tag=ps_cart,tag=ps_payment_accept] if score @s ps_view_pg matches 6 if score @s ps_cart matches 1.. run function player_shop:marker/transacation/pages/6
execute as @e[type=minecraft:marker,tag=ps_shop] at @s if data entity @s {data:{ps_status:"lock"}} as @a at @s[distance=0..2,scores={ps_distance=0..2},tag=!ps_void,tag=ps_cart,tag=ps_payment_accept] if score @s ps_view_pg matches 7 if score @s ps_cart matches 1.. run function player_shop:marker/transacation/pages/7
execute as @e[type=minecraft:marker,tag=ps_shop] at @s if data entity @s {data:{ps_status:"lock"}} as @a at @s[distance=0..2,scores={ps_distance=0..2},tag=!ps_void,tag=ps_cart,tag=ps_payment_accept] if score @s ps_view_pg matches 8 if score @s ps_cart matches 1.. run function player_shop:marker/transacation/pages/8
execute as @e[type=minecraft:marker,tag=ps_shop] at @s if data entity @s {data:{ps_status:"lock"}} as @a at @s[distance=0..2,scores={ps_distance=0..2},tag=!ps_void,tag=ps_cart,tag=ps_payment_accept] if score @s ps_view_pg matches 9 if score @s ps_cart matches 1.. run function player_shop:marker/transacation/pages/9


###########################################################################################
# Player Shop, Reset Command:
###########################################################################################
scoreboard players reset @s[scores={ps_page=1..}] ps_page
scoreboard players reset @s[scores={ps_help=1..}] ps_help