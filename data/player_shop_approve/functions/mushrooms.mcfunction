execute as @s[nbt={Item:{id:"minecraft:red_mushroom_block"}}] at @s if score @s ps_id = @p[distance=0..2,scores={ps_distance=0..2}] ps_id store result score @p ps_wallet run data get entity @p Inventory[{id:"minecraft:red_mushroom_block"}].Count
execute as @s[nbt={Item:{id:"minecraft:brown_mushroom_block"}}] at @s if score @s ps_id = @p[distance=0..2,scores={ps_distance=0..2}] ps_id store result score @p ps_wallet run data get entity @p Inventory[{id:"minecraft:brown_mushroom_block"}].Count
execute as @s[nbt={Item:{id:"minecraft:mushroom_stem"}}] at @s if score @s ps_id = @p[distance=0..2,scores={ps_distance=0..2}] ps_id store result score @p ps_wallet run data get entity @p Inventory[{id:"minecraft:mushroom_stem"}].Count