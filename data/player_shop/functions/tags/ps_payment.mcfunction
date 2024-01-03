###########################################################################################
# Player Shop, Ensure player has correct item for shop and inventory & count player's wallet:
###########################################################################################
function #player_shop:approve

#
execute as @e[type=minecraft:marker,tag=ps_shop] at @s run tellraw @p[distance=0..2,tag=ps_cart] [{"text": "\n\n\nPlayer: "}, {"score":{"name": "@p", "objective": "ps_wallet"}}, {"text": " | Shop Counts: "}, {"score":{"name": "@s", "objective": "ps_stock_remainer"}}]

###########################################################################################
# Player Shop, Decline [Tag]:
###########################################################################################
execute if score @p ps_wallet matches 0 run tag @p add ps_payment_decline

###########################################################################################
# Player Shop, Accept [Tag]:
###########################################################################################
execute as @e[type=minecraft:marker,tag=ps_shop] at @s if score @p ps_view_pg matches 1 if score @p ps_wallet >= @s ps_stock_remainer_1 run tag @p[tag=!ps_payment_accept] add ps_payment_accept
execute as @e[type=minecraft:marker,tag=ps_shop] at @s if score @p ps_view_pg matches 1 if score @p ps_wallet <= @s ps_stock_remainer_1 run tag @p[tag=!ps_payment_accept] add ps_payment_accept

execute as @e[type=minecraft:marker,tag=ps_shop] at @s if score @p ps_view_pg matches 2 if score @p ps_wallet >= @s ps_stock_remainer_2 run tag @p[tag=!ps_payment_accept] add ps_payment_accept
execute as @e[type=minecraft:marker,tag=ps_shop] at @s if score @p ps_view_pg matches 2 if score @p ps_wallet <= @s ps_stock_remainer_2 run tag @p[tag=!ps_payment_accept] add ps_payment_accept

execute as @e[type=minecraft:marker,tag=ps_shop] at @s if score @p ps_view_pg matches 3 if score @p ps_wallet >= @s ps_stock_remainer_3 run tag @p[tag=!ps_payment_accept] add ps_payment_accept
execute as @e[type=minecraft:marker,tag=ps_shop] at @s if score @p ps_view_pg matches 3 if score @p ps_wallet <= @s ps_stock_remainer_3 run tag @p[tag=!ps_payment_accept] add ps_payment_accept

execute as @e[type=minecraft:marker,tag=ps_shop] at @s if score @p ps_view_pg matches 4 if score @p ps_wallet >= @s ps_stock_remainer_4 run tag @p[tag=!ps_payment_accept] add ps_payment_accept
execute as @e[type=minecraft:marker,tag=ps_shop] at @s if score @p ps_view_pg matches 4 if score @p ps_wallet <= @s ps_stock_remainer_4 run tag @p[tag=!ps_payment_accept] add ps_payment_accept

execute as @e[type=minecraft:marker,tag=ps_shop] at @s if score @p ps_view_pg matches 5 if score @p ps_wallet >= @s ps_stock_remainer_5 run tag @p[tag=!ps_payment_accept] add ps_payment_accept
execute as @e[type=minecraft:marker,tag=ps_shop] at @s if score @p ps_view_pg matches 5 if score @p ps_wallet <= @s ps_stock_remainer_5 run tag @p[tag=!ps_payment_accept] add ps_payment_accept

execute as @e[type=minecraft:marker,tag=ps_shop] at @s if score @p ps_view_pg matches 6 if score @p ps_wallet >= @s ps_stock_remainer_6 run tag @p[tag=!ps_payment_accept] add ps_payment_accept
execute as @e[type=minecraft:marker,tag=ps_shop] at @s if score @p ps_view_pg matches 6 if score @p ps_wallet <= @s ps_stock_remainer_6 run tag @p[tag=!ps_payment_accept] add ps_payment_accept

execute as @e[type=minecraft:marker,tag=ps_shop] at @s if score @p ps_view_pg matches 7 if score @p ps_wallet >= @s ps_stock_remainer_7 run tag @p[tag=!ps_payment_accept] add ps_payment_accept
execute as @e[type=minecraft:marker,tag=ps_shop] at @s if score @p ps_view_pg matches 7 if score @p ps_wallet <= @s ps_stock_remainer_7 run tag @p[tag=!ps_payment_accept] add ps_payment_accept

execute as @e[type=minecraft:marker,tag=ps_shop] at @s if score @p ps_view_pg matches 8 if score @p ps_wallet >= @s ps_stock_remainer_8 run tag @p[tag=!ps_payment_accept] add ps_payment_accept
execute as @e[type=minecraft:marker,tag=ps_shop] at @s if score @p ps_view_pg matches 8 if score @p ps_wallet <= @s ps_stock_remainer_8 run tag @p[tag=!ps_payment_accept] add ps_payment_accept

