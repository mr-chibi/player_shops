# Close Shop:
execute as @e[type=minecraft:marker,distance=0..5,sort=nearest,tag=mcs_shops] at @s run data modify entity @s data.shop_status set value "closed"
execute as @e[type=minecraft:marker,distance=0..5,sort=nearest,tag=mcs_shops] at @s run data modify block ~ ~ ~ Lock set value ""

# Msg:
tellraw @s [{"text": "Force closing players shop!", "color": "red"}]

# Reset [Command]:
scoreboard players set @s[scores={mcs_close=1..}] mcs_close 0