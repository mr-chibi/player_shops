# Change Shop Type:
execute facing entity @e[type=minecraft:villager,tag=player_shop,limit=1] eyes run execute as @e[type=minecraft:villager,tag=player_shop,limit=1,sort=nearest] at @s if score @p[scores={ps_type=1}] ps_owner = @s ps_id run data modify entity @s VillagerData.type set value desert
execute as @e[type=minecraft:villager,tag=player_shop,limit=1,sort=nearest] at @s if score @p[scores={ps_type=1}] ps_owner = @s ps_id run tellraw @p [{"text": "Succesfully Villager Skin to Desert!", "color": "green"}]

execute facing entity @e[type=minecraft:villager,tag=player_shop,limit=1] eyes run execute as @e[type=minecraft:villager,tag=player_shop,limit=1,sort=nearest] at @s if score @p[scores={ps_type=2}] ps_owner = @s ps_id run data modify entity @s VillagerData.type set value jungle
execute facing entity @e[type=minecraft:villager,tag=player_shop,limit=1] eyes run execute as @e[type=minecraft:villager,tag=player_shop,limit=1,sort=nearest] at @s if score @p[scores={ps_type=2}] ps_owner = @s ps_id run tellraw @p [{"text": "Succesfully Villager Skin to Jungle!", "color": "green"}]

execute facing entity @e[type=minecraft:villager,tag=player_shop,limit=1] eyes run execute as @e[type=minecraft:villager,tag=player_shop,limit=1,sort=nearest] at @s if score @p[scores={ps_type=3}] ps_owner = @s ps_id run data modify entity @s VillagerData.type set value plains
execute facing entity @e[type=minecraft:villager,tag=player_shop,limit=1] eyes run execute as @e[type=minecraft:villager,tag=player_shop,limit=1,sort=nearest] at @s if score @p[scores={ps_type=3}] ps_owner = @s ps_id run tellraw @p [{"text": "Succesfully Villager Skin to Plains!", "color": "green"}]

execute facing entity @e[type=minecraft:villager,tag=player_shop,limit=1] eyes run execute as @e[type=minecraft:villager,tag=player_shop,limit=1,sort=nearest] at @s if score @p[scores={ps_type=4}] ps_owner = @s ps_id run data modify entity @s VillagerData.type set value savanna
execute facing entity @e[type=minecraft:villager,tag=player_shop,limit=1] eyes run execute as @e[type=minecraft:villager,tag=player_shop,limit=1,sort=nearest] at @s if score @p[scores={ps_type=4}] ps_owner = @s ps_id run tellraw @p [{"text": "Succesfully Villager Skin to Savanna!", "color": "green"}]

execute facing entity @e[type=minecraft:villager,tag=player_shop,limit=1] eyes run execute as @e[type=minecraft:villager,tag=player_shop,limit=1,sort=nearest] at @s if score @p[scores={ps_type=5}] ps_owner = @s ps_id run data modify entity @s VillagerData.type set value swamp
execute facing entity @e[type=minecraft:villager,tag=player_shop,limit=1] eyes run execute as @e[type=minecraft:villager,tag=player_shop,limit=1,sort=nearest] at @s if score @p[scores={ps_type=5}] ps_owner = @s ps_id run tellraw @p [{"text": "Succesfully Villager Skin to Swamp!", "color": "green"}]

execute facing entity @e[type=minecraft:villager,tag=player_shop,limit=1] eyes run execute as @e[type=minecraft:villager,tag=player_shop,limit=1,sort=nearest] at @s if score @p[scores={ps_type=6}] ps_owner = @s ps_id run data modify entity @s VillagerData.type set value taiga
execute facing entity @e[type=minecraft:villager,tag=player_shop,limit=1] eyes run execute as @e[type=minecraft:villager,tag=player_shop,limit=1,sort=nearest] at @s if score @p[scores={ps_type=6}] ps_owner = @s ps_id run tellraw @p [{"text": "Succesfully Villager Skin to Taiga!", "color": "green"}]

# Reset Command:
scoreboard players set @s ps_type 0