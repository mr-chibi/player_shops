###########################################################################################
# Player Shop "Unlimited/Limited" Items Commands:
###########################################################################################
execute if score @s[team=ps_admin] ps_unlimited matches 1 run function admin_shop:commands/unlimited
execute if score @s[team=ps_admin] ps_limited matches 1 run function admin_shop:commands/limited

###########################################################################################
# Player Shop "Open/Close" Commands:
###########################################################################################
execute if score @s[team=ps_admin] ps_lock matches 1 run function admin_shop:commands/lock
execute if score @s[team=ps_admin] ps_unlock matches 1 run function admin_shop:commands/unlock

###########################################################################################
# Player Shop "Remove" Command:
###########################################################################################
execute if score @s[team=ps_admin] ps_remove matches 1 run function admin_shop:commands/remove

###########################################################################################
# Admin Shop Functionallity:
###########################################################################################
execute if entity @e[type=minecraft:marker,tag=ps_shop,sort=nearest,limit=1,distance=0..2,nbt={data:{ps_type:"unlimited"}}] run function admin_shop:marker/unlimited