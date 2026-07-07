#
$tellraw @s [{"text": "\nSelling: ", "color": "green"}, {"text": "$(id)", "color":"#cccccc"}]

# Update Icon
$execute as @e[type=minecraft:item_display,distance=0..5] at @s if block ~ ~-1 ~ minecraft:chest if data entity @s item.id run data modify entity @s item.id set value "$(id)"
execute as @e[type=minecraft:item_display,distance=0..5] at @s if block ~ ~-1 ~ minecraft:chest unless data entity @s item.id run data modify entity @s item.id set value "minecraft:barrier"

# Rotate Icon:
execute as @e[type=minecraft:item_display,distance=0..5] at @s if block ~ ~-1 ~ minecraft:chest run data modify entity @s transformation.scale set value [0.25f,0.25f,0.25f]