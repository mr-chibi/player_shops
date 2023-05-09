###########################################################################################
# Player Shop, Payment Recieved [Slot:0b]:
# Check if there wasn't a payment before then update counts:
###########################################################################################
execute if score @s ps_view_pg matches 1 as @e[type=minecraft:marker,tag=ps_shop] at @s if data entity @s {data:{ps_status:"lock"}} if entity @p[distance=0..2,scores={ps_distance=0..2}] if score @p ps_cart matches 0 if score @p ps_sending <= ps_max_payment ps_wallet run scoreboard players operation @s[scores={ps_payment_1=..64}] ps_payment_1 += @p ps_sending

# Prevent Payment from going to 64+:
execute if score @s ps_view_pg matches 1 as @e[type=minecraft:marker,tag=ps_shop] at @s if data entity @s {data:{ps_status:"lock"}} if entity @p[distance=0..2,scores={ps_distance=0..2}] if score @p ps_cart matches 0 run scoreboard players set @s[scores={ps_payment_1=64..}] ps_payment_1 64

# Update Counts if payment less than 64!
execute if score @s ps_view_pg matches 1 as @e[type=minecraft:marker,tag=ps_shop] at @s if data entity @s {data:{ps_status:"lock"}} if entity @p[distance=0..2,scores={ps_distance=0..2}] if score @p ps_cart matches 0 store result entity @s data.ps_recieved[0].Count byte 1 run scoreboard players get @s[scores={ps_payment_1=..64}] ps_payment_1

# Update Payment <Block>:
execute if score @s ps_view_pg matches 1 as @e[type=minecraft:marker,tag=ps_shop] at @s if data entity @s {data:{ps_status:"lock"}} if entity @p[distance=0..2,scores={ps_distance=0..2}] if score @p ps_cart matches 0 run data modify entity @s data.ps_recieved[0].id set string block ~ ~ ~ Items[{Slot:0b}].id

# Update Recieved <Block & Amount>:
execute if score @s ps_view_pg matches 1 as @e[type=minecraft:marker,tag=ps_shop] at @s if data entity @s {data:{ps_status:"lock"}} if entity @p[distance=0..2,scores={ps_distance=0..2}] if score @p ps_cart matches 0 run data modify block ~ ~ ~ Items[{Slot:18b}] merge from entity @s data.ps_recieved[0]


###########################################################################################
# Player Shop, Payment Recieved [Slot:1b]:
# Check if there wasn't a payment before then update counts:
###########################################################################################
execute if score @s ps_view_pg matches 2 as @e[type=minecraft:marker,tag=ps_shop] at @s if data entity @s {data:{ps_status:"lock"}} if entity @p[distance=0..2,scores={ps_distance=0..2}] if score @p ps_cart matches 0 if score @p ps_sending <= ps_max_payment ps_wallet run scoreboard players operation @s[scores={ps_payment_2=..64}] ps_payment_2 += @p ps_sending

# Prevent Payment from going to 64+:
execute if score @s ps_view_pg matches 2 as @e[type=minecraft:marker,tag=ps_shop] at @s if data entity @s {data:{ps_status:"lock"}} if entity @p[distance=0..2,scores={ps_distance=0..2}] if score @p ps_cart matches 0 run scoreboard players set @s[scores={ps_payment_2=64..}] ps_payment_2 64

# Update Counts if payment less than 64!
execute if score @s ps_view_pg matches 2 as @e[type=minecraft:marker,tag=ps_shop] at @s if data entity @s {data:{ps_status:"lock"}} if entity @p[distance=0..2,scores={ps_distance=0..2}] if score @p ps_cart matches 0 store result entity @s data.ps_recieved[1].Count byte 1 run scoreboard players get @s[scores={ps_payment_2=..64}] ps_payment_2

# Update Payment <Block>:
execute if score @s ps_view_pg matches 2 as @e[type=minecraft:marker,tag=ps_shop] at @s if data entity @s {data:{ps_status:"lock"}} if entity @p[distance=0..2,scores={ps_distance=0..2}] if score @p ps_cart matches 0 run data modify entity @s data.ps_recieved[1].id set string block ~ ~ ~ Items[{Slot:1b}].id

