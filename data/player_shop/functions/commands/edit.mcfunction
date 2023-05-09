###########################################################################################
# Shop Settings Message:
###########################################################################################
execute as @e[type=minecraft:marker,tag=ps_shop] at @s if score @s ps_id = @p[distance=0..2] ps_id run function player_shop:commands/edit/particles_menu

###########################################################################################
# Reset Command:
###########################################################################################
scoreboard players set @s[scores={ps_edit=1..}] ps_edit 0