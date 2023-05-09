###########################################################################################
# Disable "Commands" For "Shop Owners":
###########################################################################################
execute as @e[type=minecraft:marker,tag=ps_shop] at @s if score @s ps_id = @p[scores={ps_distance=3..8},distance=3..8] ps_id run scoreboard players reset @p[tag=ps_owner,team=!ps_admin] ps_lock
execute as @e[type=minecraft:marker,tag=ps_shop] at @s if score @s ps_id = @p[scores={ps_distance=3..8},distance=3..8] ps_id run scoreboard players reset @p[tag=ps_owner,team=!ps_admin] ps_unlock
execute as @e[type=minecraft:marker,tag=ps_shop] at @s if score @s ps_id = @p[scores={ps_distance=3..8},distance=3..8] ps_id run scoreboard players reset @p[tag=ps_owner] ps_edit
execute as @e[type=minecraft:marker,tag=ps_shop] at @s if score @s ps_id = @p[scores={ps_distance=3..8},distance=3..8] ps_id run scoreboard players reset @p[tag=ps_owner] ps_particles
execute as @e[type=minecraft:marker,tag=ps_shop] at @s if score @s ps_id = @p[scores={ps_distance=3..8},distance=3..8] ps_id run scoreboard players reset @p[tag=ps_owner,team=!ps_admin] ps_remove


###########################################################################################
# Disable "Commands" For "Guests" Visitors of Shop:
###########################################################################################
execute as @e[type=minecraft:marker,tag=ps_shop] at @s unless score @s ps_id = @p[scores={ps_distance=0..8},distance=0..8] ps_id run scoreboard players reset @p[tag=ps_guest,team=!ps_admin] ps_lock
execute as @e[type=minecraft:marker,tag=ps_shop] at @s unless score @s ps_id = @p[scores={ps_distance=0..8},distance=0..8] ps_id run scoreboard players reset @p[tag=ps_guest,team=!ps_admin] ps_unlock
execute as @e[type=minecraft:marker,tag=ps_shop] at @s unless score @s ps_id = @p[scores={ps_distance=0..8},distance=0..8] ps_id run scoreboard players reset @p[tag=ps_guest] ps_edit
execute as @e[type=minecraft:marker,tag=ps_shop] at @s unless score @s ps_id = @p[scores={ps_distance=0..8},distance=0..8] ps_id run scoreboard players reset @p[tag=ps_guest] ps_particles
execute as @e[type=minecraft:marker,tag=ps_shop] at @s unless score @s ps_id = @p[scores={ps_distance=0..8},distance=0..8] ps_id run scoreboard players reset @p[tag=ps_guest,team=!ps_admin] ps_remove


###########################################################################################
# Reset Player "Data":
###########################################################################################
execute if entity @e[type=minecraft:marker,tag=ps_shop,distance=3..8] run tag @s remove ps_cart
execute if entity @e[type=minecraft:marker,tag=ps_shop,distance=3..8] run tag @s remove ps_payment_accept
execute if entity @e[type=minecraft:marker,tag=ps_shop,distance=3..8] run tag @s remove ps_payment_decline

###########################################################################################
# Reset Player "Objectives":
###########################################################################################
execute if entity @e[type=minecraft:marker,tag=ps_shop,distance=3..8] run scoreboard players reset @s ps_create
execute if entity @e[type=minecraft:marker,tag=ps_shop,distance=3..8] run scoreboard players reset @s ps_buy
execute if entity @e[type=minecraft:marker,tag=ps_shop,distance=3..8] run scoreboard players reset @s ps_cart
execute if entity @e[type=minecraft:marker,tag=ps_shop,distance=3..8] run scoreboard players reset @s ps_wallet
execute if entity @e[type=minecraft:marker,tag=ps_shop,distance=3..8] run scoreboard players reset @s ps_error
execute if entity @e[type=minecraft:marker,tag=ps_shop,distance=3..8] run scoreboard players reset @s ps_page
execute if entity @e[type=minecraft:marker,tag=ps_shop,distance=3..8] run scoreboard players reset @s ps_view_pg

###########################################################################################
# Revoke Admin Commands:
###########################################################################################
execute if entity @e[type=minecraft:marker,tag=ps_shop,distance=0..8] run scoreboard players reset @s[team=!ps_admin] ps_unlimited
execute if entity @e[type=minecraft:marker,tag=ps_shop,distance=0..8] run scoreboard players reset @s[team=!ps_admin] ps_limited