#
execute if entity @e[type=minecraft:interaction,distance=0..5,tag=mcs_shop] run tellraw @s [{"text": "Error, can't place shop! Shop has be 5 blocks apart!", "color": "red"}]

#
execute unless entity @e[type=minecraft:interaction,distance=..5,tag=mcs_shop] run function mcs_shops:commands/create/approve

# Reset Command:
scoreboard players set @s[scores={mcs_create=1..}] mcs_create 0