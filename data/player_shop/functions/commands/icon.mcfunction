# Created Shop Message:
tellraw @s [{"text": "Succesfully Changed Icon", "color": "green"}]

# Change Villager Shop Icon:
execute facing entity @e[type=minecraft:villager,tag=player_shop] eyes run execute as @e[type=minecraft:villager,tag=player_shop,limit=1,sort=nearest] at @s if score @p ps_owner = @s ps_id run data modify entity @s HandItems[0].id set from entity @p SelectedItem.id

# Reset Command:
scoreboard players set @s ps_icon 0