# Allows Access to open or close a shop!
execute as @e[type=minecraft:marker,tag=ps_shop] at @s as @p[distance=0..2,scores={ps_distance=0..2},team=ps_admin] at @s run scoreboard players enable @s[team=ps_admin] ps_lock
execute as @e[type=minecraft:marker,tag=ps_shop] at @s as @p[distance=0..2,scores={ps_distance=0..2},team=ps_admin] at @s run scoreboard players enable @s[team=ps_admin] ps_unlock

# Allows Access to remove players shop:
execute as @e[type=minecraft:marker,tag=ps_shop,nbt={data:{ps_status:"lock"}}] at @s as @p[distance=0..2,scores={ps_distance=0..2},team=ps_admin] run scoreboard players enable @s[team=ps_admin] ps_remove
execute as @e[type=minecraft:marker,tag=ps_shop,nbt={data:{ps_status:"lock"}}] at @s as @p[distance=0..2,scores={ps_distance=0..2},team=ps_admin] at @s run scoreboard players enable @s[team=ps_admin] ps_remove

# Allows Shop page to sell "unlimited/limited items":
execute as @e[type=minecraft:marker,tag=ps_shop,nbt={data:{ps_type:"limited"}}] at @s as @p[distance=0..2,scores={ps_distance=0..2},team=ps_admin] at @s run scoreboard players enable @s[team=ps_admin] ps_unlimited
execute as @e[type=minecraft:marker,tag=ps_shop,nbt={data:{ps_type:"unlimited"}}] at @s as @p[distance=0..2,scores={ps_distance=0..2},team=ps_admin] at @s run scoreboard players enable @s[team=ps_admin] ps_limited