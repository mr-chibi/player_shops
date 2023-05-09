###########################################################################################
# Enable Help Command:
###########################################################################################
execute as @a at @s run scoreboard players enable @s ps_help

###########################################################################################
# Enable Create Shop Command:
###########################################################################################
execute as @a at @s run scoreboard players enable @s ps_create

###########################################################################################
# Enable "Player" Shop Owned Commands:
###########################################################################################
execute as @e[type=minecraft:marker,tag=ps_shop] at @s if data entity @s {data:{ps_status:"lock"}} if entity @a[distance=0..2,scores={ps_distance=0..2}] as @a at @s run scoreboard players enable @p ps_buy
execute as @e[type=minecraft:marker,tag=ps_shop] at @s if data entity @s {data:{ps_status:"lock"}} if entity @a[distance=0..2,scores={ps_distance=0..2}] as @a at @s run scoreboard players enable @p ps_page

###########################################################################################
# Enable "Player" Shop Owned Commands:
###########################################################################################
execute as @e[type=minecraft:marker,tag=ps_shop] at @s if score @s ps_id = @p[scores={ps_distance=0..2}] ps_id run scoreboard players enable @p ps_edit
execute as @e[type=minecraft:marker,tag=ps_shop] at @s if score @s ps_id = @p[scores={ps_distance=0..2}] ps_id run scoreboard players enable @p ps_particles
execute as @e[type=minecraft:marker,tag=ps_shop] at @s if score @s ps_id = @p[scores={ps_distance=0..2}] ps_id run scoreboard players enable @p ps_lock
execute as @e[type=minecraft:marker,tag=ps_shop] at @s if score @s ps_id = @p[scores={ps_distance=0..2}] ps_id run scoreboard players enable @p ps_unlock
execute as @e[type=minecraft:marker,tag=ps_shop] at @s if score @s ps_id = @p[scores={ps_distance=0..2}] ps_id run scoreboard players enable @p[team=!ps_admin] ps_remove