# Update Recieved <Block & Amount>:
execute if score @s ps_view_pg matches 2 as @e[type=minecraft:marker,tag=ps_shop] at @s if data entity @s {data:{ps_status:"lock"}} if entity @p[distance=0..2,scores={ps_distance=0..2}] if score @p ps_cart matches 0 run data modify block ~ ~ ~ Items[{Slot:19b}] merge from entity @s data.ps_recieved[1]


###########################################################################################
# Player Shop, Payment Recieved [Slot:2b]:
# Check if there wasn't a payment before then update counts:
###########################################################################################
execute if score @s ps_view_pg matches 3 as @e[type=minecraft:marker,tag=ps_shop] at @s if data entity @s {data:{ps_status:"lock"}} if entity @p[distance=0..2,scores={ps_distance=0..2}] if score @p ps_cart matches 0 if score @p ps_sending <= ps_max_payment ps_wallet run scoreboard players operation @s[scores={ps_payment_3=..64}] ps_payment_3 += @p ps_sending

# Prevent Payment from going to 64+:
execute if score @s ps_view_pg matches 3 as @e[type=minecraft:marker,tag=ps_shop] at @s if data entity @s {data:{ps_status:"lock"}} if entity @p[distance=0..2,scores={ps_distance=0..2}] if score @p ps_cart matches 0 run scoreboard players set @s[scores={ps_payment_3=64..}] ps_payment_3 64

# Update Counts if payment less than 64!
execute if score @s ps_view_pg matches 3 as @e[type=minecraft:marker,tag=ps_shop] at @s if data entity @s {data:{ps_status:"lock"}} if entity @p[distance=0..2,scores={ps_distance=0..2}] if score @p ps_cart matches 0 store result entity @s data.ps_recieved[2].Count byte 1 run scoreboard players get @s[scores={ps_payment_3=..64}] ps_payment_3

# Update Payment <Block>:
execute if score @s ps_view_pg matches 3 as @e[type=minecraft:marker,tag=ps_shop] at @s if data entity @s {data:{ps_status:"lock"}} if entity @p[distance=0..2,scores={ps_distance=0..2}] if score @p ps_cart matches 0 run data modify entity @s data.ps_recieved[2].id set string block ~ ~ ~ Items[{Slot:2b}].id

# Update Recieved <Block & Amount>:
execute if score @s ps_view_pg matches 3 as @e[type=minecraft:marker,tag=ps_shop] at @s if data entity @s {data:{ps_status:"lock"}} if entity @p[distance=0..2,scores={ps_distance=0..2}] if score @p ps_cart matches 0 run data modify block ~ ~ ~ Items[{Slot:20b}] merge from entity @s data.ps_recieved[2]


###########################################################################################
# Player Shop, Payment Recieved [Slot:3b]:
# Check if there wasn't a payment before then update counts:
###########################################################################################
execute if score @s ps_view_pg matches 4 as @e[type=minecraft:marker,tag=ps_shop] at @s if data entity @s {data:{ps_status:"lock"}} if entity @p[distance=0..2,scores={ps_distance=0..2}] if score @p ps_cart matches 0 if score @p ps_sending <= ps_max_payment ps_wallet run scoreboard players operation @s[scores={ps_payment_4=..64}] ps_payment_4 += @p ps_sending

# Prevent Payment from going to 64+:
execute if score @s ps_view_pg matches 4 as @e[type=minecraft:marker,tag=ps_shop] at @s if data entity @s {data:{ps_status:"lock"}} if entity @p[distance=0..2,scores={ps_distance=0..2}] if score @p ps_cart matches 0 run scoreboard players set @s[scores={ps_payment_4=64..}] ps_payment_4 64

# Update Counts if payment less than 64!
execute if score @s ps_view_pg matches 4 as @e[type=minecraft:marker,tag=ps_shop] at @s if data entity @s {data:{ps_status:"lock"}} if entity @p[distance=0..2,scores={ps_distance=0..2}] if score @p ps_cart matches 0 store result entity @s data.ps_recieved[3].Count byte 1 run scoreboard players get @s[scores={ps_payment_4=..64}] ps_payment_4

