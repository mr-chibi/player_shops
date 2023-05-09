######################################################################################################################################################################################
# Player Shop, "Marker", check if shop is "Locked" Then, check if "player" 0-2 block distance Next, "store" result of what's in "stock" from "Slot:9b" [Sell Item]:
######################################################################################################################################################################################
execute as @e[type=minecraft:marker,tag=ps_shop] at @s if data entity @s {data:{ps_status:"lock"}} if entity @p[distance=0..2,scores={ps_distance=0..2}] store result score @s ps_stock run data get entity @s data.ps_sell[2].Count
execute as @e[type=minecraft:marker,tag=ps_shop] at @s if data entity @s {data:{ps_status:"lock"}} if entity @p[distance=0..2,scores={ps_distance=0..2}] run scoreboard players operation @s ps_stock_remainer_3 = @s ps_stock

######################################################################################################################################################################################
# Player Shop, [Buy Item] store, "ID" in "ps_id" [scoreboard]:
######################################################################################################################################################################################
execute as @e[type=minecraft:item,tag=ps_buy] at @s store result score @s ps_id run data get entity @s UUID[2]


######################################################################################################################################################################################
# Player Shop, [Buy Item], check if "player" 0-2 blocks Next, set [Buy Item] ID as [Shopping Player]:
######################################################################################################################################################################################
execute as @e[type=minecraft:item,tag=ps_buy] at @s if entity @p[distance=0..2,scores={ps_distance=0..2}] run scoreboard players operation @s ps_id = @p ps_id

######################################################################################################################################################################################
# Player Shop, Check if [Buy Item] matches [Player ID] then, add [ps_cart] Tag, but don't add tag if player already has it!
######################################################################################################################################################################################
execute as @e[type=minecraft:item,tag=ps_buy] at @s if entity @p[distance=0..2,scores={ps_distance=0..2}] if score @s ps_id = @p[distance=0..2,scores={ps_distance=0..2}] ps_id run tag @p[tag=!ps_cart] add ps_cart

######################################################################################################################################################################################
# Player Shop, [Buy Item], check if "player" 0-2 blocks Next, If [Shop Item ID] Matches [Shopping Player ID] Then, change Item into purchasing "Item" from "player shop" data.ps_buy[2] (Id, Counts):
######################################################################################################################################################################################
execute as @e[type=minecraft:item,tag=ps_buy] at @s if entity @p[distance=0..2,scores={ps_distance=0..2}] if score @s ps_id = @p[distance=0..2,scores={ps_distance=0..2}] ps_id run data modify entity @s Item.id set from entity @e[type=minecraft:marker,tag=ps_shop,sort=nearest,distance=0..2,limit=1] data.ps_buy[2].id
execute as @e[type=minecraft:item,tag=ps_buy] at @s if entity @p[distance=0..2,scores={ps_distance=0..2}] if score @s ps_id = @p[distance=0..2,scores={ps_distance=0..2}] ps_id run data modify entity @s Item.Count set from entity @e[type=minecraft:marker,tag=ps_shop,sort=nearest,distance=0..2,limit=1] data.ps_buy[2].Count