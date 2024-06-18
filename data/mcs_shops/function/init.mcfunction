# Shops [Permissions]:
execute as @a at @s[team=mcs_admin] run function mcs_admin_shops:init
execute as @a at @s[team=!mcs_admin] run function mcs_guest_shops:init

# Shops Functionallity:
execute as @a at @s run function mcs_shops_engine:init