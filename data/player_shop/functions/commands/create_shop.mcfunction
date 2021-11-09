# Created Shop Message:
tellraw @s [{"text": "Succesfully Created Shop!", "color": "green"}]

# WEST
execute as @s[y_rotation=-135..-45] run setblock ~ ~ ~ minecraft:chest[facing=west]
execute as @s[y_rotation=-135..-45] run setblock ~ ~-1 ~ minecraft:chest[facing=west]
execute as @s[y_rotation=-135..-45] run summon villager ~ ~1 ~ {VillagerData:{profession:cleric,level:5},Offers:{Recipes:[{buy:{id:air,Count:1},sell:{id:air,Count:1},rewardExp:0b,maxUses:1},{buy:{id:air,Count:1},sell:{id:air,Count:1},rewardExp:0b,maxUses:1},{buy:{id:air,Count:1},sell:{id:air,Count:1},rewardExp:0b,maxUses:1}]}, Rotation:[90f], Tags:["player_shop"], NoAI:1b, CustomNameVisible:1b, HandDropChances:[0.0f, 0.0f], Invulnerable:1, PersistenceRequired:1}
execute as @s[y_rotation=-135..-45] run setblock ~-1 ~ ~ minecraft:oak_wall_sign[facing=west]{Text2:"{\"selector\": \"@p\", \"color\": \"green\"}", Text3:"{\"text\": \"Shop\", \"color\": \"#3FA8D0\"}"}
execute as @s[y_rotation=-135..-45] run tp @s ~-0.469 ~ ~

# SOUTH
execute as @s[y_rotation=135..-135] run setblock ~ ~ ~ minecraft:chest[facing=south]
execute as @s[y_rotation=135..-135] run setblock ~ ~-1 ~ minecraft:chest[facing=south]
execute as @s[y_rotation=135..-135] run summon villager ~ ~1 ~ {VillagerData:{profession:cleric,level:5},Offers:{Recipes:[{buy:{id:air,Count:1},sell:{id:air,Count:1},rewardExp:0b,maxUses:1},{buy:{id:air,Count:1},sell:{id:air,Count:1},rewardExp:0b,maxUses:1},{buy:{id:air,Count:1},sell:{id:air,Count:1},rewardExp:0b,maxUses:1}]}, Rotation:[0f], Tags:["player_shop"], NoAI:1b, CustomNameVisible:1b, HandDropChances:[0.0f, 0.0f], Invulnerable:1, PersistenceRequired:1}
execute as @s[y_rotation=135..-135] run setblock ~ ~ ~1 minecraft:oak_wall_sign[facing=south]{Text2:"{\"selector\": \"@p\", \"color\": \"green\"}", Text3:"{\"text\": \"Shop\", \"color\": \"#3FA8D0\"}"}
execute as @s[y_rotation=135..-135] run tp @s ~ ~ ~0.469

# EAST
execute as @s[y_rotation=45..135] run setblock ~ ~ ~ minecraft:chest[facing=east]
execute as @s[y_rotation=45..135] run setblock ~ ~-1 ~ minecraft:chest[facing=east]
execute as @s[y_rotation=45..135] run summon villager ~ ~1 ~ {VillagerData:{profession:cleric,level:5},Offers:{Recipes:[{buy:{id:air,Count:1},sell:{id:air,Count:1},rewardExp:0b,maxUses:1},{buy:{id:air,Count:1},sell:{id:air,Count:1},rewardExp:0b,maxUses:1},{buy:{id:air,Count:1},sell:{id:air,Count:1},rewardExp:0b,maxUses:1}]}, Rotation:[-90f], Tags:["player_shop"], NoAI:1b, CustomNameVisible:1b, HandDropChances:[0.0f, 0.0f], Invulnerable:1, PersistenceRequired:1}
execute as @s[y_rotation=45..135] run setblock ~1 ~ ~ minecraft:oak_wall_sign[facing=east]{Text2:"{\"selector\": \"@p\", \"color\": \"green\"}", Text3:"{\"text\": \"Shop\", \"color\": \"#3FA8D0\"}"}
execute as @s[y_rotation=45..135] run tp @s ~0.469 ~ ~

# NORTH
execute as @s[y_rotation=-45..45] run setblock ~ ~ ~ minecraft:chest[facing=north]
execute as @s[y_rotation=-45..45] run setblock ~ ~-1 ~ minecraft:chest[facing=north]
execute as @s[y_rotation=-45..45] run summon villager ~ ~1 ~ {VillagerData:{profession:cleric,level:5},Offers:{Recipes:[{buy:{id:air,Count:1},sell:{id:air,Count:1},rewardExp:0b,maxUses:1},{buy:{id:air,Count:1},sell:{id:air,Count:1},rewardExp:0b,maxUses:1},{buy:{id:air,Count:1},sell:{id:air,Count:1},rewardExp:0b,maxUses:1}]}, Rotation:[180f], Tags:["player_shop"], NoAI:1b, CustomNameVisible:1b, HandDropChances:[0.0f, 0.0f], Invulnerable:1, PersistenceRequired:1}
execute as @s[y_rotation=-45..45] run setblock ~ ~ ~-1 minecraft:oak_wall_sign[facing=north]{Text2:"{\"selector\": \"@p\", \"color\": \"green\"}", Text3:"{\"text\": \"Shop\", \"color\": \"#3FA8D0\"}"}
execute as @s[y_rotation=-45..45] run tp @s ~ ~ ~-0.469

#
execute as @e[type=minecraft:villager,tag=player_shop,distance=0..2] at @s store result score @s ps_id run data get entity @s UUID[0]

#
execute as @e[type=minecraft:villager,tag=player_shop,distance=0..2] at @s store result score @s ps_id run scoreboard players operation @s ps_id = @p ps_owner

#
execute as @e[type=minecraft:villager,tag=player_shop,distance=0..2] at @s run data modify entity @s HandItems[0] set value {id:"minecraft:knowledge_book", Count:1b, tag:{ps_inventory:[{}, {}, {}], ps_sell:[{}, {}, {}]}}

# Reset Command:
scoreboard players set @s[scores={ps_create=1..}] ps_create 0