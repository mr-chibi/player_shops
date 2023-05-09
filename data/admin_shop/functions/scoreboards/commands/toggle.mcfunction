###########################################################################################
# Player Shop "Unlimited/Limited" Items Commands:
###########################################################################################
execute as @s[scores={ps_unlimited=1},team=ps_admin] if entity @e[type=minecraft:marker,tag=ps_shop,distance=0..2] run function admin_shop:commands/unlimited
execute as @s[scores={ps_limited=1},team=ps_admin] if entity @e[type=minecraft:marker,tag=ps_shop,distance=0..2] run function admin_shop:commands/limited

###########################################################################################
# Player Shop "Open/Close" Commands:
###########################################################################################
execute as @s[scores={ps_lock=1},team=ps_admin] if entity @e[type=minecraft:marker,tag=ps_shop,distance=0..2] run function admin_shop:commands/lock
execute as @s[scores={ps_unlock=1},team=ps_admin] if entity @e[type=minecraft:marker,tag=ps_shop,distance=0..2] run function admin_shop:commands/unlock

###########################################################################################
# Player Shop "Remove" Command:
###########################################################################################
execute as @s[scores={ps_remove=1},team=ps_admin] if entity @e[type=minecraft:marker,tag=ps_shop,distance=0..2] run function admin_shop:commands/remove