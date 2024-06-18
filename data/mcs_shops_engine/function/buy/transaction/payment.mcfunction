# Update [UI] of [Gray Stained Glass Pane] Icon to [Buy Icon]:
$execute if score @p[tag=mcs_has_block] mcs_pages matches 0 if data block ~ ~ ~ Items[{Slot:18b, id:"minecraft:gray_stained_glass_pane"}] run data modify block ~ ~ ~ Items[{Slot:18b}].id set value "$(id)"
$execute if score @p[tag=mcs_has_block] mcs_pages matches 1 if data block ~ ~ ~ Items[{Slot:19b, id:"minecraft:gray_stained_glass_pane"}] run data modify block ~ ~ ~ Items[{Slot:19b}].id set value "$(id)"
$execute if score @p[tag=mcs_has_block] mcs_pages matches 2 if data block ~ ~ ~ Items[{Slot:20b, id:"minecraft:gray_stained_glass_pane"}] run data modify block ~ ~ ~ Items[{Slot:20b}].id set value "$(id)"
$execute if score @p[tag=mcs_has_block] mcs_pages matches 3 if data block ~ ~ ~ Items[{Slot:21b, id:"minecraft:gray_stained_glass_pane"}] run data modify block ~ ~ ~ Items[{Slot:21b}].id set value "$(id)"
$execute if score @p[tag=mcs_has_block] mcs_pages matches 4 if data block ~ ~ ~ Items[{Slot:22b, id:"minecraft:gray_stained_glass_pane"}] run data modify block ~ ~ ~ Items[{Slot:22b}].id set value "$(id)"
$execute if score @p[tag=mcs_has_block] mcs_pages matches 5 if data block ~ ~ ~ Items[{Slot:23b, id:"minecraft:gray_stained_glass_pane"}] run data modify block ~ ~ ~ Items[{Slot:23b}].id set value "$(id)"
$execute if score @p[tag=mcs_has_block] mcs_pages matches 6 if data block ~ ~ ~ Items[{Slot:24b, id:"minecraft:gray_stained_glass_pane"}] run data modify block ~ ~ ~ Items[{Slot:24b}].id set value "$(id)"
$execute if score @p[tag=mcs_has_block] mcs_pages matches 7 if data block ~ ~ ~ Items[{Slot:25b, id:"minecraft:gray_stained_glass_pane"}] run data modify block ~ ~ ~ Items[{Slot:25b}].id set value "$(id)"
$execute if score @p[tag=mcs_has_block] mcs_pages matches 8 if data block ~ ~ ~ Items[{Slot:26b, id:"minecraft:gray_stained_glass_pane"}] run data modify block ~ ~ ~ Items[{Slot:26b}].id set value "$(id)"

# Store Payment [Slot]:
execute if score @p[tag=mcs_has_block] mcs_pages matches 0 store result score @s mcs_payments run data get block ~ ~ ~ Items[{Slot:9b}].count
execute if score @p[tag=mcs_has_block] mcs_pages matches 1 store result score @s mcs_payments run data get block ~ ~ ~ Items[{Slot:10b}].count
execute if score @p[tag=mcs_has_block] mcs_pages matches 2 store result score @s mcs_payments run data get block ~ ~ ~ Items[{Slot:11b}].count
execute if score @p[tag=mcs_has_block] mcs_pages matches 3 store result score @s mcs_payments run data get block ~ ~ ~ Items[{Slot:12b}].count
execute if score @p[tag=mcs_has_block] mcs_pages matches 4 store result score @s mcs_payments run data get block ~ ~ ~ Items[{Slot:13b}].count
execute if score @p[tag=mcs_has_block] mcs_pages matches 5 store result score @s mcs_payments run data get block ~ ~ ~ Items[{Slot:14b}].count
execute if score @p[tag=mcs_has_block] mcs_pages matches 6 store result score @s mcs_payments run data get block ~ ~ ~ Items[{Slot:15b}].count
execute if score @p[tag=mcs_has_block] mcs_pages matches 7 store result score @s mcs_payments run data get block ~ ~ ~ Items[{Slot:16b}].count
execute if score @p[tag=mcs_has_block] mcs_pages matches 8 store result score @s mcs_payments run data get block ~ ~ ~ Items[{Slot:17b}].count

