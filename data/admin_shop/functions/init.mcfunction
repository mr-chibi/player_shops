###########################################################################################
# Enable / Disable Command Functionallity:
###########################################################################################
execute as @a at @s run function admin_shop:scoreboards/commands/enable
execute as @a at @s run function admin_shop:scoreboards/commands/disable

###########################################################################################
# Command Toggle Functionallity:
###########################################################################################
execute as @a at @s run function admin_shop:scoreboards/commands/toggle

###########################################################################################
# Admin Shop Functionallity:
###########################################################################################
execute as @e[type=minecraft:marker,tag=ps_shop,tag=ps_admin] at @s if entity @p[scores={ps_distance=0..2},distance=0..2] run function admin_shop:marker/unlimited