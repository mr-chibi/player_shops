###########################################################################################
# Enable / Disable Command Functionallity:
###########################################################################################
execute as @a at @s run function player_shop:scoreboards/commands/enable
execute as @a at @s run function player_shop:scoreboards/commands/disable


###########################################################################################
# Command Toggle Functionallity:
###########################################################################################
execute as @a at @s run function player_shop:scoreboards/commands/toggle

###########################################################################################
# Marker Functionallity For Player Shop:
###########################################################################################
execute as @e[type=minecraft:marker,tag=ps_shop] at @s if entity @a[distance=0..8,scores={ps_distance=0..8}] run function player_shop:marker/init
execute as @a at @s run function player_shop:marker/distance
execute as @a at @s run function player_shop:marker/greeting


###########################################################################################
# Player Variables, for additonal functionallity:
###########################################################################################
function player_shop:tags/ps_owner
function player_shop:tags/ps_guest
function player_shop:tags/ps_floor_entity


###########################################################################################
# Player Shop Open/Close Commands:
###########################################################################################
execute as @a at @s[scores={ps_lock=1},team=!ps_admin] if entity @e[type=minecraft:marker,tag=ps_shop,distance=0..2] run function player_shop:commands/lock
execute as @a at @s[scores={ps_unlock=1},team=!ps_admin] if entity @e[type=minecraft:marker,tag=ps_shop,distance=0..2] run function player_shop:commands/unlock


###########################################################################################
# Player Shop [Error Message] "Triggers":
###########################################################################################
execute as @a at @s[scores={ps_edit=1}] unless entity @e[type=minecraft:marker,tag=ps_shop,distance=0..2] run function player_shop:commands/error
execute as @a at @s[scores={ps_lock=1},team=!ps_admin] unless entity @e[type=minecraft:marker,tag=ps_shop,distance=0..2] run function player_shop:commands/error
execute as @a at @s[scores={ps_unlock=1},team=!ps_admin] unless entity @e[type=minecraft:marker,tag=ps_shop,distance=0..2] run function player_shop:commands/error


###########################################################################################
# Player Shop Preventions:
###########################################################################################
execute as @a at @s run function player_shop:preventions/gamemodes
execute as @a at @s run function player_shop:preventions/maintenace

###########################################################################################
# Player Shop [GUI Interaction]:
###########################################################################################
execute as @e[type=minecraft:marker,tag=ps_shop] at @s if data entity @s {data:{ps_status:"lock"}} if data block ~ ~ ~ Lock as @a at @s[distance=0..2,scores={ps_distance=0..2}] if entity @e[type=minecraft:marker,tag=ps_shop,sort=nearest,distance=0..2] if score @s ps_chest_rclick matches 1.. run function player_shop:marker/gui/init

###########################################################################################
# Player Shop [GUI] Preventions:
###########################################################################################
execute as @e[type=minecraft:marker,tag=ps_shop] at @s if data entity @s {data:{ps_status:"unlock"}} if entity @p[distance=0..2,scores={ps_distance=0..2}] unless data block ~ ~ ~ Lock as @a at @s if score @s ps_chest_rclick matches 1 run scoreboard players reset @s ps_chest_rclick