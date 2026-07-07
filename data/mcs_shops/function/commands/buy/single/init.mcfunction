# Unless Components:
$execute unless data entity @e[type=minecraft:interaction,tag=mcs_shop,distance=0..5,limit=1] data.sell[$(page)].components run function mcs_shops:commands/buy/give/init with entity @e[type=minecraft:interaction,tag=mcs_shop,distance=0..5,limit=1] data.sell[$(page)]

# If Components:
$execute if data entity @e[type=minecraft:interaction,tag=mcs_shop,distance=0..5,limit=1] data.sell[$(page)].components run function mcs_shops:commands/buy/give/components with entity @e[type=minecraft:interaction,tag=mcs_shop,distance=0..5,limit=1] data.sell[$(page)]

# Give Components:
$execute if data entity @e[type=minecraft:interaction,tag=mcs_shop,distance=0..5,limit=1] data.sell[$(page)].components.minecraft:custom_name run data modify entity @e[type=minecraft:item,distance=0..5,limit=1] Item.components.minecraft:custom_name set from entity @e[type=minecraft:interaction,tag=mcs_shop,distance=0..5,limit=1] data.sell[$(page)].components.minecraft:custom_name
$execute if data entity @e[type=minecraft:interaction,tag=mcs_shop,distance=0..5,limit=1] data.sell[$(page)].components.minecraft:enchantments run data modify entity @e[type=minecraft:item,distance=0..5,limit=1] Item.components.minecraft:enchantments set from entity @e[type=minecraft:interaction,tag=mcs_shop,distance=0..5,limit=1] data.sell[$(page)].components.minecraft:enchantments
$execute if data entity @e[type=minecraft:interaction,tag=mcs_shop,distance=0..5,limit=1] data.sell[$(page)].components.minecraft:custom_data run data modify entity @e[type=minecraft:item,distance=0..5,limit=1] Item.components.minecraft:custom_data set from entity @e[type=minecraft:interaction,tag=mcs_shop,distance=0..5,limit=1] data.sell[$(page)].components.minecraft:custom_data

# Reset Singular Items:
execute if entity @s[scores={mcs_lclick=0}] as @e[type=minecraft:interaction,tag=mcs_shop,distance=0..5] at @s if score @s mcs_slot_0 matches 1 run data modify block ~ ~ ~ Items[0] set value ""
execute if entity @s[scores={mcs_lclick=1}] as @e[type=minecraft:interaction,tag=mcs_shop,distance=0..5] at @s if score @s mcs_slot_1 matches 1 run data modify block ~ ~ ~ Items[1] set value ""
execute if entity @s[scores={mcs_lclick=2}] as @e[type=minecraft:interaction,tag=mcs_shop,distance=0..5] at @s if score @s mcs_slot_2 matches 1 run data modify block ~ ~ ~ Items[2] set value ""
execute if entity @s[scores={mcs_lclick=3}] as @e[type=minecraft:interaction,tag=mcs_shop,distance=0..5] at @s if score @s mcs_slot_3 matches 1 run data modify block ~ ~ ~ Items[3] set value ""
execute if entity @s[scores={mcs_lclick=4}] as @e[type=minecraft:interaction,tag=mcs_shop,distance=0..5] at @s if score @s mcs_slot_4 matches 1 run data modify block ~ ~ ~ Items[4] set value ""
execute if entity @s[scores={mcs_lclick=5}] as @e[type=minecraft:interaction,tag=mcs_shop,distance=0..5] at @s if score @s mcs_slot_5 matches 1 run data modify block ~ ~ ~ Items[5] set value ""
execute if entity @s[scores={mcs_lclick=6}] as @e[type=minecraft:interaction,tag=mcs_shop,distance=0..5] at @s if score @s mcs_slot_6 matches 1 run data modify block ~ ~ ~ Items[6] set value ""
execute if entity @s[scores={mcs_lclick=7}] as @e[type=minecraft:interaction,tag=mcs_shop,distance=0..5] at @s if score @s mcs_slot_7 matches 1 run data modify block ~ ~ ~ Items[7] set value ""
execute if entity @s[scores={mcs_lclick=8}] as @e[type=minecraft:interaction,tag=mcs_shop,distance=0..5] at @s if score @s mcs_slot_8 matches 1 run data modify block ~ ~ ~ Items[8] set value ""

