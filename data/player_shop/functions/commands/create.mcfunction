###########################################################################################
# Shop Refuse Message:
###########################################################################################
execute if entity @e[type=minecraft:marker,tag=ps_shop,sort=nearest,distance=0..8] run tag @p add ps_refuse
tellraw @s[tag=ps_refuse] [{"text": "[", "color": "white"}, {"text": "Mr_Chibi's Player Shop", "color": "#FF2682"}, {"text": "]", "color": "white"}, {"text": " Sorry, you can't that here! Shops are 8 blocks apart from each other!", "color": "#A3A3A3"}]


###########################################################################################
# Shop Created Message
###########################################################################################
tellraw @s[tag=!ps_refuse] [{"text": "[", "color": "white"}, {"text": "Mr_Chibi's Player Shop", "color": "#FF2682"}, {"text": "] ", "color": "white"}, {"text": "Succesfully Created Shop!", "color": "green"}]

###########################################################################################
# Place Shop Chest:
###########################################################################################
# WEST
execute as @s[tag=!ps_refuse,y_rotation=-135..-45] run setblock ~ ~ ~ minecraft:chest[facing=west]
execute as @s[tag=!ps_refuse,y_rotation=-135..-45] run setblock ~-1 ~ ~ minecraft:spruce_wall_sign[facing=west]{Text2:"{\"selector\": \"@p\", \"color\": \"#FFFFFF\"}", Text3:"{\"text\": \"Shop\", \"color\": \"#FF2682\"}"}
execute as @s[tag=!ps_refuse,y_rotation=-135..-45] run tp @s ~-0.469 ~ ~

# SOUTH
execute as @s[tag=!ps_refuse,y_rotation=135..-135] run setblock ~ ~ ~ minecraft:chest[facing=south]
execute as @s[tag=!ps_refuse,y_rotation=135..-135] run setblock ~ ~ ~1 minecraft:spruce_wall_sign[facing=south]{Text2:"{\"selector\": \"@p\", \"color\": \"#FFFFFF\"}", Text3:"{\"text\": \"Shop\", \"color\": \"#FF2682\"}"}
execute as @s[tag=!ps_refuse,y_rotation=135..-135] run tp @s ~ ~ ~0.469

# EAST
execute as @s[tag=!ps_refuse,y_rotation=45..135] run setblock ~ ~ ~ minecraft:chest[facing=east]
execute as @s[tag=!ps_refuse,y_rotation=45..135] run setblock ~1 ~ ~ minecraft:spruce_wall_sign[facing=east]{Text2:"{\"selector\": \"@p\", \"color\": \"#FFFFFF\"}", Text3:"{\"text\": \"Shop\", \"color\": \"#FF2682\"}"}
execute as @s[tag=!ps_refuse,y_rotation=45..135] run tp @s ~0.469 ~ ~

# NORTH
execute as @s[tag=!ps_refuse,y_rotation=-45..45] run setblock ~ ~ ~ minecraft:chest[facing=north]
execute as @s[tag=!ps_refuse,y_rotation=-45..45] run setblock ~ ~ ~-1 minecraft:spruce_wall_sign[facing=north]{Text2:"{\"selector\": \"@p\", \"color\": \"#FFFFFF\"}", Text3:"{\"text\": \"Shop\", \"color\": \"#FF2682\"}"}
execute as @s[tag=!ps_refuse,y_rotation=-45..45] run tp @s ~ ~ ~-0.469


###########################################################################################
# Summon "Marker" as Shop NBT:
###########################################################################################
execute as @s[tag=!ps_refuse] run summon minecraft:marker ~ ~ ~ {data:{ps_owner:"", ps_sell:[{}, {}, {}, {}, {}, {}, {}, {}, {}], ps_buy:[{}, {}, {}, {}, {}, {}, {}, {}, {}], ps_recieved:[{Slot:18b, id:"minecraft:air", Count:1b}, {Slot:19b, id:"minecraft:air", Count:1b}, {Slot:20b, id:"minecraft:air", Count:1b}, {Slot:21b, id:"minecraft:air", Count:1b}, {Slot:22b, id:"minecraft:air", Count:1b}, {Slot:23b, id:"minecraft:air", Count:1b}, {Slot:24b, id:"minecraft:air", Count:1b}, {Slot:25b, id:"minecraft:air", Count:1b}, {Slot:26b, id:"minecraft:air", Count:1b}], particles:"", ps_status:"lock"},Tags:["ps_shop"]}


###########################################################################################
# If Player created shop, store UUID[0] into "scoreboard"
###########################################################################################
execute store result score @s[tag=!ps_refuse] ps_id run data get entity @s UUID[0]


###########################################################################################
# Get "Marker" UUID[0] & Replace "Marker" UUID[0] w/ Player's to become "shop owner": 
###########################################################################################
execute as @e[type=minecraft:marker,tag=ps_shop] at @s if entity @p[distance=0..3,tag=!ps_refuse] store result score @s ps_id run data get entity @s UUID[0]
execute as @e[type=minecraft:marker,tag=ps_shop] at @s if entity @p[distance=0..3,tag=!ps_refuse] store result score @s ps_id run data get entity @p UUID[0]


###########################################################################################
# Execute as "Marker" & Store, "Player" UUID[0] into NBT data:
###########################################################################################
execute as @e[type=minecraft:marker,tag=ps_shop] at @s if entity @p[distance=0..3,tag=!ps_refuse] store result entity @s data.ps_owner int 1 run data get entity @p UUID[0]


###########################################################################################
# Execute as "Marker" & Store, "Player" UUID[0] into NBT data:
###########################################################################################
execute as @e[type=minecraft:marker,tag=ps_shop] at @s if entity @p[distance=0..3,tag=!ps_refuse] if entity @p[distance=0..3,tag=!ps_refuse] run data modify block ~ ~ ~ Lock set string entity @s data.ps_owner


###########################################################################################
# Reset Command:
###########################################################################################
tag @s remove ps_refuse
scoreboard players set @s[scores={ps_create=1..}] ps_create 0