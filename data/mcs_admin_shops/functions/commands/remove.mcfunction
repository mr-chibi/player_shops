# Remove Shop:
execute as @e[type=minecraft:marker,distance=0..5,sort=nearest,tag=mcs_shops,limit=1] at @s run setblock ~ ~ ~ minecraft:air
execute as @e[type=minecraft:marker,distance=0..5,sort=nearest,tag=mcs_shops,limit=1] at @s run kill @s

# Msg:
tellraw @s [{"text": "Shop successfully Removed!", "color": "green"}]

# Reset [Command]:
scoreboard players set @s[scores={mcs_remove=1..}] mcs_remove 0