# Reset Singular Items:
execute if entity @s[scores={mcs_lclick=0}] as @e[type=minecraft:interaction,tag=mcs_shop,distance=0..5] at @s if score @s mcs_slot_0 matches 1 run data modify entity @s data.sell[0].id set value ""
execute if entity @s[scores={mcs_lclick=1}] as @e[type=minecraft:interaction,tag=mcs_shop,distance=0..5] at @s if score @s mcs_slot_1 matches 1 run data modify entity @s data.sell[1].id set value ""
execute if entity @s[scores={mcs_lclick=2}] as @e[type=minecraft:interaction,tag=mcs_shop,distance=0..5] at @s if score @s mcs_slot_2 matches 1 run data modify entity @s data.sell[2].id set value ""
execute if entity @s[scores={mcs_lclick=3}] as @e[type=minecraft:interaction,tag=mcs_shop,distance=0..5] at @s if score @s mcs_slot_3 matches 1 run data modify entity @s data.sell[3].id set value ""
execute if entity @s[scores={mcs_lclick=4}] as @e[type=minecraft:interaction,tag=mcs_shop,distance=0..5] at @s if score @s mcs_slot_4 matches 1 run data modify entity @s data.sell[4].id set value ""
execute if entity @s[scores={mcs_lclick=5}] as @e[type=minecraft:interaction,tag=mcs_shop,distance=0..5] at @s if score @s mcs_slot_5 matches 1 run data modify entity @s data.sell[5].id set value ""
execute if entity @s[scores={mcs_lclick=6}] as @e[type=minecraft:interaction,tag=mcs_shop,distance=0..5] at @s if score @s mcs_slot_6 matches 1 run data modify entity @s data.sell[6].id set value ""
execute if entity @s[scores={mcs_lclick=7}] as @e[type=minecraft:interaction,tag=mcs_shop,distance=0..5] at @s if score @s mcs_slot_7 matches 1 run data modify entity @s data.sell[7].id set value ""
execute if entity @s[scores={mcs_lclick=8}] as @e[type=minecraft:interaction,tag=mcs_shop,distance=0..5] at @s if score @s mcs_slot_8 matches 1 run data modify entity @s data.sell[8].id set value ""

# Reset Singular Counts:
execute if entity @s[scores={mcs_lclick=0}] as @e[type=minecraft:interaction,tag=mcs_shop,distance=0..5] at @s if score @s mcs_slot_0 matches 1 run data modify entity @s data.sell[0].Count set value 0
execute if entity @s[scores={mcs_lclick=1}] as @e[type=minecraft:interaction,tag=mcs_shop,distance=0..5] at @s if score @s mcs_slot_1 matches 1 run data modify entity @s data.sell[1].Count set value 0
execute if entity @s[scores={mcs_lclick=2}] as @e[type=minecraft:interaction,tag=mcs_shop,distance=0..5] at @s if score @s mcs_slot_2 matches 1 run data modify entity @s data.sell[2].Count set value 0
execute if entity @s[scores={mcs_lclick=3}] as @e[type=minecraft:interaction,tag=mcs_shop,distance=0..5] at @s if score @s mcs_slot_3 matches 1 run data modify entity @s data.sell[3].Count set value 0
execute if entity @s[scores={mcs_lclick=4}] as @e[type=minecraft:interaction,tag=mcs_shop,distance=0..5] at @s if score @s mcs_slot_4 matches 1 run data modify entity @s data.sell[4].Count set value 0
execute if entity @s[scores={mcs_lclick=5}] as @e[type=minecraft:interaction,tag=mcs_shop,distance=0..5] at @s if score @s mcs_slot_5 matches 1 run data modify entity @s data.sell[5].Count set value 0
execute if entity @s[scores={mcs_lclick=6}] as @e[type=minecraft:interaction,tag=mcs_shop,distance=0..5] at @s if score @s mcs_slot_6 matches 1 run data modify entity @s data.sell[6].Count set value 0
execute if entity @s[scores={mcs_lclick=7}] as @e[type=minecraft:interaction,tag=mcs_shop,distance=0..5] at @s if score @s mcs_slot_7 matches 1 run data modify entity @s data.sell[7].Count set value 0
execute if entity @s[scores={mcs_lclick=8}] as @e[type=minecraft:interaction,tag=mcs_shop,distance=0..5] at @s if score @s mcs_slot_8 matches 1 run data modify entity @s data.sell[8].Count set value 0

# Reset Icon:
execute as @e[type=minecraft:item_display,distance=0..5] at @s if block ~ ~-1 ~ minecraft:chest run data modify entity @s item.id set value "minecraft:barrier"

# Reset:
$data modify entity @e[type=minecraft:interaction,tag=mcs_shop,distance=0..5,limit=1] data.buy[$(page)].amount set value 0
$data modify entity @e[type=minecraft:interaction,tag=mcs_shop,distance=0..5,limit=1] data.sell[$(page)].amount set value 0

#
tag @s[tag=mcs_singular_purchase] remove mcs_singular_purchase