# Calculate [Buy * <Player Amount>]:
execute if score @p[tag=mcs_has_block] mcs_pages matches 0 run scoreboard players operation @s mcs_payments *= @p mcs_buy
execute if score @p[tag=mcs_has_block] mcs_pages matches 1 run scoreboard players operation @s mcs_payments *= @p mcs_buy
execute if score @p[tag=mcs_has_block] mcs_pages matches 2 run scoreboard players operation @s mcs_payments *= @p mcs_buy
execute if score @p[tag=mcs_has_block] mcs_pages matches 3 run scoreboard players operation @s mcs_payments *= @p mcs_buy
execute if score @p[tag=mcs_has_block] mcs_pages matches 4 run scoreboard players operation @s mcs_payments *= @p mcs_buy
execute if score @p[tag=mcs_has_block] mcs_pages matches 5 run scoreboard players operation @s mcs_payments *= @p mcs_buy
execute if score @p[tag=mcs_has_block] mcs_pages matches 6 run scoreboard players operation @s mcs_payments *= @p mcs_buy
execute if score @p[tag=mcs_has_block] mcs_pages matches 7 run scoreboard players operation @s mcs_payments *= @p mcs_buy
execute if score @p[tag=mcs_has_block] mcs_pages matches 8 run scoreboard players operation @s mcs_payments *= @p mcs_buy

# Get [Payment Slots]
execute if score @p[tag=mcs_has_block] mcs_pages matches 0 store result score @s mcs_payments_slot_0 run data get block ~ ~ ~ Items[{Slot:18b}].count
execute if score @p[tag=mcs_has_block] mcs_pages matches 1 store result score @s mcs_payments_slot_1 run data get block ~ ~ ~ Items[{Slot:19b}].count
execute if score @p[tag=mcs_has_block] mcs_pages matches 2 store result score @s mcs_payments_slot_2 run data get block ~ ~ ~ Items[{Slot:20b}].count
execute if score @p[tag=mcs_has_block] mcs_pages matches 3 store result score @s mcs_payments_slot_3 run data get block ~ ~ ~ Items[{Slot:21b}].count
execute if score @p[tag=mcs_has_block] mcs_pages matches 4 store result score @s mcs_payments_slot_4 run data get block ~ ~ ~ Items[{Slot:22b}].count
execute if score @p[tag=mcs_has_block] mcs_pages matches 5 store result score @s mcs_payments_slot_5 run data get block ~ ~ ~ Items[{Slot:23b}].count
execute if score @p[tag=mcs_has_block] mcs_pages matches 6 store result score @s mcs_payments_slot_6 run data get block ~ ~ ~ Items[{Slot:24b}].count
execute if score @p[tag=mcs_has_block] mcs_pages matches 7 store result score @s mcs_payments_slot_7 run data get block ~ ~ ~ Items[{Slot:25b}].count
execute if score @p[tag=mcs_has_block] mcs_pages matches 8 store result score @s mcs_payments_slot_8 run data get block ~ ~ ~ Items[{Slot:26b}].count

