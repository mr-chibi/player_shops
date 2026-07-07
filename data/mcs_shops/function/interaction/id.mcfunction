# get [ID]:
execute if entity @e[type=minecraft:interaction,tag=mcs_shop,distance=0..5] store result score @s mcs_ids run data get entity @s UUID[0]
execute unless entity @e[type=minecraft:interaction,tag=mcs_shop,distance=..5] run scoreboard players reset @s mcs_ids