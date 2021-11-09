# Created Shop Message:
tellraw @s [{"text": "Succesfully Created Admin Shop!", "color": "green"}]

# WEST
execute as @s[y_rotation=-135..-45] run setblock ~ ~ ~ minecraft:chest[facing=west]
execute as @s[y_rotation=-135..-45] run summon minecraft:wandering_trader ~ ~1 ~ {Offers:{Recipes:[{buy:{id:air,Count:1},sell:{id:air,Count:1},rewardExp:0b,maxUses:9999999},{buy:{id:air,Count:1},sell:{id:air,Count:1},rewardExp:0b,maxUses:9999999},{buy:{id:air,Count:1},sell:{id:air,Count:1},rewardExp:0b,maxUses:9999999},{buy:{id:air,Count:1},sell:{id:air,Count:1},rewardExp:0b,maxUses:9999999},{buy:{id:air,Count:1},sell:{id:air,Count:1},rewardExp:0b,maxUses:9999999},{buy:{id:air,Count:1},sell:{id:air,Count:1},rewardExp:0b,maxUses:9999999},{buy:{id:air,Count:1},sell:{id:air,Count:1},rewardExp:0b,maxUses:9999999},{buy:{id:air,Count:1},sell:{id:air,Count:1},rewardExp:0b,maxUses:9999999},{buy:{id:air,Count:1},sell:{id:air,Count:1},rewardExp:0b,maxUses:9999999}]}, Rotation:[90f], Tags:["admin_shop"], NoAI:1b, CustomName:"{\"text\": \"Admin Shop\"}", CustomNameVisible:1b, HandDropChances:[0.0f, 0.0f], Invulnerable:1, PersistenceRequired:1}
execute as @s[y_rotation=-135..-45] run tp @s ~-0.469 ~ ~

# SOUTH
execute as @s[y_rotation=135..-135] run setblock ~ ~ ~ minecraft:chest[facing=south]
execute as @s[y_rotation=135..-135] run summon minecraft:wandering_trader ~ ~1 ~ {Offers:{Recipes:[{buy:{id:air,Count:1},sell:{id:air,Count:1},rewardExp:0b,maxUses:9999999},{buy:{id:air,Count:1},sell:{id:air,Count:1},rewardExp:0b,maxUses:9999999},{buy:{id:air,Count:1},sell:{id:air,Count:1},rewardExp:0b,maxUses:9999999},{buy:{id:air,Count:1},sell:{id:air,Count:1},rewardExp:0b,maxUses:9999999},{buy:{id:air,Count:1},sell:{id:air,Count:1},rewardExp:0b,maxUses:9999999},{buy:{id:air,Count:1},sell:{id:air,Count:1},rewardExp:0b,maxUses:9999999},{buy:{id:air,Count:1},sell:{id:air,Count:1},rewardExp:0b,maxUses:9999999},{buy:{id:air,Count:1},sell:{id:air,Count:1},rewardExp:0b,maxUses:9999999},{buy:{id:air,Count:1},sell:{id:air,Count:1},rewardExp:0b,maxUses:9999999}]}, Rotation:[0f], Tags:["admin_shop"], NoAI:1b, CustomName:"{\"text\": \"Admin Shop\"}", CustomNameVisible:1b, HandDropChances:[0.0f, 0.0f], Invulnerable:1, PersistenceRequired:1}
execute as @s[y_rotation=135..-135] run tp @s ~ ~ ~0.469

# EAST
execute as @s[y_rotation=45..135] run setblock ~ ~ ~ minecraft:chest[facing=east]
execute as @s[y_rotation=45..135] run summon minecraft:wandering_trader ~ ~1 ~ {Offers:{Recipes:[{buy:{id:air,Count:1},sell:{id:air,Count:1},rewardExp:0b,maxUses:9999999},{buy:{id:air,Count:1},sell:{id:air,Count:1},rewardExp:0b,maxUses:9999999},{buy:{id:air,Count:1},sell:{id:air,Count:1},rewardExp:0b,maxUses:9999999},{buy:{id:air,Count:1},sell:{id:air,Count:1},rewardExp:0b,maxUses:9999999},{buy:{id:air,Count:1},sell:{id:air,Count:1},rewardExp:0b,maxUses:9999999},{buy:{id:air,Count:1},sell:{id:air,Count:1},rewardExp:0b,maxUses:9999999},{buy:{id:air,Count:1},sell:{id:air,Count:1},rewardExp:0b,maxUses:9999999},{buy:{id:air,Count:1},sell:{id:air,Count:1},rewardExp:0b,maxUses:9999999},{buy:{id:air,Count:1},sell:{id:air,Count:1},rewardExp:0b,maxUses:9999999}]}, Rotation:[-90f], Tags:["admin_shop"], NoAI:1b, CustomName:"{\"text\": \"Admin Shop\"}", CustomNameVisible:1b, HandDropChances:[0.0f, 0.0f], Invulnerable:1, PersistenceRequired:1}
execute as @s[y_rotation=45..135] run tp @s ~0.469 ~ ~

# NORTH
execute as @s[y_rotation=-45..45] run setblock ~ ~ ~ minecraft:chest[facing=north]
execute as @s[y_rotation=-45..45] run summon minecraft:wandering_trader ~ ~1 ~ {Offers:{Recipes:[{buy:{id:air,Count:1},sell:{id:air,Count:1},rewardExp:0b,maxUses:9999999},{buy:{id:air,Count:1},sell:{id:air,Count:1},rewardExp:0b,maxUses:9999999},{buy:{id:air,Count:1},sell:{id:air,Count:1},rewardExp:0b,maxUses:9999999},{buy:{id:air,Count:1},sell:{id:air,Count:1},rewardExp:0b,maxUses:9999999},{buy:{id:air,Count:1},sell:{id:air,Count:1},rewardExp:0b,maxUses:9999999},{buy:{id:air,Count:1},sell:{id:air,Count:1},rewardExp:0b,maxUses:9999999},{buy:{id:air,Count:1},sell:{id:air,Count:1},rewardExp:0b,maxUses:9999999},{buy:{id:air,Count:1},sell:{id:air,Count:1},rewardExp:0b,maxUses:9999999},{buy:{id:air,Count:1},sell:{id:air,Count:1},rewardExp:0b,maxUses:9999999}]}, Rotation:[180f], Tags:["admin_shop"], NoAI:1b, CustomName:"{\"text\": \"Admin Shop\"}", CustomNameVisible:1b, HandDropChances:[0.0f, 0.0f], Invulnerable:1, PersistenceRequired:1}
execute as @s[y_rotation=-45..45] run tp @s ~ ~ ~-0.469

#
execute as @e[type=minecraft:wandering_trader,tag=admin_shop,distance=0..2] at @s run data modify entity @s HandItems[0] set value {id:"minecraft:knowledge_book", Count:1b, tag:{adminps_inventory:[{}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}]}}

# Reset Command:
scoreboard players set @s[scores={adminps_create=1..}] adminps_create 0