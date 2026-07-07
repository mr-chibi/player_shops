# Do Something:
execute if score @e[type=minecraft:interaction,tag=mcs_shop,distance=0..5,limit=1] mcs_ids = @s mcs_ids run setblock ~0.5 ~ ~0.5 minecraft:air destroy
execute if score @e[type=minecraft:interaction,tag=mcs_shop,distance=0..5,limit=1] mcs_ids = @s mcs_ids run kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:oak_sign"}},distance=0..5]
execute if score @e[type=minecraft:interaction,tag=mcs_shop,distance=0..5,limit=1] mcs_ids = @s mcs_ids run kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:chest"}},distance=0..5]
execute if score @e[type=minecraft:interaction,tag=mcs_shop,distance=0..5,limit=1] mcs_ids = @s mcs_ids run kill @e[type=minecraft:item_display,distance=0..5]
execute if score @e[type=minecraft:interaction,tag=mcs_shop,distance=0..5,limit=1] mcs_ids = @s mcs_ids run kill @e[type=interaction,distance=0..5,tag=mcs_shop]


# Reset Command:
scoreboard players set @s[scores={mcs_remove=1..}] mcs_remove 0