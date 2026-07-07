# Do Something:
setblock ~0.5 ~ ~0.5 minecraft:air destroy
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:oak_sign"}},distance=0..5]
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:chest"}},distance=0..5]
kill @e[type=minecraft:item_display,distance=0..5]
kill @e[type=interaction,distance=0..5,tag=mcs_shop]

# Reset Command:
scoreboard players set @s[scores={mcs_remove=1..}] mcs_remove 0