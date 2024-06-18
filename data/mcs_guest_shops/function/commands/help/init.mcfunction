# Toggle Pages
execute if score @s mcs_help matches 1 run function mcs_guest_shops:commands/help/1
execute if score @s mcs_help matches 2 run function mcs_guest_shops:commands/help/2
execute if score @s mcs_help matches 3 run function mcs_guest_shops:commands/help/3

###########################################################################################
# Reset Command:
###########################################################################################
scoreboard players set @s[scores={mcs_help=1..}] mcs_help 0