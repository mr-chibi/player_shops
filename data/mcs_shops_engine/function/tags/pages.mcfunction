# force [Paper / Spigot]
scoreboard players add @s[scores={mcs_pages_prev=1..}] mcs_chest_interaction 1
scoreboard players add @s[scores={mcs_pages_next=1..}] mcs_chest_interaction 1
scoreboard players add @s[scores={mcs_chest_shift=10..}] mcs_chest_interaction 1
scoreboard players set @s[scores={mcs_chest_shift=10..}] mcs_chest_shift 0
execute unless entity @e[type=minecraft:marker,distance=0..5,sort=nearest,tag=mcs_shops,limit=1] run scoreboard players set @s[scores={mcs_chest_interaction=1..}] mcs_chest_interaction 0

# Increment [--Pages | Pages++]
execute if score @s[scores={mcs_pages_prev=1..}] mcs_pages > min_pages mcs_pages run scoreboard players remove @s mcs_pages 1
execute if score @s[scores={mcs_pages_next=1..}] mcs_pages < max_pages mcs_pages run scoreboard players add @s mcs_pages 1

# Reset If pages hit [Min/Max] Value: [-1 or 9]
execute if score @s mcs_pages = min_pages mcs_pages run scoreboard players set @s mcs_pages 8
execute if score @s mcs_pages = max_pages mcs_pages run scoreboard players set @s mcs_pages 0

# Update pages player is visiting:
execute store result entity @e[type=minecraft:marker,distance=0..5,sort=nearest,tag=mcs_shops,nbt={data:{"shop_status":"open"}},limit=1] data.shop_pages int 1 run scoreboard players get @s mcs_pages