###########################################################################################
# Force teleport "Player" that is a "Guest" away from Shop, when it's under maintenace:
###########################################################################################

# WEST
execute as @e[type=minecraft:marker,tag=ps_shop,nbt={data:{ps_status:"unlock"}}] at @s unless score @s ps_id = @p[y_rotation=-135..-45,distance=0..5] ps_id as @a at @s run tellraw @s[tag=ps_guest,team=!ps_admin] [{"text": "[", "color": "white"}, {"text": "Mr_Chibi's Player Shop", "color": "#FF2682"}, {"text": "]", "color": "white"}, {"text": " Sorry, you can't enter shop is closed!", "color": "#A3A3A3"}]
execute as @e[type=minecraft:marker,tag=ps_shop,nbt={data:{ps_status:"unlock"}}] at @s unless score @s ps_id = @p[y_rotation=-135..-45,distance=0..5] ps_id as @a at @s run playsound minecraft:block.note_block.pling master @s[tag=ps_guest,team=!ps_admin] ~ ~ ~ 5 1
execute as @e[type=minecraft:marker,tag=ps_shop,nbt={data:{ps_status:"unlock"}}] at @s unless score @s ps_id = @p[y_rotation=-135..-45,distance=0..5] ps_id as @a at @s run tp @s[tag=ps_guest,team=!ps_admin] ~-5 ~ ~

# SOUTH
execute as @e[type=minecraft:marker,tag=ps_shop,nbt={data:{ps_status:"unlock"}}] at @s unless score @s ps_id = @p[y_rotation=135..-135,distance=0..5] ps_id as @a at @s run tellraw @s[tag=ps_guest,team=!ps_admin] [{"text": "[", "color": "white"}, {"text": "Mr_Chibi's Player Shop", "color": "#FF2682"}, {"text": "]", "color": "white"}, {"text": " Sorry, you can't enter shop is closed!", "color": "#A3A3A3"}]
execute as @e[type=minecraft:marker,tag=ps_shop,nbt={data:{ps_status:"unlock"}}] at @s unless score @s ps_id = @p[y_rotation=135..-135,distance=0..5] ps_id as @a at @s run playsound minecraft:block.note_block.pling master @s[tag=ps_guest,team=!ps_admin] ~ ~ ~ 5 1
execute as @e[type=minecraft:marker,tag=ps_shop,nbt={data:{ps_status:"unlock"}}] at @s unless score @s ps_id = @p[y_rotation=135..-135,distance=0..5] ps_id as @a at @s run tp @s[tag=ps_guest,team=!ps_admin] ~ ~ ~5

# EAST
execute as @e[type=minecraft:marker,tag=ps_shop,nbt={data:{ps_status:"unlock"}}] at @s unless score @s ps_id = @p[y_rotation=45..135,distance=0..5] ps_id as @a at @s run tellraw @s[tag=ps_guest,team=!ps_admin] [{"text": "[", "color": "white"}, {"text": "Mr_Chibi's Player Shop", "color": "#FF2682"}, {"text": "]", "color": "white"}, {"text": " Sorry, you can't enter shop is closed!", "color": "#A3A3A3"}]
execute as @e[type=minecraft:marker,tag=ps_shop,nbt={data:{ps_status:"unlock"}}] at @s unless score @s ps_id = @p[y_rotation=45..135,distance=0..5] ps_id as @a at @s run playsound minecraft:block.note_block.pling master @s[tag=ps_guest,team=!ps_admin] ~ ~ ~ 5 1
execute as @e[type=minecraft:marker,tag=ps_shop,nbt={data:{ps_status:"unlock"}}] at @s unless score @s ps_id = @p[y_rotation=45..135,distance=0..5] ps_id as @a at @s run tp @s[tag=ps_guest,team=!ps_admin] ~5 ~ ~

# NORTH
execute as @e[type=minecraft:marker,tag=ps_shop,nbt={data:{ps_status:"unlock"}}] at @s unless score @s ps_id = @p[y_rotation=-45..45,distance=0..5] ps_id as @a at @s run tellraw @s[tag=ps_guest,team=!ps_admin] [{"text": "[", "color": "white"}, {"text": "Mr_Chibi's Player Shop", "color": "#FF2682"}, {"text": "]", "color": "white"}, {"text": " Sorry, you can't enter shop is closed!", "color": "#A3A3A3"}]
execute as @e[type=minecraft:marker,tag=ps_shop,nbt={data:{ps_status:"unlock"}}] at @s unless score @s ps_id = @p[y_rotation=-45..45,distance=0..5] ps_id as @a at @s run playsound minecraft:block.note_block.pling master @s[tag=ps_guest,team=!ps_admin] ~ ~ ~ 5 1
execute as @e[type=minecraft:marker,tag=ps_shop,nbt={data:{ps_status:"unlock"}}] at @s unless score @s ps_id = @p[y_rotation=-45..45,distance=0..5] ps_id as @a at @s run tp @s[tag=ps_guest,team=!ps_admin] ~ ~ ~-5 