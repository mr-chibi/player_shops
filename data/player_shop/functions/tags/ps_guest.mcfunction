# Execute If "Player" UUID[0] doesn't match "Markers" UUID[0] & Then, grant "Player" Shop Guest Tag.
execute as @a at @s unless score @s[scores={ps_distance=0..8}] ps_id = @e[type=minecraft:marker,tag=ps_shop,sort=nearest,limit=1] ps_id run tag @s add ps_guest

# Execute If "Player" UUID[0] doesn't match "Markers" UUID[0] & Then, revoke "Player" Shop Guest Tag.
execute as @a at @s unless score @s[scores={ps_distance=9}] ps_id = @e[type=minecraft:marker,tag=ps_shop,sort=nearest,limit=1] ps_id run tag @s remove ps_guest