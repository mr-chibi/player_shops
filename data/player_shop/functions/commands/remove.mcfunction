###########################################################################################
# Shop Error Message:
###########################################################################################
execute if score @s ps_id = @e[type=minecraft:marker,tag=ps_shop,distance=3..5,limit=1] ps_id run tellraw @s [{"text": "[", "color": "white"}, {"text": "Mr_Chibi's Player Shop", "color": "#FF2682"}, {"text": "]", "color": "white"}, {"text": " Error! Please, stand 1-2 blocks near shop to remove!", "color": "#A3A3A3"}]


###########################################################################################
# Remove Shop Message:
###########################################################################################
execute if score @s ps_id = @e[type=minecraft:marker,tag=ps_shop,distance=0..2,limit=1] ps_id run tellraw @s [{"text": "[", "color": "white"}, {"text": "Mr_Chibi's Player Shop", "color": "#FF2682"}, {"text": "]", "color": "white"}, {"text": " Successfully removed shop!", "color": "green"}]


###########################################################################################
# Check If, "Marker" UUID[0] Matches, "Player's" UUID[0] Then, remove shop:
###########################################################################################
execute as @e[type=minecraft:marker,tag=ps_shop] at @s if score @s ps_id = @p[distance=0..3,scores={ps_distance=0..3},tag=ps_owner] ps_id run setblock ~ ~ ~ minecraft:air destroy
execute as @e[type=minecraft:marker,tag=ps_shop] at @s if score @s ps_id = @p[distance=0..3,scores={ps_distance=0..3},tag=ps_owner] ps_id run setblock ~ ~2 ~ minecraft:air destroy
execute as @e[type=minecraft:marker,tag=ps_shop] at @s if score @s ps_id = @p[distance=0..3,scores={ps_distance=0..3},tag=ps_owner] ps_id run kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:chest"}},distance=0..3,limit=1]
execute as @e[type=minecraft:marker,tag=ps_shop] at @s if score @s ps_id = @p[distance=0..3,scores={ps_distance=0..3},tag=ps_owner] ps_id run kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:spruce_sign"}},distance=0..3,limit=1]
execute as @e[type=minecraft:marker,tag=ps_shop] at @s if score @s ps_id = @p[distance=0..3,scores={ps_distance=0..3},tag=ps_owner] ps_id run kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:spruce_hanging_sign"}},distance=0..3,limit=1]
execute as @e[type=minecraft:marker,tag=ps_shop] at @s if score @s ps_id = @p[distance=0..3,scores={ps_distance=0..3},tag=ps_owner] ps_id run kill @s


###########################################################################################
# Reset Data:
###########################################################################################
scoreboard players set @a[distance=0..9] ps_distance 9
scoreboard players reset @s ps_view_pg
scoreboard players reset @s ps_error
tag @s remove ps_owner

###########################################################################################
# Survival Mode:
###########################################################################################
gamemode survival @s[scores={ps_distance=9},team=!ps_admin]

###########################################################################################
# Reset Command:
###########################################################################################
scoreboard players set @s[scores={ps_remove=1..}] ps_remove 0