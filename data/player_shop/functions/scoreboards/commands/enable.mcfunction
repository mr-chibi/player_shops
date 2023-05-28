###########################################################################################
# Enable Help Command:
###########################################################################################
scoreboard players enable @s ps_help

###########################################################################################
# Enable Create Shop Command:
###########################################################################################
scoreboard players enable @s ps_create

###########################################################################################
# Enable "Player" Shop Owned Commands:
###########################################################################################
execute as @e[type=minecraft:marker,tag=ps_shop,nbt={data:{ps_status:"lock"}}] at @s if entity @a[distance=0..2,scores={ps_distance=0..2}] run scoreboard players enable @a[distance=0..2,scores={ps_distance=0..2}] ps_buy
execute as @e[type=minecraft:marker,tag=ps_shop,nbt={data:{ps_status:"lock"}}] at @s if entity @a[distance=0..2,scores={ps_distance=0..2}] run scoreboard players enable @a[distance=0..2,scores={ps_distance=0..2}] ps_page

###########################################################################################
# Enable "Player" Shop Owned Commands:
###########################################################################################
execute as @e[type=minecraft:marker,tag=ps_shop,nbt={data:{ps_status:"lock"}}] at @s if score @s ps_id = @p[distance=0..2,scores={ps_distance=0..2}] ps_id as @p at @s run scoreboard players enable @s ps_edit
execute as @e[type=minecraft:marker,tag=ps_shop,nbt={data:{ps_status:"lock"}}] at @s if score @s ps_id = @p[distance=0..2,scores={ps_distance=0..2}] ps_id as @p at @s run scoreboard players enable @s ps_particles
execute as @e[type=minecraft:marker,tag=ps_shop,nbt={data:{ps_status:"unlock"}}] at @s if score @s ps_id = @p[distance=0..2,scores={ps_distance=0..2}] ps_id as @p at @s run scoreboard players enable @s[team=!ps_admin] ps_lock
execute as @e[type=minecraft:marker,tag=ps_shop,nbt={data:{ps_status:"lock"}}] at @s if score @s ps_id = @p[distance=0..2,scores={ps_distance=0..2}] ps_id as @p at @s run scoreboard players enable @s[team=!ps_admin] ps_unlock
execute as @e[type=minecraft:marker,tag=ps_shop,nbt={data:{ps_status:"lock"}}] at @s if score @s ps_id = @p[distance=0..2,scores={ps_distance=0..2}] ps_id as @p at @s run scoreboard players enable @s[team=!ps_admin] ps_remove