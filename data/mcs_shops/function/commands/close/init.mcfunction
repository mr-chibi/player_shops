# Do Something:
execute if score @e[type=minecraft:interaction,tag=mcs_shop,distance=0..5,limit=1] mcs_ids = @s mcs_ids run data modify entity @e[type=minecraft:interaction,tag=mcs_shop,distance=0..5,limit=1] width set value 0.50
execute if score @e[type=minecraft:interaction,tag=mcs_shop,distance=0..5,limit=1] mcs_ids = @s mcs_ids run data modify entity @e[type=minecraft:interaction,tag=mcs_shop,distance=0..5,limit=1] data.status set value "closed"

# Reset Command:
scoreboard players set @s[scores={mcs_close=1..}] mcs_close 0