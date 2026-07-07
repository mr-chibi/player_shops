# Count Inventory:
$execute as @e[type=minecraft:interaction,tag=mcs_shop,distance=0..5] at @s store result score @s mcs_amount run data get block ~ ~ ~ Items[$(page)].count

#
tellraw @s [{"text": "========================================="}]

#
$execute if data entity @e[type=minecraft:interaction,tag=mcs_shop,distance=0..5,limit=1] data.buy[$(page)] run function mcs_shops:ui/buy with entity @e[type=minecraft:interaction,tag=mcs_shop,distance=0..5,limit=1] data.buy[$(page)]
$execute if data entity @e[type=minecraft:interaction,tag=mcs_shop,distance=0..5,limit=1] data.sell[$(page)] run function mcs_shops:ui/sell with entity @e[type=minecraft:interaction,tag=mcs_shop,distance=0..5,limit=1] data.sell[$(page)]

#
$execute if data entity @e[type=minecraft:interaction,tag=mcs_shop,distance=0..5,limit=1] data.sell[$(page)].components.minecraft:custom_name run tellraw @s [{"text": "\nCustom Name: ", "color": "#cccccc"}, {"entity": "@e[type=minecraft:interaction,tag=mcs_shop,distance=0..5,limit=1]", "nbt":"data.sell[$(page)].components.minecraft:custom_name"}]
$execute if data entity @e[type=minecraft:interaction,tag=mcs_shop,distance=0..5,limit=1] data.sell[$(page)].components.minecraft:enchantments run tellraw @s [{"text": "\nEnchantments: \n", "color": "light_purple"}, {"entity": "@e[type=minecraft:interaction,tag=mcs_shop,distance=0..5,limit=1]", "nbt":"data.sell[$(page)].components.minecraft:enchantments", "color": "aqua"}]


#
tellraw @s [{"text": "\n[Next]", "color": "aqua"}, {"text": " - Left Click, to change pages. ", "color": "white"}]
tellraw @s [{"text": "[Purchase]", "color": "green"}, {"text": " - Right Click, to purchase! ", "color": "white"}]
tellraw @s [{"text": "[Amount]", "color": "yellow"}, {"text": " - Click, \"[Click to Purchase x Amount]\" enter how much you'd like to buy! ", "color": "white"}]

tellraw @s [{"text": "\nPage: ", "color": "light_purple"}, {"score":{"name": "@s", "objective":"mcs_lclick"}, "bold":true, "color": "white"}]