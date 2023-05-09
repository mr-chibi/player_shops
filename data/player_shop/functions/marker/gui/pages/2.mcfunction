###########################################################################################
# If "Player's" score matches "page" set view score:
###########################################################################################
scoreboard players set @s ps_view_pg 2

###########################################################################################
# Shop Update Inventory [Counts]:
###########################################################################################
execute as @e[type=minecraft:marker,tag=ps_shop] at @s if data entity @s {data:{ps_status:"lock"}} if entity @p[distance=0..2,scores={ps_distance=0..2}] store result score @s ps_stock run data get entity @s data.ps_buy[1].Count

###########################################################################################
# Shop Greeting [Message]:
###########################################################################################
function player_shop:marker/gui/text/greeting

###########################################################################################
# Shop Selling [Message]:
###########################################################################################
tellraw @s [{"text": "Selling:", "color": "#7DAEFF", "bold":true}]
execute unless data entity @e[type=minecraft:marker,tag=ps_shop,sort=nearest,distance=0..2,limit=1] data.ps_sell[1].id run tellraw @s [{"text": "minecraft:empty", "color": "#D3D3D3"}, {"text": "\n"}]
execute if data entity @e[type=minecraft:marker,tag=ps_shop,sort=nearest,distance=0..2,limit=1] data.ps_sell[1].id run tellraw @s [{"nbt": "data.ps_sell[1].id", "entity": "@e[type=minecraft:marker,tag=ps_shop,sort=nearest,distance=0..2]", "color": "#D3D3D3"}, {"text": " | ", "color": "white"}, {"text": "Stock: (", "color": "white"}, {"nbt": "data.ps_sell[1].Count", "entity": "@e[type=minecraft:marker,tag=ps_shop,sort=nearest,distance=0..2]", "color": "green"}, {"text": ")", "color": "white"}, {"text": "\n"}]


###########################################################################################
# Shop NBT [Message] For Items w/ Custom Names & Enchantments:
###########################################################################################
execute if data entity @e[type=minecraft:marker,tag=ps_shop,sort=nearest,distance=0..2,limit=1] data.ps_sell[1].tag.display.Name run tellraw @s [{"text": "Custom Name: \n", "color": "#C469FF", "bold":true}, {"entity": "@e[type=minecraft:marker,tag=ps_shop,sort=nearest,distance=0..2,limit=1]", "nbt": "data.ps_sell[1].tag.display.Name", "interpret": true, "color": "#D3D3D3", "bold":false}, {"text": "\n"}]
execute if data entity @e[type=minecraft:marker,tag=ps_shop,sort=nearest,distance=0..2,limit=1] data.ps_sell[1].tag.Enchantments[0].id run tellraw @s [{"text": "Stored Item Enchantments:", "color": "#C469FF", "bold":true}]
execute if data entity @e[type=minecraft:marker,tag=ps_shop,sort=nearest,distance=0..2,limit=1] data.ps_sell[1].tag.Enchantments[0].id run tellraw @s [{"entity": "@e[type=minecraft:marker,tag=ps_shop,sort=nearest,distance=0..2,limit=1]", "nbt": "data.ps_sell[1].tag.Enchantments[0].id", "color": "#FEFEFE", "bold":false}, {"text": " | Level: ", "color": "#D3D3D3", "bold": false}, {"entity": "@e[type=minecraft:marker,tag=ps_shop,sort=nearest,distance=0..2,limit=1]", "nbt": "data.ps_sell[1].tag.Enchantments[0].lvl", "color": "#FEFEFE", "bold":false}]
execute if data entity @e[type=minecraft:marker,tag=ps_shop,sort=nearest,distance=0..2,limit=1] data.ps_sell[1].tag.Enchantments[1].id run tellraw @s [{"entity": "@e[type=minecraft:marker,tag=ps_shop,sort=nearest,distance=0..2,limit=1]", "nbt": "data.ps_sell[1].tag.Enchantments[1].id", "color": "#FEFEFE", "bold":false}, {"text": " | Level: ", "color": "#D3D3D3", "bold": false}, {"entity": "@e[type=minecraft:marker,tag=ps_shop,sort=nearest,distance=0..2,limit=1]", "nbt": "data.ps_sell[1].tag.Enchantments[0].lvl", "color": "#FEFEFE", "bold":false}]]
execute if data entity @e[type=minecraft:marker,tag=ps_shop,sort=nearest,distance=0..2,limit=1] data.ps_sell[1].tag.Enchantments[2].id run tellraw @s [{"entity": "@e[type=minecraft:marker,tag=ps_shop,sort=nearest,distance=0..2,limit=1]", "nbt": "data.ps_sell[1].tag.Enchantments[2].id", "color": "#FEFEFE", "bold":false}, {"text": " | Level: ", "color": "#D3D3D3", "bold": false}, {"entity": "@e[type=minecraft:marker,tag=ps_shop,sort=nearest,distance=0..2,limit=1]", "nbt": "data.ps_sell[1].tag.Enchantments[0].lvl", "color": "#FEFEFE", "bold":false}, {"text": "\n"}]

