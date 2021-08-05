# Change Shop Type:
execute facing entity @e[type=minecraft:villager,tag=player_shop,limit=1] eyes run execute as @e[type=minecraft:villager,tag=player_shop,limit=1,sort=nearest] at @s if score @p[scores={ps_type=1}] ps_owner = @s ps_id run data modify entity @s VillagerData.profession set value farmer
execute as @e[type=minecraft:villager,tag=player_shop,limit=1,sort=nearest] at @s if score @p[scores={ps_type=1}] ps_owner = @s ps_id run tellraw @p [{"text": "Succesfully Changed Shop Type to Farming!", "color": "green"}]

execute facing entity @e[type=minecraft:villager,tag=player_shop,limit=1] eyes run execute as @e[type=minecraft:villager,tag=player_shop,limit=1,sort=nearest] at @s if score @p[scores={ps_type=2}] ps_owner = @s ps_id run data modify entity @s VillagerData.profession set value fisherman
execute facing entity @e[type=minecraft:villager,tag=player_shop,limit=1] eyes run execute as @e[type=minecraft:villager,tag=player_shop,limit=1,sort=nearest] at @s if score @p[scores={ps_type=2}] ps_owner = @s ps_id run tellraw @p [{"text": "Succesfully Changed Shop Type to Fishing!", "color": "green"}]

execute facing entity @e[type=minecraft:villager,tag=player_shop,limit=1] eyes run execute as @e[type=minecraft:villager,tag=player_shop,limit=1,sort=nearest] at @s if score @p[scores={ps_type=3}] ps_owner = @s ps_id run data modify entity @s VillagerData.profession set value shepherd
execute facing entity @e[type=minecraft:villager,tag=player_shop,limit=1] eyes run execute as @e[type=minecraft:villager,tag=player_shop,limit=1,sort=nearest] at @s if score @p[scores={ps_type=3}] ps_owner = @s ps_id run tellraw @p [{"text": "Succesfully Changed Shop Type to Shepherd!", "color": "green"}]

execute facing entity @e[type=minecraft:villager,tag=player_shop,limit=1] eyes run execute as @e[type=minecraft:villager,tag=player_shop,limit=1,sort=nearest] at @s if score @p[scores={ps_type=4}] ps_owner = @s ps_id run data modify entity @s VillagerData.profession set value fletcher
execute facing entity @e[type=minecraft:villager,tag=player_shop,limit=1] eyes run execute as @e[type=minecraft:villager,tag=player_shop,limit=1,sort=nearest] at @s if score @p[scores={ps_type=4}] ps_owner = @s ps_id run tellraw @p [{"text": "Succesfully Changed Shop Type to Fletching!", "color": "green"}]

execute facing entity @e[type=minecraft:villager,tag=player_shop,limit=1] eyes run execute as @e[type=minecraft:villager,tag=player_shop,limit=1,sort=nearest] at @s if score @p[scores={ps_type=5}] ps_owner = @s ps_id run data modify entity @s VillagerData.profession set value librarian
execute facing entity @e[type=minecraft:villager,tag=player_shop,limit=1] eyes run execute as @e[type=minecraft:villager,tag=player_shop,limit=1,sort=nearest] at @s if score @p[scores={ps_type=5}] ps_owner = @s ps_id run tellraw @p [{"text": "Succesfully Changed Shop Type to Librarian!", "color": "green"}]

execute facing entity @e[type=minecraft:villager,tag=player_shop,limit=1] eyes run execute as @e[type=minecraft:villager,tag=player_shop,limit=1,sort=nearest] at @s if score @p[scores={ps_type=6}] ps_owner = @s ps_id run data modify entity @s VillagerData.profession set value cartographer
execute facing entity @e[type=minecraft:villager,tag=player_shop,limit=1] eyes run execute as @e[type=minecraft:villager,tag=player_shop,limit=1,sort=nearest] at @s if score @p[scores={ps_type=6}] ps_owner = @s ps_id run tellraw @p [{"text": "Succesfully Changed Shop Type to Cartographer!", "color": "green"}]

execute facing entity @e[type=minecraft:villager,tag=player_shop,limit=1] eyes run execute as @e[type=minecraft:villager,tag=player_shop,limit=1,sort=nearest] at @s if score @p[scores={ps_type=7}] ps_owner = @s ps_id run data modify entity @s VillagerData.profession set value cleric
execute facing entity @e[type=minecraft:villager,tag=player_shop,limit=1] eyes run execute as @e[type=minecraft:villager,tag=player_shop,limit=1,sort=nearest] at @s if score @p[scores={ps_type=7}] ps_owner = @s ps_id run tellraw @p [{"text": "Succesfully Changed Shop Type to Cleric!", "color": "green"}]

