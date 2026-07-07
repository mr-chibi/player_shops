# Left Click:
execute as @e[type=minecraft:interaction,tag=mcs_shop,distance=0..5] at @s if data entity @s attack.player as @p at @s run scoreboard players add @s mcs_interaction 1
execute as @e[type=minecraft:interaction,tag=mcs_shop,distance=0..5] at @s if data entity @s attack.player as @p at @s run scoreboard players add @s mcs_lclick 1
execute as @e[type=minecraft:interaction,tag=mcs_shop,distance=0..5] at @s if data entity @s attack.player store result score @s mcs_ids run data get entity @s attack.player[0]
execute as @e[type=minecraft:interaction,tag=mcs_shop,distance=0..5] at @s if data entity @s attack.player run data remove entity @s attack

# Update Page:
execute as @e[type=minecraft:interaction,tag=mcs_shop,distance=0..5] at @s store result entity @s data.page int 1 as @p at @s run scoreboard players get @s mcs_lclick

# Restock [UI]:
execute if score @s mcs_interaction matches 1.. as @e[type=minecraft:interaction,tag=mcs_shop,distance=0..5] at @s run function #mcs_engine:stock

# Load [UI shop interaction]:
execute if score @s[scores={mcs_lclick=0..8}] mcs_interaction matches 1.. run function mcs_shops:ui/init with entity @e[type=minecraft:interaction,tag=mcs_shop,distance=0..5,limit=1] data

# Reset Left Click + interaction
scoreboard players set @s[scores={mcs_lclick=9..}] mcs_lclick -1
scoreboard players reset @s[scores={mcs_interaction=1..}] mcs_interaction