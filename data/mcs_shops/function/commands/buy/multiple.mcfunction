###############################################################
# Successfully [Multi] Purchase:
###############################################################
$execute if data entity @s[scores={mcs_lclick=0}] Inventory[{id:"$(id)"}] if score @s mcs_buy matches 1..64 if score @s mcs_buy <= @e[type=minecraft:interaction,tag=mcs_shop,distance=0..5,limit=1] mcs_slot_0 run tag @s add mcs_multi_purchase
$execute if data entity @s[scores={mcs_lclick=1}] Inventory[{id:"$(id)"}] if score @s mcs_buy matches 1..64 if score @s mcs_buy <= @e[type=minecraft:interaction,tag=mcs_shop,distance=0..5,limit=1] mcs_slot_1 run tag @s add mcs_multi_purchase
$execute if data entity @s[scores={mcs_lclick=2}] Inventory[{id:"$(id)"}] if score @s mcs_buy matches 1..64 if score @s mcs_buy <= @e[type=minecraft:interaction,tag=mcs_shop,distance=0..5,limit=1] mcs_slot_2 run tag @s add mcs_multi_purchase
$execute if data entity @s[scores={mcs_lclick=3}] Inventory[{id:"$(id)"}] if score @s mcs_buy matches 1..64 if score @s mcs_buy <= @e[type=minecraft:interaction,tag=mcs_shop,distance=0..5,limit=1] mcs_slot_3 run tag @s add mcs_multi_purchase
$execute if data entity @s[scores={mcs_lclick=4}] Inventory[{id:"$(id)"}] if score @s mcs_buy matches 1..64 if score @s mcs_buy <= @e[type=minecraft:interaction,tag=mcs_shop,distance=0..5,limit=1] mcs_slot_4 run tag @s add mcs_multi_purchase
$execute if data entity @s[scores={mcs_lclick=5}] Inventory[{id:"$(id)"}] if score @s mcs_buy matches 1..64 if score @s mcs_buy <= @e[type=minecraft:interaction,tag=mcs_shop,distance=0..5,limit=1] mcs_slot_5 run tag @s add mcs_multi_purchase
$execute if data entity @s[scores={mcs_lclick=6}] Inventory[{id:"$(id)"}] if score @s mcs_buy matches 1..64 if score @s mcs_buy <= @e[type=minecraft:interaction,tag=mcs_shop,distance=0..5,limit=1] mcs_slot_6 run tag @s add mcs_multi_purchase
$execute if data entity @s[scores={mcs_lclick=7}] Inventory[{id:"$(id)"}] if score @s mcs_buy matches 1..64 if score @s mcs_buy <= @e[type=minecraft:interaction,tag=mcs_shop,distance=0..5,limit=1] mcs_slot_7 run tag @s add mcs_multi_purchase
$execute if data entity @s[scores={mcs_lclick=8}] Inventory[{id:"$(id)"}] if score @s mcs_buy matches 1..64 if score @s mcs_buy <= @e[type=minecraft:interaction,tag=mcs_shop,distance=0..5,limit=1] mcs_slot_8 run tag @s add mcs_multi_purchase

#
$clear @s[tag=mcs_multi_purchase] $(id) $(amount)

###############################################################
# Update Payment Id:
###############################################################
$execute if entity @s[tag=mcs_multi_purchase,scores={mcs_lclick=0}] as @e[type=minecraft:interaction,tag=mcs_shop,distance=0..5] at @s run data modify entity @s data.payment[0].id set value "$(id)"
$execute if entity @s[tag=mcs_multi_purchase,scores={mcs_lclick=1}] as @e[type=minecraft:interaction,tag=mcs_shop,distance=0..5] at @s run data modify entity @s data.payment[1].id set value "$(id)"
$execute if entity @s[tag=mcs_multi_purchase,scores={mcs_lclick=2}] as @e[type=minecraft:interaction,tag=mcs_shop,distance=0..5] at @s run data modify entity @s data.payment[2].id set value "$(id)"
$execute if entity @s[tag=mcs_multi_purchase,scores={mcs_lclick=3}] as @e[type=minecraft:interaction,tag=mcs_shop,distance=0..5] at @s run data modify entity @s data.payment[3].id set value "$(id)"
$execute if entity @s[tag=mcs_multi_purchase,scores={mcs_lclick=4}] as @e[type=minecraft:interaction,tag=mcs_shop,distance=0..5] at @s run data modify entity @s data.payment[4].id set value "$(id)"
$execute if entity @s[tag=mcs_multi_purchase,scores={mcs_lclick=5}] as @e[type=minecraft:interaction,tag=mcs_shop,distance=0..5] at @s run data modify entity @s data.payment[5].id set value "$(id)"
$execute if entity @s[tag=mcs_multi_purchase,scores={mcs_lclick=6}] as @e[type=minecraft:interaction,tag=mcs_shop,distance=0..5] at @s run data modify entity @s data.payment[6].id set value "$(id)"
$execute if entity @s[tag=mcs_multi_purchase,scores={mcs_lclick=7}] as @e[type=minecraft:interaction,tag=mcs_shop,distance=0..5] at @s run data modify entity @s data.payment[7].id set value "$(id)"
$execute if entity @s[tag=mcs_multi_purchase,scores={mcs_lclick=8}] as @e[type=minecraft:interaction,tag=mcs_shop,distance=0..5] at @s run data modify entity @s data.payment[8].id set value "$(id)"

