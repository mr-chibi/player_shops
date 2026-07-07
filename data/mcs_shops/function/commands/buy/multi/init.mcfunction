# Unless Components:
$execute unless data entity @e[type=minecraft:interaction,tag=mcs_shop,distance=0..5,limit=1] data.sell[$(page)].components run function mcs_shops:commands/buy/give/init with entity @e[type=minecraft:interaction,tag=mcs_shop,distance=0..5,limit=1] data.sell[$(page)]

# If Components:
$execute if data entity @e[type=minecraft:interaction,tag=mcs_shop,distance=0..5,limit=1] data.sell[$(page)].components run function mcs_shops:commands/buy/give/components with entity @e[type=minecraft:interaction,tag=mcs_shop,distance=0..5,limit=1] data.sell[$(page)]

# Give Components:
$execute if data entity @e[type=minecraft:interaction,tag=mcs_shop,distance=0..5,limit=1] data.sell[$(page)].components.minecraft:custom_name run data modify entity @e[type=minecraft:item,distance=0..5,limit=1] Item.components.minecraft:custom_name set from entity @e[type=minecraft:interaction,tag=mcs_shop,distance=0..5,limit=1] data.sell[$(page)].components.minecraft:custom_name
$execute if data entity @e[type=minecraft:interaction,tag=mcs_shop,distance=0..5,limit=1] data.sell[$(page)].components.minecraft:enchantments run data modify entity @e[type=minecraft:item,distance=0..5,limit=1] Item.components.minecraft:enchantments set from entity @e[type=minecraft:interaction,tag=mcs_shop,distance=0..5,limit=1] data.sell[$(page)].components.minecraft:enchantments
$execute if data entity @e[type=minecraft:interaction,tag=mcs_shop,distance=0..5,limit=1] data.sell[$(page)].components.minecraft:custom_data run data modify entity @e[type=minecraft:item,distance=0..5,limit=1] Item.components.minecraft:custom_data set from entity @e[type=minecraft:interaction,tag=mcs_shop,distance=0..5,limit=1] data.sell[$(page)].components.minecraft:custom_data

# Reset:
$data modify entity @e[type=minecraft:interaction,tag=mcs_shop,distance=0..5,limit=1] data.buy[$(page)].amount set value 0
$data modify entity @e[type=minecraft:interaction,tag=mcs_shop,distance=0..5,limit=1] data.sell[$(page)].amount set value 0

#
tag @s remove mcs_multi_purchase