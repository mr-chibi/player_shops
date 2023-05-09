###########################################################################################
# Shop Unlock Error Message:
###########################################################################################
execute as @e[type=minecraft:marker,tag=ps_shop,nbt={data:{ps_status:"unlock"}}] at @s if score @s ps_id = @p[scores={ps_distance=0..2},distance=0..2] ps_id as @p at @s run tellraw @s [{"text": "[", "color": "white"}, {"text": "Mr_Chibi's Player Shop", "color": "#FF2682"}, {"text": "]", "color": "white"}, {"text": " Error! Your shop is already unlocked!", "color": "#A3A3A3"}] 

###########################################################################################
# Shop Locked, Closed for "Shop Owner" Maintenace:
###########################################################################################
execute as @e[type=minecraft:marker,tag=ps_shop,nbt={data:{ps_status:"lock"}}] at @s if score @s ps_id = @p[scores={ps_distance=0..2},distance=0..2] ps_id as @p at @s run tellraw @s [{"text": "[", "color": "white"}, {"text": "Mr_Chibi's Player Shop", "color": "#FF2682"}, {"text": "]", "color": "white"}, {"text": " Your shop is closed for maintenace other player's may NOT enter!", "color": "#A3A3A3"}]
execute as @e[type=minecraft:marker,tag=ps_shop,nbt={data:{ps_status:"lock"}}] at @s if score @s ps_id = @p[scores={ps_distance=0..2},distance=0..2] ps_id run data modify entity @s data.ps_status set value "unlock"

###########################################################################################
# Shop "Unlocked" From Player's trying to access:
###########################################################################################
execute as @e[type=minecraft:marker,distance=0..2,tag=ps_shop,nbt={data:{ps_status:"unlock"}}] at @s if score @s ps_id = @p[scores={ps_distance=0..2},distance=0..2] ps_id run data modify block ~ ~ ~ Lock set value ""

###########################################################################################
# Reset Command:
###########################################################################################
scoreboard players set @s[scores={ps_unlock=1..}] ps_unlock 0