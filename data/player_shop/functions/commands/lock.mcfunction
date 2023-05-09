###########################################################################################
# Shop Lock Error Message:
###########################################################################################
execute as @e[type=minecraft:marker,tag=ps_shop,nbt={data:{ps_status:"lock"}}] at @s if score @s ps_id = @p[scores={ps_distance=0..2},distance=0..2] ps_id as @p at @s run tellraw @s [{"text": "[", "color": "white"}, {"text": "Mr_Chibi's Player Shop", "color": "#FF2682"}, {"text": "]", "color": "white"}, {"text": " Error! Your shop is already locked!", "color": "#A3A3A3"}] 

###########################################################################################
# Shop Unlocked, for "Shop Guests" to browse:
###########################################################################################
execute as @e[type=minecraft:marker,distance=0..2,tag=ps_shop,nbt={data:{ps_status:"unlock"}}] at @s if score @s ps_id = @p[scores={ps_distance=0..2},distance=0..2] ps_id as @p at @s run tellraw @s [{"text": "[", "color": "white"}, {"text": "Mr_Chibi's Player Shop", "color": "#FF2682"}, {"text": "]", "color": "white"}, {"text": " Your shop is open for business!", "color": "#A3A3A3"}]
execute as @e[type=minecraft:marker,distance=0..2,tag=ps_shop,nbt={data:{ps_status:"unlock"}}] at @s if score @s ps_id = @p[scores={ps_distance=0..2},distance=0..2] ps_id run data modify entity @s data.ps_status set value "lock"

###########################################################################################
# Shop "Locked" allowing players to access:
###########################################################################################
execute as @e[type=minecraft:marker,distance=0..2,tag=ps_shop,nbt={data:{ps_status:"lock"}}] at @s if score @s ps_id = @p[scores={ps_distance=0..2},distance=0..2] ps_id run data modify block ~ ~ ~ Lock set string entity @s data.ps_owner

###########################################################################################
# Reset Command:
###########################################################################################
scoreboard players set @s[scores={ps_lock=1..}] ps_lock 0