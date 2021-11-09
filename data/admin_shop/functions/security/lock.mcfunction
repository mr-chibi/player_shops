# If "Player" is NOT "admin" lock chest if player is 5 blocks away:
execute as @e[type=minecraft:wandering_trader,tag=admin_shop] at @s if entity @a[distance=0..5] unless entity @p[team=ps_admin] run data modify block ~ ~-1 ~ Lock set value "adminps_lock"

# If "Player" is "admin" lock chest if player is 5 blocks away:
execute as @e[type=minecraft:wandering_trader,tag=admin_shop] at @s if entity @a[distance=0..5] if entity @p[team=ps_admin] run data modify block ~ ~-1 ~ Lock set value "adminps_lock"

# If "Player" is "admin" unlock chest if player is 2 blocks away:
execute as @e[type=minecraft:wandering_trader,tag=admin_shop] at @s if entity @a[distance=0..2] if entity @p[team=ps_admin] run data modify block ~ ~-1 ~ Lock set value ""