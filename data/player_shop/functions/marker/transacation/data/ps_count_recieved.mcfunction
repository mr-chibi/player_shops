###########################################################################################
# Player Shop, Payment Recieved [Slot:0b]:
# Check if there wasn't a payment before then update counts:
###########################################################################################
execute if score @s ps_view_pg matches 1 as @e[type=minecraft:marker,tag=ps_shop] at @s unless data block ~ ~ ~ Items[{Slot:18b}] run scoreboard players set @s ps_payment_1 0

# Check if there a payment before and update counts:
execute if score @s ps_view_pg matches 1 as @e[type=minecraft:marker,tag=ps_shop] at @s if data block ~ ~ ~ Items[{Slot:18b}] store result score @s ps_payment_1 run data get block ~ ~ ~ Items[{Slot:18b}].Count


###########################################################################################
# Player Shop, Payment Recieved [Slot:1b]:
# Check if there wasn't a payment before then update counts:
###########################################################################################
execute if score @s ps_view_pg matches 2 as @e[type=minecraft:marker,tag=ps_shop] at @s unless data block ~ ~ ~ Items[{Slot:19b}] run scoreboard players set @s ps_payment_2 0

# Check if there a payment before and update counts:
execute if score @s ps_view_pg matches 2 as @e[type=minecraft:marker,tag=ps_shop] at @s if data block ~ ~ ~ Items[{Slot:19b}] store result score @s ps_payment_2 run data get block ~ ~ ~ Items[{Slot:19b}].Count


###########################################################################################
# Player Shop, Payment Recieved [Slot:2b]:
# Check if there wasn't a payment before then update counts:
###########################################################################################
execute if score @s ps_view_pg matches 3 as @e[type=minecraft:marker,tag=ps_shop] at @s unless data block ~ ~ ~ Items[{Slot:20b}] run scoreboard players set @s ps_payment_3 0

# Check if there a payment before and update counts:
execute if score @s ps_view_pg matches 3 as @e[type=minecraft:marker,tag=ps_shop] at @s if data block ~ ~ ~ Items[{Slot:20b}] store result score @s ps_payment_3 run data get block ~ ~ ~ Items[{Slot:20b}].Count


###########################################################################################
# Player Shop, Payment Recieved [Slot:3b]:
# Check if there wasn't a payment before then update counts:
###########################################################################################
execute if score @s ps_view_pg matches 4 as @e[type=minecraft:marker,tag=ps_shop] at @s unless data block ~ ~ ~ Items[{Slot:21b}] run scoreboard players set @s ps_payment_4 0

# Check if there a payment before and update counts:
execute if score @s ps_view_pg matches 4 as @e[type=minecraft:marker,tag=ps_shop] at @s if data block ~ ~ ~ Items[{Slot:21b}] store result score @s ps_payment_4 run data get block ~ ~ ~ Items[{Slot:21b}].Count


###########################################################################################
# Player Shop, Payment Recieved [Slot:4b]:
# Check if there wasn't a payment before then update counts:
###########################################################################################
execute if score @s ps_view_pg matches 5 as @e[type=minecraft:marker,tag=ps_shop] at @s unless data block ~ ~ ~ Items[{Slot:22b}] run scoreboard players set @s ps_payment_5 0

# Check if there a payment before and update counts:
execute if score @s ps_view_pg matches 5 as @e[type=minecraft:marker,tag=ps_shop] at @s if data block ~ ~ ~ Items[{Slot:22b}] store result score @s ps_payment_5 run data get block ~ ~ ~ Items[{Slot:22b}].Count


###########################################################################################
# Player Shop, Payment Recieved [Slot:5b]:
# Check if there wasn't a payment before then update counts:
###########################################################################################
execute if score @s ps_view_pg matches 6 as @e[type=minecraft:marker,tag=ps_shop] at @s unless data block ~ ~ ~ Items[{Slot:23b}] run scoreboard players set @s ps_payment_6 0

# Check if there a payment before and update counts:
execute if score @s ps_view_pg matches 6 as @e[type=minecraft:marker,tag=ps_shop] at @s if data block ~ ~ ~ Items[{Slot:23b}] store result score @s ps_payment_6 run data get block ~ ~ ~ Items[{Slot:23b}].Count


###########################################################################################
# Player Shop, Payment Recieved [Slot:6b]:
# Check if there wasn't a payment before then update counts:
###########################################################################################
execute if score @s ps_view_pg matches 7 as @e[type=minecraft:marker,tag=ps_shop] at @s unless data block ~ ~ ~ Items[{Slot:24b}] run scoreboard players set @s ps_payment_7 0

# Check if there a payment before and update counts:
execute if score @s ps_view_pg matches 7 as @e[type=minecraft:marker,tag=ps_shop] at @s if data block ~ ~ ~ Items[{Slot:24b}] store result score @s ps_payment_7 run data get block ~ ~ ~ Items[{Slot:24b}].Count


###########################################################################################
# Player Shop, Payment Recieved [Slot:7b]:
# Check if there wasn't a payment before then update counts:
###########################################################################################
execute if score @s ps_view_pg matches 8 as @e[type=minecraft:marker,tag=ps_shop] at @s unless data block ~ ~ ~ Items[{Slot:25b}] run scoreboard players set @s ps_payment_8 0

# Check if there a payment before and update counts:
execute if score @s ps_view_pg matches 8 as @e[type=minecraft:marker,tag=ps_shop] at @s if data block ~ ~ ~ Items[{Slot:25b}] store result score @s ps_payment_8 run data get block ~ ~ ~ Items[{Slot:25b}].Count


###########################################################################################
# Player Shop, Payment Recieved [Slot:8b]:
# Check if there wasn't a payment before then update counts:
###########################################################################################
execute if score @s ps_view_pg matches 9 as @e[type=minecraft:marker,tag=ps_shop] at @s unless data block ~ ~ ~ Items[{Slot:26b}] run scoreboard players set @s ps_payment_9 0

# Check if there a payment before and update counts:
execute if score @s ps_view_pg matches 9 as @e[type=minecraft:marker,tag=ps_shop] at @s if data block ~ ~ ~ Items[{Slot:26b}] store result score @s ps_payment_9 run data get block ~ ~ ~ Items[{Slot:26b}].Count