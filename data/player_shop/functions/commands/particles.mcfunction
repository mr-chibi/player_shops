###########################################################################################
# Shop Error Message:
###########################################################################################
execute if score @s ps_id = @e[type=minecraft:marker,tag=ps_shop,distance=3..6,limit=1] ps_id run scoreboard players reset @s ps_particles
execute if score @s ps_id = @e[type=minecraft:marker,tag=ps_shop,distance=3..6,limit=1] ps_id run tellraw @s [{"text": "[", "color": "white"}, {"text": "Mr_Chibi's Player Shop", "color": "#FF2682"}, {"text": "]", "color": "white"}, {"text": " Error! Please, stand 1-2 blocks near shop to toggle particles!", "color": "#A3A3A3"}]


###########################################################################################
# Shop Settings Message:
###########################################################################################
execute as @e[type=minecraft:marker,tag=ps_shop] at @s if score @s ps_id = @p[distance=0..2,scores={ps_particles=1}] ps_id run data modify entity @s data.particles set value ""
execute as @e[type=minecraft:marker,tag=ps_shop] at @s if score @s ps_id = @p[distance=0..2,scores={ps_particles=2}] ps_id run data modify entity @s data.particles set value "end_rod"
execute as @e[type=minecraft:marker,tag=ps_shop] at @s if score @s ps_id = @p[distance=0..2,scores={ps_particles=3}] ps_id run data modify entity @s data.particles set value "firework"
execute as @e[type=minecraft:marker,tag=ps_shop] at @s if score @s ps_id = @p[distance=0..2,scores={ps_particles=4}] ps_id run data modify entity @s data.particles set value "happy_villager"
execute as @e[type=minecraft:marker,tag=ps_shop] at @s if score @s ps_id = @p[distance=0..2,scores={ps_particles=5}] ps_id run data modify entity @s data.particles set value "portal"
execute as @e[type=minecraft:marker,tag=ps_shop] at @s if score @s ps_id = @p[distance=0..2,scores={ps_particles=6}] ps_id run data modify entity @s data.particles set value "snowflake"


###########################################################################################
# Reset Command:
###########################################################################################
scoreboard players set @s[scores={ps_particles=1..}] ps_particles 0