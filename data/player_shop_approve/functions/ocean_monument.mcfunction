execute as @s[nbt={Item:{id:"minecraft:prismarine"}}] at @s if score @s ps_id = @p[distance=0..2,scores={ps_distance=0..2}] ps_id store result score @p ps_wallet run data get entity @p Inventory[{id:"minecraft:prismarine"}].Count
execute as @s[nbt={Item:{id:"minecraft:prismarine_bricks"}}] at @s if score @s ps_id = @p[distance=0..2,scores={ps_distance=0..2}] ps_id store result score @p ps_wallet run data get entity @p Inventory[{id:"minecraft:prismarine_bricks"}].Count
execute as @s[nbt={Item:{id:"minecraft:dark_prismarine"}}] at @s if score @s ps_id = @p[distance=0..2,scores={ps_distance=0..2}] ps_id store result score @p ps_wallet run data get entity @p Inventory[{id:"minecraft:dark_prismarine"}].Count
execute as @s[nbt={Item:{id:"minecraft:sea_lantern"}}] at @s if score @s ps_id = @p[distance=0..2,scores={ps_distance=0..2}] ps_id store result score @p ps_wallet run data get entity @p Inventory[{id:"minecraft:sea_lantern"}].Count