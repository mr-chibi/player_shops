###########################################################################################
# Revoke Nearby, Admin Commands:
###########################################################################################
execute as @e[type=minecraft:marker,tag=ps_shop,nbt={data:{ps_type:"unlimited"}}] at @s unless score @s ps_id = @p[distance=0..2,scores={ps_distance=0..2}] ps_id as @p at @s run scoreboard players reset @s[team=ps_admin] ps_unlimited
execute as @e[type=minecraft:marker,tag=ps_shop,nbt={data:{ps_type:"limited"}}] at @s unless score @s ps_id = @p[distance=0..2,scores={ps_distance=0..2}] ps_id as @p at @s run scoreboard players reset @s[team=ps_admin] ps_limited


###########################################################################################
# Revoke Admin Commands [Visit Guest Shop]:
###########################################################################################
execute as @e[type=minecraft:marker,tag=ps_shop] at @s unless score @s ps_id = @p[distance=3..8,scores={ps_distance=3..8}] ps_id as @p at @s run scoreboard players reset @s[tag=ps_guest,team=ps_admin] ps_unlimited
execute as @e[type=minecraft:marker,tag=ps_shop] at @s unless score @s ps_id = @p[distance=3..8,scores={ps_distance=3..8}] ps_id as @p at @s run scoreboard players reset @s[tag=ps_guest,team=ps_admin] ps_limited
execute as @e[type=minecraft:marker,tag=ps_shop] at @s unless score @s ps_id = @p[distance=3..8,scores={ps_distance=3..8}] ps_id as @p at @s run scoreboard players reset @s[tag=ps_guest,team=ps_admin] ps_lock
execute as @e[type=minecraft:marker,tag=ps_shop] at @s unless score @s ps_id = @p[distance=3..8,scores={ps_distance=3..8}] ps_id as @p at @s run scoreboard players reset @s[tag=ps_guest,team=ps_admin] ps_unlock
execute as @e[type=minecraft:marker,tag=ps_shop] at @s unless score @s ps_id = @p[distance=3..8,scores={ps_distance=3..8}] ps_id as @p at @s run scoreboard players reset @s[tag=ps_guest,team=ps_admin] ps_remove

###########################################################################################
# Revoke Admin Commands [Owned Shop]::
###########################################################################################
execute as @e[type=minecraft:marker,tag=ps_shop] at @s unless score @s ps_id = @p[distance=3..8,scores={ps_distance=3..8}] ps_id as @p at @s run scoreboard players reset @s[tag=ps_owner,team=ps_admin] ps_remove