# Update Payment <Block>:
execute if score @s ps_view_pg matches 4 as @e[type=minecraft:marker,tag=ps_shop] at @s if data entity @s {data:{ps_status:"lock"}} if entity @p[distance=0..2,scores={ps_distance=0..2}] if score @p ps_cart matches 0 run data modify entity @s data.ps_recieved[3].id set string block ~ ~ ~ Items[{Slot:3b}].id

# Update Recieved <Block & Amount>:
execute if score @s ps_view_pg matches 4 as @e[type=minecraft:marker,tag=ps_shop] at @s if data entity @s {data:{ps_status:"lock"}} if entity @p[distance=0..2,scores={ps_distance=0..2}] if score @p ps_cart matches 0 run data modify block ~ ~ ~ Items[{Slot:21b}] merge from entity @s data.ps_recieved[3]


###########################################################################################
# Player Shop, Payment Recieved [Slot:4b]:
# Check if there wasn't a payment before then update counts:
###########################################################################################
execute if score @s ps_view_pg matches 5 as @e[type=minecraft:marker,tag=ps_shop] at @s if data entity @s {data:{ps_status:"lock"}} if entity @p[distance=0..2,scores={ps_distance=0..2}] if score @p ps_cart matches 0 if score @p ps_sending <= ps_max_payment ps_wallet run scoreboard players operation @s[scores={ps_payment_5=..64}] ps_payment_5 += @p ps_sending

# Prevent Payment from going to 64+:
execute if score @s ps_view_pg matches 5 as @e[type=minecraft:marker,tag=ps_shop] at @s if data entity @s {data:{ps_status:"lock"}} if entity @p[distance=0..2,scores={ps_distance=0..2}] if score @p ps_cart matches 0 run scoreboard players set @s[scores={ps_payment_5=64..}] ps_payment_5 64

# Update Counts if payment less than 64!
execute if score @s ps_view_pg matches 5 as @e[type=minecraft:marker,tag=ps_shop] at @s if data entity @s {data:{ps_status:"lock"}} if entity @p[distance=0..2,scores={ps_distance=0..2}] if score @p ps_cart matches 0 store result entity @s data.ps_recieved[4].Count byte 1 run scoreboard players get @s[scores={ps_payment_5=..64}] ps_payment_5

# Update Payment <Block>:
execute if score @s ps_view_pg matches 5 as @e[type=minecraft:marker,tag=ps_shop] at @s if data entity @s {data:{ps_status:"lock"}} if entity @p[distance=0..2,scores={ps_distance=0..2}] if score @p ps_cart matches 0 run data modify entity @s data.ps_recieved[4].id set string block ~ ~ ~ Items[{Slot:4b}].id

# Update Recieved <Block & Amount>:
execute if score @s ps_view_pg matches 5 as @e[type=minecraft:marker,tag=ps_shop] at @s if data entity @s {data:{ps_status:"lock"}} if entity @p[distance=0..2,scores={ps_distance=0..2}] if score @p ps_cart matches 0 run data modify block ~ ~ ~ Items[{Slot:22b}] merge from entity @s data.ps_recieved[4]


###########################################################################################
# Player Shop, Payment Recieved [Slot:5b]:
# Check if there wasn't a payment before then update counts:
###########################################################################################
execute if score @s ps_view_pg matches 6 as @e[type=minecraft:marker,tag=ps_shop] at @s if data entity @s {data:{ps_status:"lock"}} if entity @p[distance=0..2,scores={ps_distance=0..2}] if score @p ps_cart matches 0 if score @p ps_sending <= ps_max_payment ps_wallet run scoreboard players operation @s[scores={ps_payment_6=..64}] ps_payment_6 += @p ps_sending

# Prevent Payment from going to 64+:
execute if score @s ps_view_pg matches 6 as @e[type=minecraft:marker,tag=ps_shop] at @s if data entity @s {data:{ps_status:"lock"}} if entity @p[distance=0..2,scores={ps_distance=0..2}] if score @p ps_cart matches 0 run scoreboard players set @s[scores={ps_payment_6=64..}] ps_payment_6 64

