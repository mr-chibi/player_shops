# Enable Commands Permissions:
function mcs_admin_shops:scoreboards/commands/disable

# Shop Related [Open/Close/Remove] Commands:
execute if score @s mcs_open matches 1.. run function mcs_guest_shops:commands/open/init
execute if score @s mcs_close matches 1.. run function mcs_guest_shops:commands/close/init
execute if score @s mcs_remove matches 1.. run function mcs_guest_shops:commands/remove/init