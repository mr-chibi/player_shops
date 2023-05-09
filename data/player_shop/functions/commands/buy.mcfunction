###########################################################################################
# Player Shop, Update Player's cart to match <amount> there buying:
###########################################################################################
scoreboard players operation @s ps_cart = @s ps_buy

###########################################################################################
# Player Shop, Check see how much player sending to shop:
###########################################################################################
scoreboard players operation @s ps_sending = @s ps_cart

######################################################################################################################################################################################
# Player Shop, If "player" 0-2 blocks, then "summon" Item as shop [Buy Item]:
######################################################################################################################################################################################
summon minecraft:item ~ ~1 ~ {Item:{id:"minecraft:paper", Count:1b}, PickupDelay:-1, Tags:["ps_buy"]}

###########################################################################################
# Player Shop, "Player" is viewing "Page", to "buy" what shop is "selling":
###########################################################################################
execute if score @s ps_view_pg matches 1 run function player_shop:commands/buy/slot_1
execute if score @s ps_view_pg matches 2 run function player_shop:commands/buy/slot_2
execute if score @s ps_view_pg matches 3 run function player_shop:commands/buy/slot_3
execute if score @s ps_view_pg matches 4 run function player_shop:commands/buy/slot_4
execute if score @s ps_view_pg matches 5 run function player_shop:commands/buy/slot_5
execute if score @s ps_view_pg matches 6 run function player_shop:commands/buy/slot_6
execute if score @s ps_view_pg matches 7 run function player_shop:commands/buy/slot_7
execute if score @s ps_view_pg matches 8 run function player_shop:commands/buy/slot_8
execute if score @s ps_view_pg matches 9 run function player_shop:commands/buy/slot_9

###########################################################################################
# Player Shop, Add If Player can't afford Item: "Void Tag":
###########################################################################################
execute as @e[type=minecraft:item,tag=ps_buy] at @s if entity @p[distance=0..2,scores={ps_distance=0..2}] if score @s ps_id = @p[distance=0..2,scores={ps_distance=0..2},tag=ps_cart] ps_id run function player_shop:tags/ps_payment

###########################################################################################
# Player Shop, Void:
###########################################################################################
execute as @s[tag=ps_payment_accept] run function player_shop:tags/ps_void

###########################################################################################
# Reset Command:
###########################################################################################
scoreboard players set @s[scores={ps_buy=1..}] ps_buy 0