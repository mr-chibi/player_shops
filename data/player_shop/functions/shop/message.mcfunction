# WEST
execute as @e[type=minecraft:villager,tag=player_shop,y_rotation=-135..-45] at @s run title @a[distance=0..5] actionbar [{"text": "Welcome to ", "color": "yellow"}, {"nbt": "Text2", "block": "~1 ~-1 ~", "interpret": true, "color": "green"}, {"text": "'s Shop!", "color": "green"}]

# SOUTH
execute as @e[type=minecraft:villager,tag=player_shop,y_rotation=135..-135] at @s run title @a[distance=0..5] actionbar [{"text": "Welcome to ", "color": "yellow"}, {"nbt": "Text2", "block": "~ ~-1 ~-1", "interpret": true, "color": "green"}, {"text": "'s Shop!", "color": "green"}]

# EAST
execute as @e[type=minecraft:villager,tag=player_shop,y_rotation=45..135] at @s run title @a[distance=0..5] actionbar [{"text": "Welcome to ", "color": "yellow"}, {"nbt": "Text2", "block": "~-1 ~-1 ~", "interpret": true, "color": "green"}, {"text": "'s Shop!", "color": "green"}]

# NORTH
execute as @e[type=minecraft:villager,tag=player_shop,y_rotation=-45..45] at @s run title @a[distance=0..5] actionbar [{"text": "Welcome to ", "color": "yellow"}, {"nbt": "Text2", "block": "~ ~-1 ~1", "interpret": true, "color": "green"}, {"text": "'s Shop!", "color": "green"}]