# Buy Amount:
$execute store result entity @e[type=minecraft:interaction,tag=mcs_shop,distance=0..5,limit=1] data.buy[$(page)].amount int 1 run scoreboard players get @s mcs_buy
$execute store result entity @e[type=minecraft:interaction,tag=mcs_shop,distance=0..5,limit=1] data.sell[$(page)].amount int 1 run scoreboard players get @s mcs_buy

#
$function mcs_shops:commands/buy/single with entity @e[type=minecraft:interaction,tag=mcs_shop,distance=0..5,limit=1] data.buy[$(page)]
$function mcs_shops:commands/buy/multiple with entity @e[type=minecraft:interaction,tag=mcs_shop,distance=0..5,limit=1] data.buy[$(page)]

#
$execute as @e[type=minecraft:interaction,tag=mcs_shop,distance=0..5] at @s store result block ~ ~ ~ Items[$(page)].count int 1 run scoreboard players get @s mcs_amount