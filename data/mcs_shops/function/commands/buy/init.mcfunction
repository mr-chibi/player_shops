# Do Something:
function mcs_shops:commands/buy/inspect with entity @e[type=minecraft:interaction,tag=mcs_shop,distance=0..5,limit=1] data

# Reset Command:
scoreboard players set @s[scores={mcs_buy=1..}] mcs_buy 0