###########################################################################################
# Transacation Page:
###########################################################################################
# function player_shop:marker/transacation/text/heading

#
scoreboard players add @s ps_error 0

###########################################################################################
# Transacation, Verify if shop is empty (MVC Method):
###########################################################################################

# Error, Check #1:
execute as @e[type=minecraft:marker,tag=ps_shop] at @s if data entity @s {data:{ps_status:"lock"}} unless data entity @s data.ps_buy[7].id run tellraw @p[distance=0..2,scores={ps_distance=0..2}] [{"text": "[", "color": "white"}, {"text": "Mr_Chibi's Player Shop", "color": "#FF2682"}, {"text": "] ", "color": "white"}, {"text": "Error, shop buy slot is empty!", "color": "#A3A3A3"}]
execute as @e[type=minecraft:marker,tag=ps_shop] at @s if data entity @s {data:{ps_status:"lock"}} unless data entity @s data.ps_buy[7].id run scoreboard players add @p[distance=0..2,scores={ps_distance=0..2}] ps_error 1

# Error, Check #2:
execute as @e[type=minecraft:marker,tag=ps_shop] at @s if data entity @s {data:{ps_status:"lock"}} unless data entity @s data.ps_sell[7].id run tellraw @p[distance=0..2,scores={ps_distance=0..2}] [{"text": "[", "color": "white"}, {"text": "Mr_Chibi's Player Shop", "color": "#FF2682"}, {"text": "] ", "color": "white"}, {"text": "Error, sell slot is empty!", "color": "#A3A3A3"}]
execute as @e[type=minecraft:marker,tag=ps_shop] at @s if data entity @s {data:{ps_status:"lock"}} unless data entity @s data.ps_sell[7].id run scoreboard players add @p[distance=0..2,scores={ps_distance=0..2}] ps_error 1

###########################################################################################
# Error, if ps_error result > 1...
###########################################################################################
execute if score @s ps_error matches 1.. run tellraw @s [{"text": "[", "color": "white"}, {"text": "Mr_Chibi's Player Shop", "color": "#FF2682"}, {"text": "] ", "color": "white"}, {"text": "Transacation Voided! Following above is cause of void!", "color": "red"}]


###########################################################################################
# Error, if ps_error result > 1... Player Shop, Reset Shop "Scoreboards":
###########################################################################################
execute if score @s ps_error matches 1.. as @e[type=minecraft:marker,tag=ps_shop] at @s if entity @p[distance=0..2,scores={ps_distance=0..2},tag=ps_void] run scoreboard players reset @s ps_stock
execute if score @s ps_error matches 1.. as @e[type=minecraft:marker,tag=ps_shop] at @s if entity @p[distance=0..2,scores={ps_distance=0..2},tag=ps_void] run scoreboard players reset @s ps_stock_remainer
execute if score @s ps_error matches 1.. as @e[type=minecraft:marker,tag=ps_shop] at @s if entity @p[distance=0..2,scores={ps_distance=0..2},tag=ps_void] run scoreboard players reset @p ps_cart

###########################################################################################
# Error, if ps_error result > 1... Player Shop, Remove "Entity":
###########################################################################################
execute if score @s ps_error matches 1.. as @e[type=minecraft:item,tag=ps_buy] at @s if entity @p[distance=0..2,scores={ps_distance=0..2}] if score @s ps_id = @p[distance=0..2,scores={ps_distance=0..2}] ps_id run kill @s

###########################################################################################
# Error, if ps_error result > 1... Player Shop, Reset "Scoreboards":
###########################################################################################
execute if score @s ps_error matches 1.. run scoreboard players reset @s ps_sending
execute if score @s ps_error matches 1.. run scoreboard players reset @s ps_buy

###########################################################################################
# Error, if ps_error result > 1... Player Shop, Remove "Tags":
###########################################################################################
execute if score @s ps_error matches 1.. run tag @s remove ps_payment_accept
execute if score @s ps_error matches 1.. run scoreboard players reset @s ps_error




###########################################################################################
# Error, result matches "0":
# Transacation, Verify if shop isn't empty -> Process next, function (MVC Method):
###########################################################################################
execute if score @s ps_error matches 0 run scoreboard players remove @s[scores={ps_cart=..64}] ps_cart 1


######################################################################################################################################################################################
# Player Shop, [Buy Item], check if "player" 0-2 blocks Next, Update [Player's Shop Stock]:
######################################################################################################################################################################################
execute if score @s ps_error matches 0 run function player_shop:marker/transacation/ps_recieved
execute if score @s ps_error matches 0 if score @s ps_cart matches ..64 run function player_shop:marker/transacation/ps_sell
execute if score @s ps_error matches 0 run function player_shop:marker/transacation/ps_buy

#
execute if score @s ps_error matches 0 if score @s ps_cart matches 0 run tellraw @s [{"text": "[", "color": "white"}, {"text": "Mr_Chibi's Player Shop", "color": "#FF2682"}, {"text": "]", "color": "white"}, {"text": " Purchase Complete!", "color": "green"}]



###########################################################################################
# Transacation, Purchase Process:
###########################################################################################
execute if score @s ps_error matches 0 if score @s ps_cart matches 0 run scoreboard players reset @s ps_sending
execute if score @s ps_error matches 0 if score @s ps_cart matches 0 run scoreboard players reset @s ps_wallet
execute if score @s ps_error matches 0 if score @s ps_cart matches 0 run tag @s remove ps_payment_accept

execute if score @s ps_error matches 0 if score @s ps_cart matches 0 run scoreboard players reset @s ps_cart