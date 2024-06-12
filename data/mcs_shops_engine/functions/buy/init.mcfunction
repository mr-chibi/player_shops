# Fetch [Buy Amount]:
execute store result entity @e[type=minecraft:marker,distance=0..5,sort=nearest,tag=mcs_shops,nbt={data:{"shop_status":"open"}},limit=1] data.shop_buy_amount int 1 run scoreboard players get @s mcs_buy

# Fetch Scoreboard [Sell Slot]:
execute if score @s mcs_pages matches 0 as @e[type=minecraft:marker,distance=0..5,sort=nearest,tag=mcs_shops,nbt={data:{"shop_status":"open"}}] at @s store result score @s mcs_sell_slot_0 run data get entity @s data.shop_sell[0].count
execute if score @s mcs_pages matches 1 as @e[type=minecraft:marker,distance=0..5,sort=nearest,tag=mcs_shops,nbt={data:{"shop_status":"open"}}] at @s store result score @s mcs_sell_slot_1 run data get entity @s data.shop_sell[1].count
execute if score @s mcs_pages matches 2 as @e[type=minecraft:marker,distance=0..5,sort=nearest,tag=mcs_shops,nbt={data:{"shop_status":"open"}}] at @s store result score @s mcs_sell_slot_2 run data get entity @s data.shop_sell[2].count
execute if score @s mcs_pages matches 3 as @e[type=minecraft:marker,distance=0..5,sort=nearest,tag=mcs_shops,nbt={data:{"shop_status":"open"}}] at @s store result score @s mcs_sell_slot_3 run data get entity @s data.shop_sell[3].count
execute if score @s mcs_pages matches 4 as @e[type=minecraft:marker,distance=0..5,sort=nearest,tag=mcs_shops,nbt={data:{"shop_status":"open"}}] at @s store result score @s mcs_sell_slot_4 run data get entity @s data.shop_sell[4].count
execute if score @s mcs_pages matches 5 as @e[type=minecraft:marker,distance=0..5,sort=nearest,tag=mcs_shops,nbt={data:{"shop_status":"open"}}] at @s store result score @s mcs_sell_slot_5 run data get entity @s data.shop_sell[5].count
execute if score @s mcs_pages matches 6 as @e[type=minecraft:marker,distance=0..5,sort=nearest,tag=mcs_shops,nbt={data:{"shop_status":"open"}}] at @s store result score @s mcs_sell_slot_6 run data get entity @s data.shop_sell[6].count
execute if score @s mcs_pages matches 7 as @e[type=minecraft:marker,distance=0..5,sort=nearest,tag=mcs_shops,nbt={data:{"shop_status":"open"}}] at @s store result score @s mcs_sell_slot_7 run data get entity @s data.shop_sell[7].count
execute if score @s mcs_pages matches 8 as @e[type=minecraft:marker,distance=0..5,sort=nearest,tag=mcs_shops,nbt={data:{"shop_status":"open"}}] at @s store result score @s mcs_sell_slot_8 run data get entity @s data.shop_sell[8].count

# Fetch Scoreboard [Sell Slot]:
execute if score @s mcs_pages matches 0 as @e[type=minecraft:marker,distance=0..5,sort=nearest,tag=mcs_shops,nbt={data:{"shop_status":"open"}}] at @s store result score @s mcs_buy_slot_0 run data get block ~ ~ ~ Items[{Slot:9b}].count
execute if score @s mcs_pages matches 1 as @e[type=minecraft:marker,distance=0..5,sort=nearest,tag=mcs_shops,nbt={data:{"shop_status":"open"}}] at @s store result score @s mcs_buy_slot_1 run data get block ~ ~ ~ Items[{Slot:10b}].count
execute if score @s mcs_pages matches 2 as @e[type=minecraft:marker,distance=0..5,sort=nearest,tag=mcs_shops,nbt={data:{"shop_status":"open"}}] at @s store result score @s mcs_buy_slot_2 run data get block ~ ~ ~ Items[{Slot:11b}].count
execute if score @s mcs_pages matches 3 as @e[type=minecraft:marker,distance=0..5,sort=nearest,tag=mcs_shops,nbt={data:{"shop_status":"open"}}] at @s store result score @s mcs_buy_slot_3 run data get block ~ ~ ~ Items[{Slot:12b}].count
execute if score @s mcs_pages matches 4 as @e[type=minecraft:marker,distance=0..5,sort=nearest,tag=mcs_shops,nbt={data:{"shop_status":"open"}}] at @s store result score @s mcs_buy_slot_4 run data get block ~ ~ ~ Items[{Slot:13b}].count
execute if score @s mcs_pages matches 5 as @e[type=minecraft:marker,distance=0..5,sort=nearest,tag=mcs_shops,nbt={data:{"shop_status":"open"}}] at @s store result score @s mcs_buy_slot_5 run data get block ~ ~ ~ Items[{Slot:14b}].count
execute if score @s mcs_pages matches 6 as @e[type=minecraft:marker,distance=0..5,sort=nearest,tag=mcs_shops,nbt={data:{"shop_status":"open"}}] at @s store result score @s mcs_buy_slot_6 run data get block ~ ~ ~ Items[{Slot:15b}].count
execute if score @s mcs_pages matches 7 as @e[type=minecraft:marker,distance=0..5,sort=nearest,tag=mcs_shops,nbt={data:{"shop_status":"open"}}] at @s store result score @s mcs_buy_slot_7 run data get block ~ ~ ~ Items[{Slot:16b}].count
execute if score @s mcs_pages matches 8 as @e[type=minecraft:marker,distance=0..5,sort=nearest,tag=mcs_shops,nbt={data:{"shop_status":"open"}}] at @s store result score @s mcs_buy_slot_8 run data get block ~ ~ ~ Items[{Slot:17b}].count

