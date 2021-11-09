# Admin Enabled Commands:
execute as @a at @s[team=ps_admin] run scoreboard players enable @s adminps_create
execute as @a at @s[team=ps_admin] run scoreboard players enable @s adminps_remove

# Admin Commands:
execute as @a at @s[team=ps_admin,scores={adminps_create=1..}] run function admin_shop:commands/create_shop
execute as @a at @s[team=ps_admin,scores={adminps_remove=1..}] run function admin_shop:commands/remove_shop

# Admin Init:
execute as @e[type=minecraft:wandering_trader,tag=admin_shop] at @s if entity @a[distance=0..5] run function admin_shop:shop/gui_update
execute as @e[type=minecraft:wandering_trader,tag=admin_shop] at @s if entity @a[distance=0..5] run function admin_shop:shop/nbt

# Gamemode Functionallity:
function admin_shop:security/gamemode
function admin_shop:security/lock