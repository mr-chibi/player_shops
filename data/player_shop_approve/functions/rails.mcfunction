execute as @s[nbt={Item:{id:"minecraft:rail"}}] at @s if score @s ps_id = @p[distance=0..2,scores={ps_distance=0..2}] ps_id store result score @p ps_wallet run data get entity @p Inventory[{id:"minecraft:rail"}].Count
execute as @s[nbt={Item:{id:"minecraft:powered_rail"}}] at @s if score @s ps_id = @p[distance=0..2,scores={ps_distance=0..2}] ps_id store result score @p ps_wallet run data get entity @p Inventory[{id:"minecraft:powered_rail"}].Count
execute as @s[nbt={Item:{id:"minecraft:detector_rail"}}] at @s if score @s ps_id = @p[distance=0..2,scores={ps_distance=0..2}] ps_id store result score @p ps_wallet run data get entity @p Inventory[{id:"minecraft:detector_rail"}].Count
execute as @s[nbt={Item:{id:"minecraft:activator_rail"}}] at @s if score @s ps_id = @p[distance=0..2,scores={ps_distance=0..2}] ps_id store result score @p ps_wallet run data get entity @p Inventory[{id:"minecraft:activator_rail"}].Count
execute as @s[nbt={Item:{id:"minecraft:minecart"}}] at @s if score @s ps_id = @p[distance=0..2,scores={ps_distance=0..2}] ps_id store result score @p ps_wallet run data get entity @p Inventory[{id:"minecraft:minecart"}].Count
execute as @s[nbt={Item:{id:"minecraft:hopper_minecart"}}] at @s if score @s ps_id = @p[distance=0..2,scores={ps_distance=0..2}] ps_id store result score @p ps_wallet run data get entity @p Inventory[{id:"minecraft:hopper_minecart"}].Count
execute as @s[nbt={Item:{id:"minecraft:chest_minecart"}}] at @s if score @s ps_id = @p[distance=0..2,scores={ps_distance=0..2}] ps_id store result score @p ps_wallet run data get entity @p Inventory[{id:"minecraft:chest_minecart"}].Count
execute as @s[nbt={Item:{id:"minecraft:furnace_minecart"}}] at @s if score @s ps_id = @p[distance=0..2,scores={ps_distance=0..2}] ps_id store result score @p ps_wallet run data get entity @p Inventory[{id:"minecraft:furnace_minecart"}].Count
execute as @s[nbt={Item:{id:"minecraft:tnt_minecart"}}] at @s if score @s ps_id = @p[distance=0..2,scores={ps_distance=0..2}] ps_id store result score @p ps_wallet run data get entity @p Inventory[{id:"minecraft:tnt_minecart"}].Count