# Update Counts if payment less than 64!
execute if score @s ps_view_pg matches 6 as @e[type=minecraft:marker,tag=ps_shop] at @s if data entity @s {data:{ps_status:"lock"}} if entity @p[distance=0..2,scores={ps_distance=0..2}] if score @p ps_cart matches 0 store result entity @s data.ps_recieved[5].Count byte 1 run scoreboard players get @s[scores={ps_payment_6=..64}] ps_payment_6

# Update Payment <Block>:
execute if score @s ps_view_pg matches 6 as @e[type=minecraft:marker,tag=ps_shop] at @s if data entity @s {data:{ps_status:"lock"}} if entity @p[distance=0..2,scores={ps_distance=0..2}] if score @p ps_cart matches 0 run data modify entity @s data.ps_recieved[5].id set string block ~ ~ ~ Items[{Slot:5b}].id

# Update Recieved <Block & Amount>:
execute if score @s ps_view_pg matches 6 as @e[type=minecraft:marker,tag=ps_shop] at @s if data entity @s {data:{ps_status:"lock"}} if entity @p[distance=0..2,scores={ps_distance=0..2}] if score @p ps_cart matches 0 run data modify block ~ ~ ~ Items[{Slot:23b}] merge from entity @s data.ps_recieved[5]


###########################################################################################
# Player Shop, Payment Recieved [Slot:6b]:
# Check if there wasn't a payment before then update counts:
###########################################################################################
execute if score @s ps_view_pg matches 7 as @e[type=minecraft:marker,tag=ps_shop] at @s if data entity @s {data:{ps_status:"lock"}} if entity @p[distance=0..2,scores={ps_distance=0..2}] if score @p ps_cart matches 0 if score @p ps_sending <= ps_max_payment ps_wallet run scoreboard players operation @s[scores={ps_payment_7=..64}] ps_payment_7 += @p ps_sending

# Prevent Payment from going to 64+:
execute if score @s ps_view_pg matches 7 as @e[type=minecraft:marker,tag=ps_shop] at @s if data entity @s {data:{ps_status:"lock"}} if entity @p[distance=0..2,scores={ps_distance=0..2}] if score @p ps_cart matches 0 run scoreboard players set @s[scores={ps_payment_7=64..}] ps_payment_7 64

# Update Counts if payment less than 64!
execute if score @s ps_view_pg matches 7 as @e[type=minecraft:marker,tag=ps_shop] at @s if data entity @s {data:{ps_status:"lock"}} if entity @p[distance=0..2,scores={ps_distance=0..2}] if score @p ps_cart matches 0 store result entity @s data.ps_recieved[6].Count byte 1 run scoreboard players get @s[scores={ps_payment_7=..64}] ps_payment_7

# Update Payment <Block>:
execute if score @s ps_view_pg matches 7 as @e[type=minecraft:marker,tag=ps_shop] at @s if data entity @s {data:{ps_status:"lock"}} if entity @p[distance=0..2,scores={ps_distance=0..2}] if score @p ps_cart matches 0 run data modify entity @s data.ps_recieved[6].id set string block ~ ~ ~ Items[{Slot:6b}].id

# Update Recieved <Block & Amount>:
execute if score @s ps_view_pg matches 7 as @e[type=minecraft:marker,tag=ps_shop] at @s if data entity @s {data:{ps_status:"lock"}} if entity @p[distance=0..2,scores={ps_distance=0..2}] if score @p ps_cart matches 0 run data modify block ~ ~ ~ Items[{Slot:24b}] merge from entity @s data.ps_recieved[6]


###########################################################################################
# Player Shop, Payment Recieved [Slot:7b]:
# Check if there wasn't a payment before then update counts:
###########################################################################################
execute if score @s ps_view_pg matches 8 as @e[type=minecraft:marker,tag=ps_shop] at @s if data entity @s {data:{ps_status:"lock"}} if entity @p[distance=0..2,scores={ps_distance=0..2}] if score @p ps_cart matches 0 if score @p ps_sending <= ps_max_payment ps_wallet run scoreboard players operation @s[scores={ps_payment_8=..64}] ps_payment_8 += @p ps_sending

