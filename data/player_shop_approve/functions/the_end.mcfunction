execute as @s[nbt={Item:{id:"minecraft:end_stone"}}] at @s if score @s ps_id = @p[distance=0..2,scores={ps_distance=0..2}] ps_id store result score @p ps_wallet run data get entity @p Inventory[{id:"minecraft:end_stone"}].Count
execute as @s[nbt={Item:{id:"minecraft:end_stone_bricks"}}] at @s if score @s ps_id = @p[distance=0..2,scores={ps_distance=0..2}] ps_id store result score @p ps_wallet run data get entity @p Inventory[{id:"minecraft:end_stone_bricks"}].Count
execute as @s[nbt={Item:{id:"minecraft:purpur_block"}}] at @s if score @s ps_id = @p[distance=0..2,scores={ps_distance=0..2}] ps_id store result score @p ps_wallet run data get entity @p Inventory[{id:"minecraft:purpur_block"}].Count
execute as @s[nbt={Item:{id:"minecraft:purpur_pillar"}}] at @s if score @s ps_id = @p[distance=0..2,scores={ps_distance=0..2}] ps_id store result score @p ps_wallet run data get entity @p Inventory[{id:"minecraft:purpur_pillar"}].Count
execute as @s[nbt={Item:{id:"minecraft:end_rod"}}] at @s if score @s ps_id = @p[distance=0..2,scores={ps_distance=0..2}] ps_id store result score @p ps_wallet run data get entity @p Inventory[{id:"minecraft:end_rod"}].Count