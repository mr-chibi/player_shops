# Execute If "Player" UUID[0] matches "Markers" UUID[0] & Then, grant "Player" Shop Owner Tag.
execute as @a at @s if score @s[scores={ps_distance=0..8}] ps_id = @e[type=minecraft:marker,tag=ps_shop,sort=nearest,limit=1] ps_id run tag @s add ps_owner

# Execute If "Player" UUID[0] matches "Markers" UUID[0] & Then, revoke "Player" Shop Owner Tag.
execute as @a at @s if score @s[scores={ps_distance=9}] ps_id = @e[type=minecraft:marker,tag=ps_shop,sort=nearest,limit=1] ps_id run tag @s remove ps_owner