# Prevent Payment from going to 64+:
execute if score @s ps_view_pg matches 8 as @e[type=minecraft:marker,tag=ps_shop] at @s if data entity @s {data:{ps_status:"lock"}} if entity @p[distance=0..2,scores={ps_distance=0..2}] if score @p ps_cart matches 0 run scoreboard players set @s[scores={ps_payment_8=64..}] ps_payment_8 64

# Update Counts if payment less than 64!
execute if score @s ps_view_pg matches 8 as @e[type=minecraft:marker,tag=ps_shop] at @s if data entity @s {data:{ps_status:"lock"}} if entity @p[distance=0..2,scores={ps_distance=0..2}] if score @p ps_cart matches 0 store result entity @s data.ps_recieved[7].Count byte 1 run scoreboard players get @s[scores={ps_payment_8=..64}] ps_payment_8

# Update Payment <Block>:
execute if score @s ps_view_pg matches 8 as @e[type=minecraft:marker,tag=ps_shop] at @s if data entity @s {data:{ps_status:"lock"}} if entity @p[distance=0..2,scores={ps_distance=0..2}] if score @p ps_cart matches 0 run data modify entity @s data.ps_recieved[7].id set string block ~ ~ ~ Items[{Slot:7b}].id

# Update Recieved <Block & Amount>:
execute if score @s ps_view_pg matches 8 as @e[type=minecraft:marker,tag=ps_shop] at @s if data entity @s {data:{ps_status:"lock"}} if entity @p[distance=0..2,scores={ps_distance=0..2}] if score @p ps_cart matches 0 run data modify block ~ ~ ~ Items[{Slot:25b}] merge from entity @s data.ps_recieved[7]


###########################################################################################
# Player Shop, Payment Recieved [Slot:8b]:
# Check if there wasn't a payment before then update counts:
###########################################################################################
execute if score @s ps_view_pg matches 9 as @e[type=minecraft:marker,tag=ps_shop] at @s if data entity @s {data:{ps_status:"lock"}} if entity @p[distance=0..2,scores={ps_distance=0..2}] if score @p ps_cart matches 0 if score @p ps_sending <= ps_max_payment ps_wallet run scoreboard players operation @s[scores={ps_payment_9=..64}] ps_payment_9 += @p ps_sending

# Prevent Payment from going to 64+:
execute if score @s ps_view_pg matches 9 as @e[type=minecraft:marker,tag=ps_shop] at @s if data entity @s {data:{ps_status:"lock"}} if entity @p[distance=0..2,scores={ps_distance=0..2}] if score @p ps_cart matches 0 run scoreboard players set @s[scores={ps_payment_9=64..}] ps_payment_9 64

# Update Counts if payment less than 64!
execute if score @s ps_view_pg matches 9 as @e[type=minecraft:marker,tag=ps_shop] at @s if data entity @s {data:{ps_status:"lock"}} if entity @p[distance=0..2,scores={ps_distance=0..2}] if score @p ps_cart matches 0 store result entity @s data.ps_recieved[8].Count byte 1 run scoreboard players get @s[scores={ps_payment_9=..64}] ps_payment_9

# Update Payment <Block>:
execute if score @s ps_view_pg matches 9 as @e[type=minecraft:marker,tag=ps_shop] at @s if data entity @s {data:{ps_status:"lock"}} if entity @p[distance=0..2,scores={ps_distance=0..2}] if score @p ps_cart matches 0 run data modify entity @s data.ps_recieved[8].id set string block ~ ~ ~ Items[{Slot:8b}].id

# Update Recieved <Block & Amount>:
execute if score @s ps_view_pg matches 9 as @e[type=minecraft:marker,tag=ps_shop] at @s if data entity @s {data:{ps_status:"lock"}} if entity @p[distance=0..2,scores={ps_distance=0..2}] if score @p ps_cart matches 0 run data modify block ~ ~ ~ Items[{Slot:26b}] merge from entity @s data.ps_recieved[8]