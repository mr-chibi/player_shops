#
execute as @e[type=minecraft:marker,distance=0..8,sort=nearest,tag=mcs_shops,nbt={data:{"shop_status":"closed"}}] at @s run tp @s ~ ~ ~ ~-5 ~
execute as @e[type=minecraft:marker,distance=0..8,sort=nearest,tag=mcs_shops,nbt={data:{"shop_status":"closed"}}] at @s run particle minecraft:end_rod ^ ^ ^5 0.25 0.50 0.50 0 15 force @a

# Closed Msg:
execute unless score @s mcs_ids = @e[type=minecraft:marker,distance=0..5,sort=nearest,tag=mcs_shops,nbt={data:{"shop_status":"closed"}},limit=1] mcs_ids run tellraw @s[team=!mcs_admin] [{"text": "This shop is currently closed, come back later!", "color": "red"}]

# Prventions TP:
execute unless score @s[y_rotation=135..-135] mcs_ids = @e[type=minecraft:marker,distance=0..5,sort=nearest,tag=mcs_shops,nbt={data:{"shop_status":"closed"}},limit=1] mcs_ids run tp @s[team=!mcs_admin] ~ ~ ~2
execute unless score @s[y_rotation=-135..-45] mcs_ids = @e[type=minecraft:marker,distance=0..5,sort=nearest,tag=mcs_shops,nbt={data:{"shop_status":"closed"}},limit=1] mcs_ids run tp @s[team=!mcs_admin] ~-2 ~ ~
execute unless score @s[y_rotation=-45..45] mcs_ids = @e[type=minecraft:marker,distance=0..5,sort=nearest,tag=mcs_shops,nbt={data:{"shop_status":"closed"}},limit=1] mcs_ids run tp @s[team=!mcs_admin] ~ ~ ~-2
execute unless score @s[y_rotation=45..135] mcs_ids = @e[type=minecraft:marker,distance=0..5,sort=nearest,tag=mcs_shops,nbt={data:{"shop_status":"closed"}},limit=1] mcs_ids run tp @s[team=!mcs_admin] ~2 ~ ~