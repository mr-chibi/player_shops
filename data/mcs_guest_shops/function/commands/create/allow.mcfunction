######################################################
# Summon Marker, Database for Player's Shop:
######################################################
execute align xyz run summon minecraft:marker ~0.5 ~ ~0.5 {data:{"shop_owner":"", "shop_owner_id":"", "shop_status": "closed", "shop_pages": "0", "shop_buy_amount": "0", "shop_sell":[{"buy":0, "sell":0, count:0, Slot:0b, id:"minecraft:air", components:{}},{"buy":0, "sell":0, count:0, Slot:0b, id:"minecraft:air", components:{}},{"buy":0, "sell":0, count:0, Slot:0b, id:"minecraft:air", components:{}},{"buy":0, "sell":0, count:0, Slot:0b, id:"minecraft:air", components:{}},{"buy":0, "sell":0, count:0, Slot:0b, id:"minecraft:air", components:{}},{"buy":0, "sell":0, count:0, Slot:0b, id:"minecraft:air", components:{}},{"buy":0, "sell":0, count:0, Slot:0b, id:"minecraft:air", components:{}},{"buy":0, "sell":0, count:0, Slot:0b, id:"minecraft:air", components:{}},{"buy":0, "sell":0, count:0, Slot:0b, id:"minecraft:air", components:{}}], "shop_buy":[{"buy":0, "sell":0, count:0, Slot:0b, id:"minecraft:air", components:{}},{"buy":0, "sell":0, count:0, Slot:0b, id:"minecraft:air", components:{}},{"buy":0, "sell":0, count:0, Slot:0b, id:"minecraft:air", components:{}},{"buy":0, "sell":0, count:0, Slot:0b, id:"minecraft:air", components:{}},{"buy":0, "sell":0, count:0, Slot:0b, id:"minecraft:air", components:{}},{"buy":0, "sell":0, count:0, Slot:0b, id:"minecraft:air", components:{}},{"buy":0, "sell":0, count:0, Slot:0b, id:"minecraft:air", components:{}},{"buy":0, "sell":0, count:0, Slot:0b, id:"minecraft:air", components:{}},{"buy":0, "sell":0, count:0, Slot:0b, id:"minecraft:air", components:{}}], "shop_payments":[{"buy":0, "sell":0, count:0, Slot:0b, id:"minecraft:air", components:{}},{"buy":0, "sell":0, count:0, Slot:0b, id:"minecraft:air", components:{}},{"buy":0, "sell":0, count:0, Slot:0b, id:"minecraft:air", components:{}},{"buy":0, "sell":0, count:0, Slot:0b, id:"minecraft:air", components:{}},{"buy":0, "sell":0, count:0, Slot:0b, id:"minecraft:air", components:{}},{"buy":0, "sell":0, count:0, Slot:0b, id:"minecraft:air", components:{}},{"buy":0, "sell":0, count:0, Slot:0b, id:"minecraft:air", components:{}},{"buy":0, "sell":0, count:0, Slot:0b, id:"minecraft:air", components:{}},{"buy":0, "sell":0, count:0, Slot:0b, id:"minecraft:air", components:{}}]},Tags:["mcs_shops"]}

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

######################################################
# Scoreboard Driven:
######################################################

# Insert, Into scoreboard, "mcs_ids" fetch Player's UUID[0]:
execute store result score @s mcs_ids run data get entity @s UUID[0]

# Insert, Into scoreboard, "mcs_ids" fetch Markers's UUID[0]:
execute as @e[type=minecraft:marker,distance=0..1,sort=nearest,tag=mcs_shops,limit=1] at @s store result score @s mcs_ids run data get entity @s UUID[0]

# Modify, Marker's scoreboard, "mcs_ids" to match Shop Owner's:
execute as @e[type=minecraft:marker,distance=0..1,sort=nearest,tag=mcs_shops,limit=1] at @s run scoreboard players operation @s mcs_ids = @p mcs_ids

######################################################
# Data Driven:
######################################################

# Insert, Shop Owner's UUID[0] into marker's data:
data modify entity @e[type=minecraft:marker,distance=0..1,sort=nearest,tag=mcs_shops,limit=1] data.shop_owner_id set from entity @s UUID[0]

# Insert "Shop Owner" Name, into data:
execute as @s[y_rotation=135..-135] run data modify entity @e[type=minecraft:marker,distance=0..1,sort=nearest,tag=mcs_shops,limit=1] data.shop_owner set from block ~ ~ ~1 front_text.messages[1]
execute as @s[y_rotation=-135..-45] run data modify entity @e[type=minecraft:marker,distance=0..1,sort=nearest,tag=mcs_shops,limit=1] data.shop_owner set from block ~-1 ~ ~ front_text.messages[1]
execute as @s[y_rotation=-45..45] run data modify entity @e[type=minecraft:marker,distance=0..1,sort=nearest,tag=mcs_shops,limit=1] data.shop_owner set from block ~ ~ ~-1 front_text.messages[1]
execute as @s[y_rotation=45..135] run data modify entity @e[type=minecraft:marker,distance=0..1,sort=nearest,tag=mcs_shops,limit=1] data.shop_owner set from block ~1 ~ ~ front_text.messages[1]

######################################################
# Remove Block:
######################################################
execute as @s[y_rotation=135..-135] align xyz run setblock ~ ~ ~1 minecraft:air
execute as @s[y_rotation=-135..-45] align xyz run setblock ~-1 ~ ~ minecraft:air
execute as @s[y_rotation=-45..45] align xyz run setblock ~ ~ ~-1 minecraft:air
execute as @s[y_rotation=45..135] align xyz run setblock ~1 ~ ~ minecraft:air

# Teleport Player backward once placed:
execute as @s[y_rotation=135..-135] align xyz run tp @s ~ ~ ~1
execute as @s[y_rotation=-135..-45] align xyz run tp @s ~-1 ~ ~
execute as @s[y_rotation=-45..45] align xyz run tp @s ~ ~ ~-1
execute as @s[y_rotation=45..135] align xyz run tp @s ~1 ~ ~

# Msg:
tellraw @s [{"text": "Shop successfully Created!", "color": "green"}]

# Playsound when created!
playsound minecraft:entity.player.levelup master @s ~ ~ ~ 2 0.85