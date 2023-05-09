# Allows Access to open or close a shop!
execute if entity @e[type=minecraft:marker,tag=ps_shop,distance=0..2] run scoreboard players enable @s[tag=ps_guest,team=ps_admin] ps_lock
execute if entity @e[type=minecraft:marker,tag=ps_shop,distance=0..2] run scoreboard players enable @s[tag=ps_guest,team=ps_admin] ps_unlock

# Allows Access to remove players shop:
execute if entity @e[type=minecraft:marker,tag=ps_shop,distance=0..2] run scoreboard players enable @s[tag=ps_guest,team=ps_admin] ps_remove

# Allows Shop page to sell "unlimited/limited items":
execute if entity @e[type=minecraft:marker,tag=ps_shop,distance=0..2,tag=!ps_admin] run scoreboard players enable @s[team=ps_admin] ps_unlimited
execute if entity @e[type=minecraft:marker,tag=ps_shop,distance=0..2,tag=ps_admin] run scoreboard players enable @s[team=ps_admin] ps_limited