# Calculate [Payment Slots] + [Players Purchase Cost]:
execute if score @p[tag=mcs_has_block] mcs_pages matches 0 run scoreboard players operation @s mcs_payments_slot_0 += @s mcs_payments
execute if score @p[tag=mcs_has_block] mcs_pages matches 1 run scoreboard players operation @s mcs_payments_slot_1 += @s mcs_payments
execute if score @p[tag=mcs_has_block] mcs_pages matches 2 run scoreboard players operation @s mcs_payments_slot_2 += @s mcs_payments
execute if score @p[tag=mcs_has_block] mcs_pages matches 3 run scoreboard players operation @s mcs_payments_slot_3 += @s mcs_payments
execute if score @p[tag=mcs_has_block] mcs_pages matches 4 run scoreboard players operation @s mcs_payments_slot_4 += @s mcs_payments
execute if score @p[tag=mcs_has_block] mcs_pages matches 5 run scoreboard players operation @s mcs_payments_slot_5 += @s mcs_payments
execute if score @p[tag=mcs_has_block] mcs_pages matches 6 run scoreboard players operation @s mcs_payments_slot_6 += @s mcs_payments
execute if score @p[tag=mcs_has_block] mcs_pages matches 7 run scoreboard players operation @s mcs_payments_slot_7 += @s mcs_payments
execute if score @p[tag=mcs_has_block] mcs_pages matches 8 run scoreboard players operation @s mcs_payments_slot_8 += @s mcs_payments

# Update Payments:
execute if score @p[tag=mcs_has_block] mcs_pages matches 0 store result block ~ ~ ~ Items[{Slot:18b}].count int 1 run scoreboard players get @s mcs_payments_slot_0
execute if score @p[tag=mcs_has_block] mcs_pages matches 1 store result block ~ ~ ~ Items[{Slot:19b}].count int 1 run scoreboard players get @s mcs_payments_slot_1
execute if score @p[tag=mcs_has_block] mcs_pages matches 2 store result block ~ ~ ~ Items[{Slot:20b}].count int 1 run scoreboard players get @s mcs_payments_slot_2
execute if score @p[tag=mcs_has_block] mcs_pages matches 3 store result block ~ ~ ~ Items[{Slot:21b}].count int 1 run scoreboard players get @s mcs_payments_slot_3
execute if score @p[tag=mcs_has_block] mcs_pages matches 4 store result block ~ ~ ~ Items[{Slot:22b}].count int 1 run scoreboard players get @s mcs_payments_slot_4
execute if score @p[tag=mcs_has_block] mcs_pages matches 5 store result block ~ ~ ~ Items[{Slot:23b}].count int 1 run scoreboard players get @s mcs_payments_slot_5
execute if score @p[tag=mcs_has_block] mcs_pages matches 6 store result block ~ ~ ~ Items[{Slot:24b}].count int 1 run scoreboard players get @s mcs_payments_slot_6
execute if score @p[tag=mcs_has_block] mcs_pages matches 7 store result block ~ ~ ~ Items[{Slot:25b}].count int 1 run scoreboard players get @s mcs_payments_slot_7
execute if score @p[tag=mcs_has_block] mcs_pages matches 8 store result block ~ ~ ~ Items[{Slot:26b}].count int 1 run scoreboard players get @s mcs_payments_slot_8

# Reset [Scoreboard]:
execute if score @p[tag=mcs_has_block] mcs_pages matches 0 run scoreboard players set @p mcs_payments 0
execute if score @p[tag=mcs_has_block] mcs_pages matches 1 run scoreboard players set @p mcs_payments 0
execute if score @p[tag=mcs_has_block] mcs_pages matches 2 run scoreboard players set @p mcs_payments 0
execute if score @p[tag=mcs_has_block] mcs_pages matches 3 run scoreboard players set @p mcs_payments 0
execute if score @p[tag=mcs_has_block] mcs_pages matches 4 run scoreboard players set @p mcs_payments 0
execute if score @p[tag=mcs_has_block] mcs_pages matches 5 run scoreboard players set @p mcs_payments 0
execute if score @p[tag=mcs_has_block] mcs_pages matches 6 run scoreboard players set @p mcs_payments 0
execute if score @p[tag=mcs_has_block] mcs_pages matches 7 run scoreboard players set @p mcs_payments 0
execute if score @p[tag=mcs_has_block] mcs_pages matches 8 run scoreboard players set @p mcs_payments 0