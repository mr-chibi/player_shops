###########################################################################################
# Marker Rotate [360 Degrees] When "Player" between 0-5 Blocks:
###########################################################################################
execute if entity @p[distance=0..5] run tp @s[nbt={data:{ps_status:"lock"}}] ~ ~ ~ ~-5 ~


###########################################################################################
# Marker Shop Customization [Particle Effects]:
###########################################################################################
execute as @s[nbt={data:{ps_status:"lock",particles:"end_rod"}},distance=0..5] if entity @p[scores={ps_distance=0..5},distance=0..5] run particle minecraft:end_rod ^ ^ ^2 0.25 0.50 0.50 0 10
execute as @s[nbt={data:{ps_status:"lock",particles:"firework"}},distance=0..5] if entity @p[scores={ps_distance=0..5},distance=0..5] run particle minecraft:firework ^ ^ ^2 0.25 0.50 0.50 0 10
execute as @s[nbt={data:{ps_status:"lock",particles:"happy_villager"}},distance=0..5] if entity @p[scores={ps_distance=0..5},distance=0..5] run particle minecraft:happy_villager ^ ^ ^2 0.25 0.50 0.50 0 10
execute as @s[nbt={data:{ps_status:"lock",particles:"portal"}},distance=0..5] if entity @p[scores={ps_distance=0..5},distance=0..5] run particle minecraft:portal ^ ^ ^2 0.25 0.50 0.50 0 10
execute as @s[nbt={data:{ps_status:"lock",particles:"snowflake"}},distance=0..5] if entity @p[scores={ps_distance=0..5},distance=0..5] run particle minecraft:snowflake ^ ^ ^2 0.25 0.50 0.50 0 10


###########################################################################################
# Marker Shop Locked [Particle Effect]:
###########################################################################################
execute as @s[nbt={data:{ps_status:"unlock"}}] if entity @a[scores={ps_distance=0..8},distance=0..8] run tp @s ~ ~ ~ ~-5 ~
execute as @s[nbt={data:{ps_status:"unlock"}}] if entity @a[scores={ps_distance=0..8},distance=0..8] run particle minecraft:flame ^ ^ ^5 0.25 0.50 0.50 0 15