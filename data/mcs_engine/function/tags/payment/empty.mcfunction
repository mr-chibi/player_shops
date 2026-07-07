#
execute unless block ~ ~ ~ chest{Items:[{Slot:18b}]} run scoreboard players set @s mcs_payment_0 0
execute unless block ~ ~ ~ chest{Items:[{Slot:19b}]} run scoreboard players set @s mcs_payment_1 0
execute unless block ~ ~ ~ chest{Items:[{Slot:20b}]} run scoreboard players set @s mcs_payment_2 0
execute unless block ~ ~ ~ chest{Items:[{Slot:21b}]} run scoreboard players set @s mcs_payment_3 0
execute unless block ~ ~ ~ chest{Items:[{Slot:22b}]} run scoreboard players set @s mcs_payment_4 0
execute unless block ~ ~ ~ chest{Items:[{Slot:23b}]} run scoreboard players set @s mcs_payment_5 0
execute unless block ~ ~ ~ chest{Items:[{Slot:24b}]} run scoreboard players set @s mcs_payment_6 0
execute unless block ~ ~ ~ chest{Items:[{Slot:25b}]} run scoreboard players set @s mcs_payment_7 0
execute unless block ~ ~ ~ chest{Items:[{Slot:26b}]} run scoreboard players set @s mcs_payment_8 0

#
execute unless block ~ ~ ~ chest{Items:[{Slot:18b}]} run data modify entity @s data.payment[0] set value {id:"minecraft:air", Count:0}
execute unless block ~ ~ ~ chest{Items:[{Slot:19b}]} run data modify entity @s data.payment[1] set value {id:"minecraft:air", Count:0}
execute unless block ~ ~ ~ chest{Items:[{Slot:20b}]} run data modify entity @s data.payment[2] set value {id:"minecraft:air", Count:0}
execute unless block ~ ~ ~ chest{Items:[{Slot:21b}]} run data modify entity @s data.payment[3] set value {id:"minecraft:air", Count:0}
execute unless block ~ ~ ~ chest{Items:[{Slot:22b}]} run data modify entity @s data.payment[4] set value {id:"minecraft:air", Count:0}
execute unless block ~ ~ ~ chest{Items:[{Slot:23b}]} run data modify entity @s data.payment[5] set value {id:"minecraft:air", Count:0}
execute unless block ~ ~ ~ chest{Items:[{Slot:24b}]} run data modify entity @s data.payment[6] set value {id:"minecraft:air", Count:0}
execute unless block ~ ~ ~ chest{Items:[{Slot:25b}]} run data modify entity @s data.payment[7] set value {id:"minecraft:air", Count:0}
execute unless block ~ ~ ~ chest{Items:[{Slot:26b}]} run data modify entity @s data.payment[8] set value {id:"minecraft:air", Count:0}