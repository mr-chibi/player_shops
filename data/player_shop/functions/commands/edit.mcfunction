###########################################################################################
# Shop Settings Message:
###########################################################################################
execute if score @s ps_id = @e[type=minecraft:marker,tag=ps_shop,sort=nearest,limit=1,distance=0..2] ps_id run function player_shop:commands/edit/particles_menu

###########################################################################################
# Reset Command:
###########################################################################################
scoreboard players set @s[scores={ps_edit=1..}] ps_edit 0