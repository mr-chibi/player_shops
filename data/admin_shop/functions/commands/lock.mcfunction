###########################################################################################
# Shop Locked Error Message:
###########################################################################################
tellraw @s [{"text": "[", "color": "white"}, {"text": "Mr_Chibi's Player Shop", "color": "#FF2682"}, {"text": "]", "color": "white"}, {"text": " Opened player's shop.", "color": "#A3A3A3"}] 

###########################################################################################
# Shop "Locked" Allowing players to access:
###########################################################################################
execute as @e[type=minecraft:marker,distance=0..2,tag=ps_shop,nbt={data:{ps_status:"unlock"}}] at @s if entity @p[scores={ps_distance=0..2},distance=0..2] run data modify entity @s data.ps_status set value "lock"
execute as @e[type=minecraft:marker,distance=0..2,tag=ps_shop,nbt={data:{ps_status:"lock"}}] at @s if entity @p[scores={ps_distance=0..2},distance=0..2] run data modify block ~ ~ ~ Lock set string entity @s data.ps_owner

# Reset Command:
scoreboard players set @s[scores={ps_lock=1..}] ps_lock 0