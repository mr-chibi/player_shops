######################################################
# Player Chest Shop placed:
######################################################
execute as @s[y_rotation=135..-135] align xyz run setblock ~ ~ ~ chest[facing=south]
execute as @s[y_rotation=-135..-45] align xyz run setblock ~ ~ ~ chest[facing=west]
execute as @s[y_rotation=-45..45] align xyz run setblock ~ ~ ~ chest[facing=north]
execute as @s[y_rotation=45..135] align xyz run setblock ~ ~ ~ chest[facing=east]

# Player Shop Sign:
execute as @s[y_rotation=135..-135] align xyz run setblock ~ ~ ~1 minecraft:oak_wall_sign[facing=south]
execute as @s[y_rotation=-135..-45] align xyz run setblock ~-1 ~ ~ minecraft:oak_wall_sign[facing=west]
execute as @s[y_rotation=-45..45] align xyz run setblock ~ ~ ~-1 minecraft:oak_wall_sign[facing=north]
execute as @s[y_rotation=45..135] align xyz run setblock ~1 ~ ~ minecraft:oak_wall_sign[facing=east]

# Player Shop Sign Modify
execute as @s[y_rotation=135..-135] align xyz run data modify block ~ ~ ~1 front_text.messages[1] set value {"selector": "@p"}
execute as @s[y_rotation=-135..-45] align xyz run data modify block ~-1 ~ ~ front_text.messages[1] set value {"selector": "@p"}
execute as @s[y_rotation=-45..45] align xyz run data modify block ~ ~ ~-1 front_text.messages[1] set value {"selector": "@p"}
execute as @s[y_rotation=45..135] align xyz run data modify block ~1 ~ ~ front_text.messages[1] set value {"selector": "@p"}

# Shop Entity Data:
execute align xyz run summon minecraft:interaction ~0.5 ~ ~0.5 {data:{sell:[{id:"minecraft:air",Count:0,amount:0,components:{}},{id:"minecraft:air",Count:0,amount:0,components:{}},{id:"minecraft:air",Count:0,amount:0,components:{}},{id:"minecraft:air",Count:0,amount:0,components:{}},{id:"minecraft:air",Count:0,amount:0,components:{}},{id:"minecraft:air",Count:0,amount:0,components:{}},{id:"minecraft:air",Count:0,amount:0,components:{}},{id:"minecraft:air",Count:0,amount:0,components:{}},{id:"minecraft:air",Count:0,amount:0,components:{}}],buy:[{id:"minecraft:air",Count:0,amount:0},{id:"minecraft:air",Count:0,amount:0},{id:"minecraft:air",Count:0,amount:0},{id:"minecraft:air",Count:0,amount:0},{id:"minecraft:air",Count:0,amount:0},{id:"minecraft:air",Count:0,amount:0},{id:"minecraft:air",Count:0,amount:0},{id:"minecraft:air",Count:0,amount:0},{id:"minecraft:air",Count:0,amount:0}],payment:[{id:"minecraft:air",Count:0,amount:0},{id:"minecraft:air",Count:0,amount:0},{id:"minecraft:air",Count:0,amount:0},{id:"minecraft:air",Count:0,amount:0},{id:"minecraft:air",Count:0,amount:0},{id:"minecraft:air",Count:0,amount:0},{id:"minecraft:air",Count:0,amount:0},{id:"minecraft:air",Count:0,amount:0},{id:"minecraft:air",Count:0,amount:0}],type:"limited",status:"closed",amount:0,page:0,shop_owner:0},width:0.50f,Tags:["mcs_shop"]}

# Create Shop Display:
execute align xyz run summon minecraft:item_display ~0.5 ~1 ~0.5 {item:{id:"minecraft:barrier",count:1b,components:{"minecraft:custom_data":{Tags:["mcs_display"]}}}}

# Store Shop Owner ID
execute store result score @s mcs_ids run data get entity @s UUID[0]

#
execute as @e[type=minecraft:interaction,distance=0..5,tag=mcs_shop] at @s store result score @s mcs_ids run data get entity @p UUID[0]
execute as @e[type=minecraft:item_display,distance=0..5,nbt={item:{components:{"minecraft:custom_data":{Tags:["mcs_display"]}}}}] at @s store result score @s mcs_ids run data get entity @p UUID[0]

#
execute as @s[y_rotation=135..-135] run data modify entity @e[type=minecraft:interaction,distance=0..1,sort=nearest,tag=mcs_shop,limit=1] data.shop_owner set from block ~ ~ ~1 front_text.messages[1]
execute as @s[y_rotation=-135..-45] run data modify entity @e[type=minecraft:interaction,distance=0..1,sort=nearest,tag=mcs_shop,limit=1] data.shop_owner set from block ~-1 ~ ~ front_text.messages[1]
execute as @s[y_rotation=-45..45] run data modify entity @e[type=minecraft:interaction,distance=0..1,sort=nearest,tag=mcs_shop,limit=1] data.shop_owner set from block ~ ~ ~-1 front_text.messages[1]
execute as @s[y_rotation=45..135] run data modify entity @e[type=minecraft:interaction,distance=0..1,sort=nearest,tag=mcs_shop,limit=1] data.shop_owner set from block ~1 ~ ~ front_text.messages[1]