execute as @s[nbt={Item:{id:"minecraft:saddle"}}] at @s if score @s ps_id = @p[distance=0..2,scores={ps_distance=0..2}] ps_id as @p at @s if data entity @s Inventory[{id:"minecraft:saddle"}] run clear @s minecraft:saddle 1
execute as @s[nbt={Item:{id:"minecraft:diamond_horse_armor"}}] at @s if score @s ps_id = @p[distance=0..2,scores={ps_distance=0..2}] ps_id as @p at @s if data entity @s Inventory[{id:"minecraft:diamond_horse_armor"}] run clear @s minecraft:diamond_horse_armor 1
execute as @s[nbt={Item:{id:"minecraft:iron_horse_armor"}}] at @s if score @s ps_id = @p[distance=0..2,scores={ps_distance=0..2}] ps_id as @p at @s if data entity @s Inventory[{id:"minecraft:iron_horse_armor"}] run clear @s minecraft:iron_horse_armor 1
execute as @s[nbt={Item:{id:"minecraft:golden_horse_armor"}}] at @s if score @s ps_id = @p[distance=0..2,scores={ps_distance=0..2}] ps_id as @p at @s if data entity @s Inventory[{id:"minecraft:golden_horse_armor"}] run clear @s minecraft:golden_horse_armor 1
execute as @s[nbt={Item:{id:"minecraft:leather_horse_armor"}}] at @s if score @s ps_id = @p[distance=0..2,scores={ps_distance=0..2}] ps_id as @p at @s if data entity @s Inventory[{id:"minecraft:leather_horse_armor"}] run clear @s minecraft:leather_horse_armor 1