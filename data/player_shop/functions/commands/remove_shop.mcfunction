# Error Handling:
execute as @a at @s run execute as @e[type=minecraft:villager,tag=player_shop,distance=0..2] at @s unless score @p ps_owner = @s ps_id run tellraw @p [{"text": "Error, You may not remove this players shop!", "color": "red"}]

# Remove Player's Shop:
execute as @a at @s run execute as @e[type=minecraft:villager,tag=player_shop,distance=0..2] at @s if score @p ps_owner = @s ps_id run tellraw @p [{"text": "Shop Removed!", "color": "green"}]
execute as @a at @s run execute as @e[type=minecraft:villager,tag=player_shop,distance=0..2] at @s if score @p ps_owner = @s ps_id run kill @s

# Reset Command:
scoreboard players set @s[scores={ps_remove=1..}] ps_remove 0