# Enable Commands:
function mcs_shops:commands/enable
function mcs_shops:commands/disable

#
function #mcs_shops:interaction

# Toggle Commands:
execute if score @s mcs_create matches 1.. run function mcs_shops:commands/create/init
execute if score @s mcs_remove matches 1.. run function mcs_shops:commands/remove/init
execute if score @s mcs_open matches 1.. run function mcs_shops:commands/open/init
execute if score @s mcs_close matches 1.. run function mcs_shops:commands/close/init

# Purchase Commands:
execute if score @s mcs_buy matches 1.. run function mcs_shops:commands/buy/init

# Tags
function mcs_shops:admin/tags/unlimited