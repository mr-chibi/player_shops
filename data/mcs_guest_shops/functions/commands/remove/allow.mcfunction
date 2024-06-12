# Remove [Chest/Marker]
setblock ~ ~ ~ minecraft:air
kill @s

# Msg:
tellraw @s [{"text": "Shop successfully Removed!", "color": "green"}]