# If [Buy Amount > Shops] Refuse:
execute if score @s mcs_pages matches 0 as @e[type=minecraft:marker,distance=0..5,sort=nearest,tag=mcs_shops,nbt={data:{"shop_status":"open"}}] at @s if score @p mcs_buy > @s mcs_sell_slot_0 run function mcs_shops_engine:buy/error
execute if score @s mcs_pages matches 1 as @e[type=minecraft:marker,distance=0..5,sort=nearest,tag=mcs_shops,nbt={data:{"shop_status":"open"}}] at @s if score @p mcs_buy > @s mcs_sell_slot_1 run function mcs_shops_engine:buy/error
execute if score @s mcs_pages matches 2 as @e[type=minecraft:marker,distance=0..5,sort=nearest,tag=mcs_shops,nbt={data:{"shop_status":"open"}}] at @s if score @p mcs_buy > @s mcs_sell_slot_2 run function mcs_shops_engine:buy/error
execute if score @s mcs_pages matches 3 as @e[type=minecraft:marker,distance=0..5,sort=nearest,tag=mcs_shops,nbt={data:{"shop_status":"open"}}] at @s if score @p mcs_buy > @s mcs_sell_slot_3 run function mcs_shops_engine:buy/error
execute if score @s mcs_pages matches 4 as @e[type=minecraft:marker,distance=0..5,sort=nearest,tag=mcs_shops,nbt={data:{"shop_status":"open"}}] at @s if score @p mcs_buy > @s mcs_sell_slot_4 run function mcs_shops_engine:buy/error
execute if score @s mcs_pages matches 5 as @e[type=minecraft:marker,distance=0..5,sort=nearest,tag=mcs_shops,nbt={data:{"shop_status":"open"}}] at @s if score @p mcs_buy > @s mcs_sell_slot_5 run function mcs_shops_engine:buy/error
execute if score @s mcs_pages matches 6 as @e[type=minecraft:marker,distance=0..5,sort=nearest,tag=mcs_shops,nbt={data:{"shop_status":"open"}}] at @s if score @p mcs_buy > @s mcs_sell_slot_6 run function mcs_shops_engine:buy/error
execute if score @s mcs_pages matches 7 as @e[type=minecraft:marker,distance=0..5,sort=nearest,tag=mcs_shops,nbt={data:{"shop_status":"open"}}] at @s if score @p mcs_buy > @s mcs_sell_slot_7 run function mcs_shops_engine:buy/error
execute if score @s mcs_pages matches 8 as @e[type=minecraft:marker,distance=0..5,sort=nearest,tag=mcs_shops,nbt={data:{"shop_status":"open"}}] at @s if score @p mcs_buy > @s mcs_sell_slot_8 run function mcs_shops_engine:buy/error