###############################################################
# Update Payment Amount:
###############################################################
$execute if entity @s[tag=mcs_multi_purchase,scores={mcs_lclick=0}] as @e[type=minecraft:interaction,tag=mcs_shop,distance=0..5] at @s run scoreboard players add @s mcs_payment_0 $(amount)
$execute if entity @s[tag=mcs_multi_purchase,scores={mcs_lclick=1}] as @e[type=minecraft:interaction,tag=mcs_shop,distance=0..5] at @s run scoreboard players add @s mcs_payment_1 $(amount)
$execute if entity @s[tag=mcs_multi_purchase,scores={mcs_lclick=2}] as @e[type=minecraft:interaction,tag=mcs_shop,distance=0..5] at @s run scoreboard players add @s mcs_payment_2 $(amount)
$execute if entity @s[tag=mcs_multi_purchase,scores={mcs_lclick=3}] as @e[type=minecraft:interaction,tag=mcs_shop,distance=0..5] at @s run scoreboard players add @s mcs_payment_3 $(amount)
$execute if entity @s[tag=mcs_multi_purchase,scores={mcs_lclick=4}] as @e[type=minecraft:interaction,tag=mcs_shop,distance=0..5] at @s run scoreboard players add @s mcs_payment_4 $(amount)
$execute if entity @s[tag=mcs_multi_purchase,scores={mcs_lclick=5}] as @e[type=minecraft:interaction,tag=mcs_shop,distance=0..5] at @s run scoreboard players add @s mcs_payment_5 $(amount)
$execute if entity @s[tag=mcs_multi_purchase,scores={mcs_lclick=6}] as @e[type=minecraft:interaction,tag=mcs_shop,distance=0..5] at @s run scoreboard players add @s mcs_payment_6 $(amount)
$execute if entity @s[tag=mcs_multi_purchase,scores={mcs_lclick=7}] as @e[type=minecraft:interaction,tag=mcs_shop,distance=0..5] at @s run scoreboard players add @s mcs_payment_7 $(amount)
$execute if entity @s[tag=mcs_multi_purchase,scores={mcs_lclick=8}] as @e[type=minecraft:interaction,tag=mcs_shop,distance=0..5] at @s run scoreboard players add @s mcs_payment_8 $(amount)

###############################################################
# Update Payment Data:
###############################################################
execute if entity @s[scores={mcs_lclick=0}] as @e[type=minecraft:interaction,tag=mcs_shop,distance=0..5] at @s store result entity @s data.payment[0].Count int 1 run scoreboard players get @s mcs_payment_0
execute if entity @s[scores={mcs_lclick=1}] as @e[type=minecraft:interaction,tag=mcs_shop,distance=0..5] at @s store result entity @s data.payment[1].Count int 1 run scoreboard players get @s mcs_payment_1
execute if entity @s[scores={mcs_lclick=2}] as @e[type=minecraft:interaction,tag=mcs_shop,distance=0..5] at @s store result entity @s data.payment[2].Count int 1 run scoreboard players get @s mcs_payment_2
execute if entity @s[scores={mcs_lclick=3}] as @e[type=minecraft:interaction,tag=mcs_shop,distance=0..5] at @s store result entity @s data.payment[3].Count int 1 run scoreboard players get @s mcs_payment_3
execute if entity @s[scores={mcs_lclick=4}] as @e[type=minecraft:interaction,tag=mcs_shop,distance=0..5] at @s store result entity @s data.payment[4].Count int 1 run scoreboard players get @s mcs_payment_4
execute if entity @s[scores={mcs_lclick=5}] as @e[type=minecraft:interaction,tag=mcs_shop,distance=0..5] at @s store result entity @s data.payment[5].Count int 1 run scoreboard players get @s mcs_payment_5
execute if entity @s[scores={mcs_lclick=6}] as @e[type=minecraft:interaction,tag=mcs_shop,distance=0..5] at @s store result entity @s data.payment[6].Count int 1 run scoreboard players get @s mcs_payment_6
execute if entity @s[scores={mcs_lclick=7}] as @e[type=minecraft:interaction,tag=mcs_shop,distance=0..5] at @s store result entity @s data.payment[7].Count int 1 run scoreboard players get @s mcs_payment_7
execute if entity @s[scores={mcs_lclick=8}] as @e[type=minecraft:interaction,tag=mcs_shop,distance=0..5] at @s store result entity @s data.payment[8].Count int 1 run scoreboard players get @s mcs_payment_8


