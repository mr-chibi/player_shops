execute as @s[nbt={Item:{id:"minecraft:wither_skeleton_skull"}}] at @s if score @s ps_id = @p[distance=0..2,scores={ps_distance=0..2}] ps_id as @p at @s if data entity @s Inventory[{id:"minecraft:wither_skeleton_skull"}] run clear @s minecraft:wither_skeleton_skull 1
execute as @s[nbt={Item:{id:"minecraft:skeleton_skull"}}] at @s if score @s ps_id = @p[distance=0..2,scores={ps_distance=0..2}] ps_id as @p at @s if data entity @s Inventory[{id:"minecraft:skeleton_skull"}] run clear @s minecraft:skeleton_skull 1
execute as @s[nbt={Item:{id:"minecraft:player_head"}}] at @s if score @s ps_id = @p[distance=0..2,scores={ps_distance=0..2}] ps_id as @p at @s if data entity @s Inventory[{id:"minecraft:player_head"}] run clear @s minecraft:player_head 1
execute as @s[nbt={Item:{id:"minecraft:zombie_head"}}] at @s if score @s ps_id = @p[distance=0..2,scores={ps_distance=0..2}] ps_id as @p at @s if data entity @s Inventory[{id:"minecraft:zombie_head"}] run clear @s minecraft:zombie_head 1
execute as @s[nbt={Item:{id:"minecraft:creeper_head"}}] at @s if score @s ps_id = @p[distance=0..2,scores={ps_distance=0..2}] ps_id as @p at @s if data entity @s Inventory[{id:"minecraft:creeper_head"}] run clear @s minecraft:creeper_head 1
execute as @s[nbt={Item:{id:"minecraft:dragon_head"}}] at @s if score @s ps_id = @p[distance=0..2,scores={ps_distance=0..2}] ps_id as @p at @s if data entity @s Inventory[{id:"minecraft:dragon_head"}] run clear @s minecraft:dragon_head 1