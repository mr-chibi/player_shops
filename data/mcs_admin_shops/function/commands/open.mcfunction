# Open Shop
execute as @e[type=minecraft:marker,distance=0..5,sort=nearest,tag=mcs_shops] at @s run data modify entity @s data.shop_status set value "open"
execute as @e[type=minecraft:marker,distance=0..5,sort=nearest,tag=mcs_shops] at @s run data modify block ~ ~ ~ lock set value {"components":{"minecraft:custom_name":"123"}}

# Msg:
tellraw @s [{"text": "Force opening players shop!", "color": "green"}]

# Reset [Command]:
scoreboard players set @s[scores={mcs_open=1..}] mcs_open 0