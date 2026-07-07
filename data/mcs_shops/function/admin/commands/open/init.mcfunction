# Do Something:
data modify entity @e[type=minecraft:interaction,tag=mcs_shop,distance=0..5,limit=1] width set value 1
data modify entity @e[type=minecraft:interaction,tag=mcs_shop,distance=0..5,limit=1] data.status set value "open"

# Reset Command:
scoreboard players set @s[scores={mcs_open=1..}] mcs_open 0