# If [Buy Amount < Shops] Accept [Next, Shop Step]:
execute if score @s mcs_pages matches 0 as @e[type=minecraft:marker,distance=0..5,sort=nearest,tag=mcs_shops,nbt={data:{"shop_status":"open"}}] at @s if score @p mcs_buy <= @s mcs_sell_slot_0 run function mcs_shops_engine:buy/ui with entity @s data
execute if score @s mcs_pages matches 1 as @e[type=minecraft:marker,distance=0..5,sort=nearest,tag=mcs_shops,nbt={data:{"shop_status":"open"}}] at @s if score @p mcs_buy <= @s mcs_sell_slot_1 run function mcs_shops_engine:buy/ui with entity @s data
execute if score @s mcs_pages matches 2 as @e[type=minecraft:marker,distance=0..5,sort=nearest,tag=mcs_shops,nbt={data:{"shop_status":"open"}}] at @s if score @p mcs_buy <= @s mcs_sell_slot_2 run function mcs_shops_engine:buy/ui with entity @s data
execute if score @s mcs_pages matches 3 as @e[type=minecraft:marker,distance=0..5,sort=nearest,tag=mcs_shops,nbt={data:{"shop_status":"open"}}] at @s if score @p mcs_buy <= @s mcs_sell_slot_3 run function mcs_shops_engine:buy/ui with entity @s data
execute if score @s mcs_pages matches 4 as @e[type=minecraft:marker,distance=0..5,sort=nearest,tag=mcs_shops,nbt={data:{"shop_status":"open"}}] at @s if score @p mcs_buy <= @s mcs_sell_slot_4 run function mcs_shops_engine:buy/ui with entity @s data
execute if score @s mcs_pages matches 5 as @e[type=minecraft:marker,distance=0..5,sort=nearest,tag=mcs_shops,nbt={data:{"shop_status":"open"}}] at @s if score @p mcs_buy <= @s mcs_sell_slot_5 run function mcs_shops_engine:buy/ui with entity @s data
execute if score @s mcs_pages matches 6 as @e[type=minecraft:marker,distance=0..5,sort=nearest,tag=mcs_shops,nbt={data:{"shop_status":"open"}}] at @s if score @p mcs_buy <= @s mcs_sell_slot_6 run function mcs_shops_engine:buy/ui with entity @s data
execute if score @s mcs_pages matches 7 as @e[type=minecraft:marker,distance=0..5,sort=nearest,tag=mcs_shops,nbt={data:{"shop_status":"open"}}] at @s if score @p mcs_buy <= @s mcs_sell_slot_7 run function mcs_shops_engine:buy/ui with entity @s data
execute if score @s mcs_pages matches 8 as @e[type=minecraft:marker,distance=0..5,sort=nearest,tag=mcs_shops,nbt={data:{"shop_status":"open"}}] at @s if score @p mcs_buy <= @s mcs_sell_slot_8 run function mcs_shops_engine:buy/ui with entity @s data

# Fetch Scoreboard [Sell Slot]:
execute if score @p mcs_pages matches 0 as @e[type=minecraft:marker,distance=0..5,sort=nearest,tag=mcs_shops,nbt={data:{"shop_status":"open"}}] at @s run scoreboard players get @s mcs_buy_slot_0
execute if score @p mcs_pages matches 1 as @e[type=minecraft:marker,distance=0..5,sort=nearest,tag=mcs_shops,nbt={data:{"shop_status":"open"}}] at @s run scoreboard players get @s mcs_buy_slot_1
execute if score @p mcs_pages matches 2 as @e[type=minecraft:marker,distance=0..5,sort=nearest,tag=mcs_shops,nbt={data:{"shop_status":"open"}}] at @s run scoreboard players get @s mcs_buy_slot_2
execute if score @p mcs_pages matches 3 as @e[type=minecraft:marker,distance=0..5,sort=nearest,tag=mcs_shops,nbt={data:{"shop_status":"open"}}] at @s run scoreboard players get @s mcs_buy_slot_3
execute if score @p mcs_pages matches 4 as @e[type=minecraft:marker,distance=0..5,sort=nearest,tag=mcs_shops,nbt={data:{"shop_status":"open"}}] at @s run scoreboard players get @s mcs_buy_slot_4
execute if score @p mcs_pages matches 5 as @e[type=minecraft:marker,distance=0..5,sort=nearest,tag=mcs_shops,nbt={data:{"shop_status":"open"}}] at @s run scoreboard players get @s mcs_buy_slot_5
execute if score @p mcs_pages matches 6 as @e[type=minecraft:marker,distance=0..5,sort=nearest,tag=mcs_shops,nbt={data:{"shop_status":"open"}}] at @s run scoreboard players get @s mcs_buy_slot_6
execute if score @p mcs_pages matches 7 as @e[type=minecraft:marker,distance=0..5,sort=nearest,tag=mcs_shops,nbt={data:{"shop_status":"open"}}] at @s run scoreboard players get @s mcs_buy_slot_7
execute if score @p mcs_pages matches 8 as @e[type=minecraft:marker,distance=0..5,sort=nearest,tag=mcs_shops,nbt={data:{"shop_status":"open"}}] at @s run scoreboard players get @s mcs_buy_slot_8

# Purchase Successful!
playsound minecraft:entity.player.levelup master @s[tag=mcs_has_block] ~ ~ ~ 2 0.95

# Reset Tags:
tag @s[tag=mcs_has_block] remove mcs_has_block
tag @s[tag=mcs_has_amount] remove mcs_has_amount

# Reset Command:
scoreboard players set @s[scores={mcs_buy=1..}] mcs_buy 0