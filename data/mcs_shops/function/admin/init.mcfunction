#
function mcs_shops:commands/enable

#
function #mcs_shops:interaction

# Admin Commands:
execute if score @s mcs_unlimited matches 1.. run function mcs_shops:admin/commands/unlimited/init
execute if score @s mcs_limited matches 1.. run function mcs_shops:admin/commands/limited/init
execute if score @s mcs_remove matches 1.. run function mcs_shops:admin/commands/remove/init
execute if score @s mcs_open matches 1.. run function mcs_shops:admin/commands/open/init
execute if score @s mcs_close matches 1.. run function mcs_shops:admin/commands/close/init

# Regular Commands:
execute if score @s mcs_create matches 1.. run function mcs_shops:commands/create/init
execute if score @s mcs_buy matches 1.. run function mcs_shops:commands/buy/init

# Tags:
function mcs_shops:admin/tags/unlimited