execute facing entity @e[type=minecraft:villager,tag=player_shop,limit=1] eyes run execute as @e[type=minecraft:villager,tag=player_shop,limit=1,sort=nearest] at @s if score @p[scores={ps_type=8}] ps_owner = @s ps_id run data modify entity @s VillagerData.profession set value armorer
execute facing entity @e[type=minecraft:villager,tag=player_shop,limit=1] eyes run execute as @e[type=minecraft:villager,tag=player_shop,limit=1,sort=nearest] at @s if score @p[scores={ps_type=8}] ps_owner = @s ps_id run tellraw @p [{"text": "Succesfully Changed Shop Type to Armorer!", "color": "green"}]

execute facing entity @e[type=minecraft:villager,tag=player_shop,limit=1] eyes run execute as @e[type=minecraft:villager,tag=player_shop,limit=1,sort=nearest] at @s if score @p[scores={ps_type=9}] ps_owner = @s ps_id run data modify entity @s VillagerData.profession set value weaponsmith
execute facing entity @e[type=minecraft:villager,tag=player_shop,limit=1] eyes run execute as @e[type=minecraft:villager,tag=player_shop,limit=1,sort=nearest] at @s if score @p[scores={ps_type=9}] ps_owner = @s ps_id run tellraw @p [{"text": "Succesfully Changed Shop Type to Weaponsmith!", "color": "green"}]

execute facing entity @e[type=minecraft:villager,tag=player_shop,limit=1] eyes run execute as @e[type=minecraft:villager,tag=player_shop,limit=1,sort=nearest] at @s if score @p[scores={ps_type=10}] ps_owner = @s ps_id run data modify entity @s VillagerData.profession set value toolsmith
execute facing entity @e[type=minecraft:villager,tag=player_shop,limit=1] eyes run execute as @e[type=minecraft:villager,tag=player_shop,limit=1,sort=nearest] at @s if score @p[scores={ps_type=10}] ps_owner = @s ps_id run tellraw @p [{"text": "Succesfully Changed Shop Type to Toolsmith!", "color": "green"}]

execute facing entity @e[type=minecraft:villager,tag=player_shop,limit=1] eyes run execute as @e[type=minecraft:villager,tag=player_shop,limit=1,sort=nearest] at @s if score @p[scores={ps_type=11}] ps_owner = @s ps_id run data modify entity @s VillagerData.profession set value butcher
execute facing entity @e[type=minecraft:villager,tag=player_shop,limit=1] eyes run execute as @e[type=minecraft:villager,tag=player_shop,limit=1,sort=nearest] at @s if score @p[scores={ps_type=11}] ps_owner = @s ps_id run tellraw @p [{"text": "Succesfully Changed Shop Type to Butcher!", "color": "green"}]

execute facing entity @e[type=minecraft:villager,tag=player_shop,limit=1] eyes run execute as @e[type=minecraft:villager,tag=player_shop,limit=1,sort=nearest] at @s if score @p[scores={ps_type=12}] ps_owner = @s ps_id run data modify entity @s VillagerData.profession set value leatherworker
execute facing entity @e[type=minecraft:villager,tag=player_shop,limit=1] eyes run execute as @e[type=minecraft:villager,tag=player_shop,limit=1,sort=nearest] at @s if score @p[scores={ps_type=12}] ps_owner = @s ps_id run tellraw @p [{"text": "Succesfully Changed Shop Type to Leatherworker!", "color": "green"}]

execute facing entity @e[type=minecraft:villager,tag=player_shop,limit=1] eyes run execute as @e[type=minecraft:villager,tag=player_shop,limit=1,sort=nearest] at @s if score @p[scores={ps_type=13}] ps_owner = @s ps_id run data modify entity @s VillagerData.profession set value mason
execute facing entity @e[type=minecraft:villager,tag=player_shop,limit=1] eyes run execute as @e[type=minecraft:villager,tag=player_shop,limit=1,sort=nearest] at @s if score @p[scores={ps_type=13}] ps_owner = @s ps_id run tellraw @p [{"text": "Succesfully Changed Shop Type to Mason!", "color": "green"}]

# Reset Command:
scoreboard players set @s ps_type 0