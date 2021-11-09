# Created Shop Message:
tellraw @s [{"text": "Succesfully Changed Icon", "color": "green"}]

# Change Villager Shop Icon:
execute facing entity @e[type=minecraft:villager,tag=player_shop,limit=1] eyes run execute as @e[type=minecraft:villager,tag=player_shop,limit=1,sort=nearest] at @s if score @p ps_owner = @s ps_id run data modify entity @s HandItems[0].id set from entity @p SelectedItem.id

# Change Wandering Trader Shop Icon:
execute anchored eyes facing entity @e[type=minecraft:wandering_trader,tag=admin_shop,limit=1] eyes run execute as @e[type=minecraft:wandering_trader,tag=admin_shop,limit=1] at @s run data modify entity @s HandItems[0].id set from entity @p[team=ps_admin] SelectedItem.id

# Reset Command:
scoreboard players set @s ps_icon 0