execute as @e[type=minecraft:marker,tag=ps_shop] at @s if score @p ps_view_pg matches 9 if score @p ps_wallet >= @s ps_stock_remainer_9 run tag @p[tag=!ps_payment_accept] add ps_payment_accept
execute as @e[type=minecraft:marker,tag=ps_shop] at @s if score @p ps_view_pg matches 9 if score @p ps_wallet <= @s ps_stock_remainer_9 run tag @p[tag=!ps_payment_accept] add ps_payment_accept

###########################################################################################
# Player Shop, Decline [Error Message]:
###########################################################################################
tellraw @p[tag=ps_payment_decline] [{"text": "[", "color": "white"}, {"text": "Mr_Chibi's Player Shop", "color": "#FF2682"}, {"text": "]", "color": "white"}, {"text": " Error, you don't have enough in your wallet. Your purchase has been voided! ", "color": "#A3A3A3"}, {"selector": "@p[sort=nearest]"}]

###########################################################################################
# Player Shop, Reset Shop "Scoreboards":
###########################################################################################
execute as @e[type=minecraft:marker,tag=ps_shop] at @s if entity @p[distance=0..2,scores={ps_distance=0..2},tag=ps_payment_decline] run scoreboard players reset @p ps_stock
execute as @e[type=minecraft:marker,tag=ps_shop] at @s if entity @p[distance=0..2,scores={ps_distance=0..2},tag=ps_payment_decline] if score @p ps_view_pg matches 1 run scoreboard players reset @p ps_stock_remainer_1
execute as @e[type=minecraft:marker,tag=ps_shop] at @s if entity @p[distance=0..2,scores={ps_distance=0..2},tag=ps_payment_decline] if score @p ps_view_pg matches 2 run scoreboard players reset @p ps_stock_remainer_2
execute as @e[type=minecraft:marker,tag=ps_shop] at @s if entity @p[distance=0..2,scores={ps_distance=0..2},tag=ps_payment_decline] if score @p ps_view_pg matches 3 run scoreboard players reset @p ps_stock_remainer_3
execute as @e[type=minecraft:marker,tag=ps_shop] at @s if entity @p[distance=0..2,scores={ps_distance=0..2},tag=ps_payment_decline] if score @p ps_view_pg matches 4 run scoreboard players reset @p ps_stock_remainer_4
execute as @e[type=minecraft:marker,tag=ps_shop] at @s if entity @p[distance=0..2,scores={ps_distance=0..2},tag=ps_payment_decline] if score @p ps_view_pg matches 5 run scoreboard players reset @p ps_stock_remainer_5
execute as @e[type=minecraft:marker,tag=ps_shop] at @s if entity @p[distance=0..2,scores={ps_distance=0..2},tag=ps_payment_decline] if score @p ps_view_pg matches 6 run scoreboard players reset @p ps_stock_remainer_6
execute as @e[type=minecraft:marker,tag=ps_shop] at @s if entity @p[distance=0..2,scores={ps_distance=0..2},tag=ps_payment_decline] if score @p ps_view_pg matches 7 run scoreboard players reset @p ps_stock_remainer_7
execute as @e[type=minecraft:marker,tag=ps_shop] at @s if entity @p[distance=0..2,scores={ps_distance=0..2},tag=ps_payment_decline] if score @p ps_view_pg matches 8 run scoreboard players reset @p ps_stock_remainer_8
execute as @e[type=minecraft:marker,tag=ps_shop] at @s if entity @p[distance=0..2,scores={ps_distance=0..2},tag=ps_payment_decline] if score @p ps_view_pg matches 9 run scoreboard players reset @p ps_stock_remainer_9
execute as @e[type=minecraft:marker,tag=ps_shop] at @s if entity @p[distance=0..2,scores={ps_distance=0..2},tag=ps_payment_decline] run scoreboard players reset @p ps_cart

###########################################################################################
# Player Shop, Remove "Entity":
###########################################################################################
execute if score @s ps_id = @p[distance=0..2,scores={ps_distance=0..2},tag=ps_payment_decline] ps_id run kill @s

###########################################################################################
# Player Shop, Reset "Scoreboards":
###########################################################################################
scoreboard players reset @p[tag=ps_payment_decline] ps_sending
scoreboard players reset @p[tag=ps_payment_decline] ps_buy

###########################################################################################
# Player Shop, Remove "Tags":
###########################################################################################
tag @p[tag=ps_payment_decline] remove ps_cart
tag @p[tag=ps_payment_decline] remove ps_payment_decline