###########################################################################################
# Shop NBT [Message] For Items that are "Enchantment" Books:
###########################################################################################
execute if data entity @e[type=minecraft:marker,tag=ps_shop,sort=nearest,distance=0..2,limit=1] data.ps_sell[1].tag.StoredEnchantments[0].id run tellraw @s [{"text": "Enchantment Type: \n", "color": "#C469FF", "bold":true}, {"entity": "@e[type=minecraft:marker,tag=ps_shop,sort=nearest,distance=0..2,limit=1]", "nbt": "data.ps_sell[1].tag.StoredEnchantments[0].id", "color": "#D3D3D3", "bold":false}, {"text": "\n"}]

###########################################################################################
# Shop NBT [Message] For Items that are "Potions":
###########################################################################################
execute if data entity @e[type=minecraft:marker,tag=ps_shop,sort=nearest,distance=0..2,limit=1] data.ps_sell[1].tag.Potion run tellraw @s [{"text": "Potion Type: \n", "color": "#C469FF", "bold":true}, {"entity": "@e[type=minecraft:marker,tag=ps_shop,sort=nearest,distance=0..2,limit=1]", "nbt": "data.ps_sell[1].tag.Potion", "color": "#D3D3D3", "bold":false}, {"text": "\n"}]

###########################################################################################
# Shop NBT [Message] For Items that are "Shulker Boxes":
###########################################################################################
execute if data entity @e[type=minecraft:marker,tag=ps_shop,sort=nearest,distance=0..2,limit=1] data.ps_sell[1].tag.BlockEntityTag.Items run tellraw @s [{"text": "Shulker Box NBT: \n", "color": "#C469FF", "bold":true}, {"text": "This container has items stored inside it.", "color": "#D3D3D3", "bold":false}, {"text": "\n"}]


###########################################################################################
# Shop Buying [Message]:
###########################################################################################
tellraw @s [{"text": "Buying:", "color": "#7DAEFF", "bold":true}]
execute unless data entity @e[type=minecraft:marker,tag=ps_shop,sort=nearest,distance=0..2,limit=1] data.ps_buy[1].id run tellraw @s [{"text": "minecraft:empty", "color": "#D3D3D3"}, {"text": "\n"}]
execute if data entity @e[type=minecraft:marker,tag=ps_shop,sort=nearest,distance=0..2,limit=1] data.ps_buy[1].id run tellraw @s [{"nbt": "data.ps_buy[1].id", "entity": "@e[type=minecraft:marker,tag=ps_shop,sort=nearest,distance=0..2]", "color": "#D3D3D3"}, {"text": " | ", "color": "white"}, {"text": "Stock: (", "color": "white"}, {"nbt": "data.ps_buy[1].Count", "entity": "@e[type=minecraft:marker,tag=ps_shop,sort=nearest,distance=0..2]", "color": "green"}, {"text": ")", "color": "white"}, {"text": "\n"}]


###########################################################################################
# Player Shop, Purchase Command:
###########################################################################################
function player_shop:marker/gui/text/purchase_command


###########################################################################################
# Player Shop Chest Navigation:
###########################################################################################
tellraw @s [{"text": "Shop Navigation:", "color": "white", "bold":true}]
tellraw @s [{"text": "Click a number below to change pages. \n",  "color": "#A3A3A3"}]

tellraw @s [{"text": "[1]", "color": "white", "bold":false, "clickEvent":{"action":"run_command","value":"/trigger ps_page set 1"}}, {"text": " | ", "color": "white", "bold":false}, {"text": "[2]", "color": "yellow", "bold":true, "clickEvent":{"action":"run_command","value":"/trigger ps_page set 2"}}, {"text": " | ", "color": "white", "bold":false}, {"text": "[3]", "color": "white", "bold":false, "clickEvent":{"action":"run_command","value":"/trigger ps_page set 3"}}, {"text": " | ", "color": "white", "bold":false}, {"text": "[4]", "color": "white", "bold":false, "clickEvent":{"action":"run_command","value":"/trigger ps_page set 4"}}, {"text": " | ", "color": "white", "bold":false}, {"text": "[5]", "color": "white", "bold":false, "clickEvent":{"action":"run_command","value":"/trigger ps_page set 5"}}, {"text": " | ", "color": "white", "bold":false}, {"text": "[6]", "color": "white", "bold":false, "clickEvent":{"action":"run_command","value":"/trigger ps_page set 6"}}, {"text": " | ", "color": "white", "bold":false}, {"text": "[7]", "color": "white", "bold":false, "clickEvent":{"action":"run_command","value":"/trigger ps_page set 7"}}, {"text": " | ", "color": "white", "bold":false}, {"text": "[8]", "color": "white", "bold":false, "clickEvent":{"action":"run_command","value":"/trigger ps_page set 8"}}, {"text": " | ", "color": "white", "bold":false}, {"text": "[9]", "color": "white", "bold":false, "clickEvent":{"action":"run_command","value":"/trigger ps_page set 9"}}]