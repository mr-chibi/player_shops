###########################################################################################
# Disable "Commands" For "Shop Owners":
###########################################################################################
execute as @e[type=minecraft:marker,tag=ps_shop] at @s if score @s ps_id = @p[scores={ps_distance=3..8},distance=3..8] ps_id as @p at @s run scoreboard players reset @s[tag=ps_owner] ps_edit
execute as @e[type=minecraft:marker,tag=ps_shop] at @s if score @s ps_id = @p[scores={ps_distance=3..8},distance=3..8] ps_id as @p at @s run scoreboard players reset @s[tag=ps_owner] ps_particles
execute as @e[type=minecraft:marker,tag=ps_shop] at @s if score @s ps_id = @p[scores={ps_distance=3..8},distance=3..8] ps_id as @p at @s run scoreboard players reset @s[tag=ps_owner,team=!ps_admin] ps_lock
execute as @e[type=minecraft:marker,tag=ps_shop] at @s if score @s ps_id = @p[scores={ps_distance=3..8},distance=3..8] ps_id as @p at @s run scoreboard players reset @s[tag=ps_owner,team=!ps_admin] ps_unlock
execute as @e[type=minecraft:marker,tag=ps_shop] at @s if score @s ps_id = @p[scores={ps_distance=3..8},distance=3..8] ps_id as @p at @s run scoreboard players reset @s[tag=ps_owner,team=!ps_admin] ps_remove


###########################################################################################
# Disable "Commands" For "Guests" Visitors of Shop:
###########################################################################################
execute as @e[type=minecraft:marker,tag=ps_shop] at @s unless score @s ps_id = @p[scores={ps_distance=0..8},distance=0..8] ps_id as @p at @s run scoreboard players reset @s[tag=ps_guest] ps_create
execute as @e[type=minecraft:marker,tag=ps_shop] at @s unless score @s ps_id = @p[scores={ps_distance=0..8},distance=0..8] ps_id as @p at @s run scoreboard players reset @s[tag=ps_guest] ps_edit
execute as @e[type=minecraft:marker,tag=ps_shop] at @s unless score @s ps_id = @p[scores={ps_distance=0..8},distance=0..8] ps_id as @p at @s run scoreboard players reset @s[tag=ps_guest] ps_particles
execute as @e[type=minecraft:marker,tag=ps_shop] at @s unless score @s ps_id = @p[scores={ps_distance=0..8},distance=0..8] ps_id as @p at @s run scoreboard players reset @s[tag=ps_guest,team=!ps_admin] ps_lock
execute as @e[type=minecraft:marker,tag=ps_shop] at @s unless score @s ps_id = @p[scores={ps_distance=0..8},distance=0..8] ps_id as @p at @s run scoreboard players reset @s[tag=ps_guest,team=!ps_admin] ps_unlock
execute as @e[type=minecraft:marker,tag=ps_shop] at @s unless score @s ps_id = @p[scores={ps_distance=0..8},distance=0..8] ps_id as @p at @s run scoreboard players reset @s[tag=ps_guest,team=!ps_admin] ps_remove

###########################################################################################
# Disable "Commands" For "Admins" to do "Admin Commands":
###########################################################################################
execute as @e[type=minecraft:marker,tag=ps_shop] at @s unless score @s ps_id = @p[scores={ps_distance=0..8},distance=0..8] ps_id as @p at @s run scoreboard players reset @s[tag=ps_owner,team=!ps_admin] ps_lock
execute as @e[type=minecraft:marker,tag=ps_shop] at @s unless score @s ps_id = @p[scores={ps_distance=0..8},distance=0..8] ps_id as @p at @s run scoreboard players reset @s[tag=ps_owner,team=!ps_admin] ps_unlock
execute as @e[type=minecraft:marker,tag=ps_shop] at @s unless score @s ps_id = @p[scores={ps_distance=0..8},distance=0..8] ps_id as @p at @s run scoreboard players reset @s[tag=ps_owner,team=!ps_admin] ps_remove


###########################################################################################
# Reset Player "Data":
###########################################################################################
execute as @e[type=minecraft:marker,tag=ps_shop] at @s if entity @a[distance=3..8,scores={ps_distance=3..8}] run tag @a[distance=3..8] remove ps_cart
execute as @e[type=minecraft:marker,tag=ps_shop] at @s if entity @a[distance=3..8,scores={ps_distance=3..8}] run tag @a[distance=3..8] remove ps_payment_accept
execute as @e[type=minecraft:marker,tag=ps_shop] at @s if entity @a[distance=3..8,scores={ps_distance=3..8}] run tag @a[distance=3..8] remove ps_payment_decline

###########################################################################################
# Reset Player "Objectives":
###########################################################################################
execute as @e[type=minecraft:marker,tag=ps_shop] at @s if entity @a[distance=3..8,scores={ps_distance=3..8}] run scoreboard players reset @a[distance=3..8] ps_create
execute as @e[type=minecraft:marker,tag=ps_shop] at @s if entity @a[distance=3..8,scores={ps_distance=3..8}] run scoreboard players reset @a[distance=3..8] ps_buy
execute as @e[type=minecraft:marker,tag=ps_shop] at @s if entity @a[distance=3..8,scores={ps_distance=3..8}] run scoreboard players reset @a[distance=3..8] ps_cart
execute as @e[type=minecraft:marker,tag=ps_shop] at @s if entity @a[distance=3..8,scores={ps_distance=3..8}] run scoreboard players reset @a[distance=3..8] ps_wallet
execute as @e[type=minecraft:marker,tag=ps_shop] at @s if entity @a[distance=3..8,scores={ps_distance=3..8}] run scoreboard players reset @a[distance=3..8] ps_error
execute as @e[type=minecraft:marker,tag=ps_shop] at @s if entity @a[distance=3..8,scores={ps_distance=3..8}] run scoreboard players reset @a[distance=3..8] ps_page
execute as @e[type=minecraft:marker,tag=ps_shop] at @s if entity @a[distance=3..8,scores={ps_distance=3..8}] run scoreboard players reset @a[distance=3..8] ps_view_pg

###########################################################################################
# Revoke Admin Commands:
###########################################################################################
execute as @e[type=minecraft:marker,tag=ps_shop] at @s if score @s ps_id = @p[scores={ps_distance=0..8},distance=0..8] ps_id as @p at @s run scoreboard players reset @s[team=!ps_admin] ps_unlimited
execute as @e[type=minecraft:marker,tag=ps_shop] at @s if score @s ps_id = @p[scores={ps_distance=0..8},distance=0..8] ps_id as @p at @s run scoreboard players reset @s[team=!ps_admin] ps_limited