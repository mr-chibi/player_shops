###########################################################################################
# Shop Unlock Error Message:
###########################################################################################
tellraw @s [{"text": "[", "color": "white"}, {"text": "Mr_Chibi's Player Shop", "color": "#FF2682"}, {"text": "]", "color": "white"}, {"text": " Successfully removed shop!", "color": "green"}]

###########################################################################################
# Shop "Forcefully" Remove players shop:
###########################################################################################
execute as @e[type=minecraft:marker,tag=ps_shop] at @s if entity @p[scores={ps_distance=0..2},distance=0..2] run setblock ~ ~ ~ minecraft:air destroy
kill @e[type=minecraft:marker,tag=ps_shop,distance=0..2,limit=1]

###########################################################################################
# Shop "Forcefully" Remove shop sign and item:
###########################################################################################
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:chest"}},distance=0..3,limit=1]
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:spruce_sign"}},distance=0..3,limit=1]


###########################################################################################
# Shop Reset player "scoreboard" data:
###########################################################################################
scoreboard players set @s ps_distance 9
scoreboard players reset @s ps_view_pg
scoreboard players reset @s ps_error

# Reset Command:
scoreboard players set @s[scores={ps_remove=1..}] ps_remove 0