###########################################################################################
# Revoke Nearby, Admin Commands:
###########################################################################################
execute if entity @e[type=minecraft:marker,tag=ps_shop,distance=0..2,tag=ps_admin] run scoreboard players reset @s[team=ps_admin] ps_unlimited
execute if entity @e[type=minecraft:marker,tag=ps_shop,distance=0..2,tag=!ps_admin] run scoreboard players reset @s[team=ps_admin] ps_limited

###########################################################################################
# Revoke Admin Commands:
###########################################################################################
execute if entity @e[type=minecraft:marker,tag=ps_shop,distance=3..8] run scoreboard players reset @s[tag=ps_guest,team=ps_admin] ps_unlimited
execute if entity @e[type=minecraft:marker,tag=ps_shop,distance=3..8] run scoreboard players reset @s[tag=ps_guest,team=ps_admin] ps_limited
execute if entity @e[type=minecraft:marker,tag=ps_shop,distance=3..8] run scoreboard players reset @s[tag=ps_guest,team=ps_admin] ps_lock
execute if entity @e[type=minecraft:marker,tag=ps_shop,distance=3..8] run scoreboard players reset @s[tag=ps_guest,team=ps_admin] ps_unlock
execute if entity @e[type=minecraft:marker,tag=ps_shop,distance=3..8] run scoreboard players reset @s[tag=ps_guest,team=ps_admin] ps_remove