###############################################################
# Set Payment Data:
###############################################################
execute if entity @s[scores={mcs_lclick=0}] as @e[type=minecraft:interaction,tag=mcs_shop,distance=0..5] at @s run data modify block ~ ~ ~ Items[{Slot:18b}].id set from entity @s data.payment[0].id
execute if entity @s[scores={mcs_lclick=0}] as @e[type=minecraft:interaction,tag=mcs_shop,distance=0..5] at @s run data modify block ~ ~ ~ Items[{Slot:18b}].count set from entity @s data.payment[0].Count

#
execute if entity @s[scores={mcs_lclick=1}] as @e[type=minecraft:interaction,tag=mcs_shop,distance=0..5] at @s run data modify block ~ ~ ~ Items[{Slot:19b}].id set from entity @s data.payment[1].id
execute if entity @s[scores={mcs_lclick=1}] as @e[type=minecraft:interaction,tag=mcs_shop,distance=0..5] at @s run data modify block ~ ~ ~ Items[{Slot:19b}].count set from entity @s data.payment[1].Count

#
execute if entity @s[scores={mcs_lclick=2}] as @e[type=minecraft:interaction,tag=mcs_shop,distance=0..5] at @s run data modify block ~ ~ ~ Items[{Slot:20b}].id set from entity @s data.payment[2].id
execute if entity @s[scores={mcs_lclick=2}] as @e[type=minecraft:interaction,tag=mcs_shop,distance=0..5] at @s run data modify block ~ ~ ~ Items[{Slot:20b}].count set from entity @s data.payment[2].Count

#
execute if entity @s[scores={mcs_lclick=3}] as @e[type=minecraft:interaction,tag=mcs_shop,distance=0..5] at @s run data modify block ~ ~ ~ Items[{Slot:21b}].id set from entity @s data.payment[3].id
execute if entity @s[scores={mcs_lclick=3}] as @e[type=minecraft:interaction,tag=mcs_shop,distance=0..5] at @s run data modify block ~ ~ ~ Items[{Slot:21b}].count set from entity @s data.payment[3].Count

#
execute if entity @s[scores={mcs_lclick=4}] as @e[type=minecraft:interaction,tag=mcs_shop,distance=0..5] at @s run data modify block ~ ~ ~ Items[{Slot:22b}].id set from entity @s data.payment[4].id
execute if entity @s[scores={mcs_lclick=4}] as @e[type=minecraft:interaction,tag=mcs_shop,distance=0..5] at @s run data modify block ~ ~ ~ Items[{Slot:22b}].count set from entity @s data.payment[4].Count

#
execute if entity @s[scores={mcs_lclick=5}] as @e[type=minecraft:interaction,tag=mcs_shop,distance=0..5] at @s run data modify block ~ ~ ~ Items[{Slot:23b}].id set from entity @s data.payment[5].id
execute if entity @s[scores={mcs_lclick=5}] as @e[type=minecraft:interaction,tag=mcs_shop,distance=0..5] at @s run data modify block ~ ~ ~ Items[{Slot:23b}].count set from entity @s data.payment[5].Count

#
execute if entity @s[scores={mcs_lclick=6}] as @e[type=minecraft:interaction,tag=mcs_shop,distance=0..5] at @s run data modify block ~ ~ ~ Items[{Slot:24b}].id set from entity @s data.payment[6].id
execute if entity @s[scores={mcs_lclick=6}] as @e[type=minecraft:interaction,tag=mcs_shop,distance=0..5] at @s run data modify block ~ ~ ~ Items[{Slot:24b}].count set from entity @s data.payment[6].Count

#
execute if entity @s[scores={mcs_lclick=7}] as @e[type=minecraft:interaction,tag=mcs_shop,distance=0..5] at @s run data modify block ~ ~ ~ Items[{Slot:25b}].id set from entity @s data.payment[7].id
execute if entity @s[scores={mcs_lclick=7}] as @e[type=minecraft:interaction,tag=mcs_shop,distance=0..5] at @s run data modify block ~ ~ ~ Items[{Slot:25b}].count set from entity @s data.payment[7].Count

#
execute if entity @s[scores={mcs_lclick=8}] as @e[type=minecraft:interaction,tag=mcs_shop,distance=0..5] at @s run data modify block ~ ~ ~ Items[{Slot:26b}].id set from entity @s data.payment[8].id
execute if entity @s[scores={mcs_lclick=8}] as @e[type=minecraft:interaction,tag=mcs_shop,distance=0..5] at @s run data modify block ~ ~ ~ Items[{Slot:26b}].count set from entity @s data.payment[8].Count

# Update Inventory:
$execute if entity @s[tag=mcs_multi_purchase] as @e[type=minecraft:interaction,tag=mcs_shop,distance=0..5] at @s run scoreboard players remove @s mcs_amount $(amount)

# Update Block Count
execute if entity @s[tag=mcs_multi_purchase] as @e[type=minecraft:interaction,tag=mcs_shop,distance=0..5] at @s store result score @s mcs_amount run scoreboard players get @s mcs_amount

#
execute if entity @s[tag=mcs_multi_purchase] run function mcs_shops:commands/buy/multi/init with entity @e[type=minecraft:interaction,tag=mcs_shop,distance=0..5,limit=1] data