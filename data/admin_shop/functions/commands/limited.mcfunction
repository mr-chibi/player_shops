# Revoke shop "Admin Selling" Unlimited:
execute as @e[type=minecraft:marker,tag=ps_shop] at @s if entity @p[scores={ps_distance=0..2},distance=0..2] run tag @s[tag=ps_admin] remove ps_admin

# Revert shop back to how it was orginally:
execute as @e[type=minecraft:marker,tag=ps_shop] at @s if entity @p[scores={ps_distance=0..2},distance=0..2] store result block ~ ~ ~ Items[{Slot:9b}].Count byte 1 run scoreboard players get @s ps_sell_remainer_1
execute as @e[type=minecraft:marker,tag=ps_shop] at @s if entity @p[scores={ps_distance=0..2},distance=0..2] store result block ~ ~ ~ Items[{Slot:10b}].Count byte 1 run scoreboard players get @s ps_sell_remainer_2
execute as @e[type=minecraft:marker,tag=ps_shop] at @s if entity @p[scores={ps_distance=0..2},distance=0..2] store result block ~ ~ ~ Items[{Slot:11b}].Count byte 1 run scoreboard players get @s ps_sell_remainer_3
execute as @e[type=minecraft:marker,tag=ps_shop] at @s if entity @p[scores={ps_distance=0..2},distance=0..2] store result block ~ ~ ~ Items[{Slot:12b}].Count byte 1 run scoreboard players get @s ps_sell_remainer_4
execute as @e[type=minecraft:marker,tag=ps_shop] at @s if entity @p[scores={ps_distance=0..2},distance=0..2] store result block ~ ~ ~ Items[{Slot:13b}].Count byte 1 run scoreboard players get @s ps_sell_remainer_5
execute as @e[type=minecraft:marker,tag=ps_shop] at @s if entity @p[scores={ps_distance=0..2},distance=0..2] store result block ~ ~ ~ Items[{Slot:14b}].Count byte 1 run scoreboard players get @s ps_sell_remainer_6
execute as @e[type=minecraft:marker,tag=ps_shop] at @s if entity @p[scores={ps_distance=0..2},distance=0..2] store result block ~ ~ ~ Items[{Slot:15b}].Count byte 1 run scoreboard players get @s ps_sell_remainer_7
execute as @e[type=minecraft:marker,tag=ps_shop] at @s if entity @p[scores={ps_distance=0..2},distance=0..2] store result block ~ ~ ~ Items[{Slot:16b}].Count byte 1 run scoreboard players get @s ps_sell_remainer_8
execute as @e[type=minecraft:marker,tag=ps_shop] at @s if entity @p[scores={ps_distance=0..2},distance=0..2] store result block ~ ~ ~ Items[{Slot:17b}].Count byte 1 run scoreboard players get @s ps_sell_remainer_9

# Reset counted items to prevent "item duplication":
execute as @e[type=minecraft:marker,tag=ps_shop] at @s if entity @p[scores={ps_distance=0..2},distance=0..2] run scoreboard players reset @s ps_sell_remainer_1
execute as @e[type=minecraft:marker,tag=ps_shop] at @s if entity @p[scores={ps_distance=0..2},distance=0..2] run scoreboard players reset @s ps_sell_remainer_2
execute as @e[type=minecraft:marker,tag=ps_shop] at @s if entity @p[scores={ps_distance=0..2},distance=0..2] run scoreboard players reset @s ps_sell_remainer_3
execute as @e[type=minecraft:marker,tag=ps_shop] at @s if entity @p[scores={ps_distance=0..2},distance=0..2] run scoreboard players reset @s ps_sell_remainer_4
execute as @e[type=minecraft:marker,tag=ps_shop] at @s if entity @p[scores={ps_distance=0..2},distance=0..2] run scoreboard players reset @s ps_sell_remainer_5
execute as @e[type=minecraft:marker,tag=ps_shop] at @s if entity @p[scores={ps_distance=0..2},distance=0..2] run scoreboard players reset @s ps_sell_remainer_6
execute as @e[type=minecraft:marker,tag=ps_shop] at @s if entity @p[scores={ps_distance=0..2},distance=0..2] run scoreboard players reset @s ps_sell_remainer_7
execute as @e[type=minecraft:marker,tag=ps_shop] at @s if entity @p[scores={ps_distance=0..2},distance=0..2] run scoreboard players reset @s ps_sell_remainer_8
execute as @e[type=minecraft:marker,tag=ps_shop] at @s if entity @p[scores={ps_distance=0..2},distance=0..2] run scoreboard players reset @s ps_sell_remainer_9

###########################################################################################
# Shop Admin Message:
###########################################################################################
tellraw @s [{"text": "[", "color": "white"}, {"text": "Mr_Chibi's Player Shop", "color": "#FF2682"}, {"text": "]", "color": "white"}, {"text": " Unlimited Selling has been disabled for this shop!", "color": "#A3A3A3"}] 

###########################################################################################
# Reset Command:
###########################################################################################
scoreboard players set @s[scores={ps_limited=1..}] ps_limited 0