# Enable Commands Permissions:
function mcs_admin_shops:scoreboards/commands/enable

# Admin [Gamerules]:
execute if score @s mcs_particles matches 1.. run function mcs_admin_shops:commands/particles

# Admin [Commands]:
execute if score @s mcs_unlimited matches 1.. run function mcs_admin_shops:commands/unlimited
execute if score @s mcs_limited matches 1.. run function mcs_admin_shops:commands/limited
execute if score @s mcs_open matches 1.. run function mcs_admin_shops:commands/open
execute if score @s mcs_close matches 1.. run function mcs_admin_shops:commands/close
execute if score @s mcs_remove matches 1.. run function mcs_admin_shops:commands/remove