# Removed Shop Message:
execute as @s anchored eyes facing entity @e[type=minecraft:wandering_trader,tag=admin_shop,limit=1] eyes run tellraw @s [{"text": "Succesfully Removed Admin Shop!", "color": "green"}]

# Removed Shop:
execute as @s anchored eyes facing entity @e[type=minecraft:wandering_trader,tag=admin_shop,limit=1] eyes run kill @e[type=minecraft:wandering_trader,tag=admin_shop,limit=1]

# Reset Command:
scoreboard players set @s[scores={adminps_remove=1..}] adminps_remove 0