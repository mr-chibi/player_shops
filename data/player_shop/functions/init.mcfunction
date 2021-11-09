########################################################################################
# Enabled Commands #
########################################################################################
execute as @a at @s run scoreboard players enable @s ps_create
execute as @a at @s run scoreboard players enable @s ps_remove
execute as @a at @s run scoreboard players enable @s ps_icon
execute as @a at @s run scoreboard players enable @s ps_job
execute as @a at @s run scoreboard players enable @s ps_type
execute as @a at @s run scoreboard players enable @s ps_help

# Enable Buy Commands:
execute as @a at @s run scoreboard players enable @s ps_buy_0
execute as @a at @s run scoreboard players enable @s ps_buy_1
execute as @a at @s run scoreboard players enable @s ps_buy_2

# Add UUID to scoreboard:
execute as @a at @s store result score @s ps_owner run data get entity @s UUID[0]


########################################################################################
# Commands #
########################################################################################
execute as @a at @s[scores={ps_create=1}] run function player_shop:commands/create_shop
execute as @a at @s[scores={ps_remove=1}] run function player_shop:commands/remove_shop
execute as @a at @s[scores={ps_icon=1}] run function player_shop:commands/icon
execute as @a at @s[scores={ps_job=1..}] run function player_shop:commands/job
execute as @a at @s[scores={ps_type=1..}] run function player_shop:commands/type
execute as @a at @s[scores={ps_help=1..}] run function player_shop:commands/help


########################################################################################
# Error Handling if Shop Owner Deny shopping: #
########################################################################################
execute as @a at @s run execute as @e[type=minecraft:villager,tag=player_shop,distance=0..5] at @s unless score @p ps_owner = @s ps_id run execute as @p at @s[scores={ps_buy_0=1..}] run function player_shop:error/buy
execute as @a at @s run execute as @e[type=minecraft:villager,tag=player_shop,distance=0..5] at @s unless score @p ps_owner = @s ps_id run execute as @p at @s[scores={ps_buy_1=1..}] run function player_shop:error/buy
execute as @a at @s run execute as @e[type=minecraft:villager,tag=player_shop,distance=0..5] at @s unless score @p ps_owner = @s ps_id run execute as @p at @s[scores={ps_buy_2=1..}] run function player_shop:error/buy


########################################################################################
# Buying Items If not shop owner! #
########################################################################################
execute as @a at @s run execute as @e[type=minecraft:villager,tag=player_shop,distance=0..5] at @s if score @p ps_owner = @s ps_id run execute as @p at @s[scores={ps_buy_0=1..}] run function player_shop:commands/buy_0
execute as @a at @s run execute as @e[type=minecraft:villager,tag=player_shop,distance=0..5] at @s if score @p ps_owner = @s ps_id run execute as @p at @s[scores={ps_buy_1=1..}] run function player_shop:commands/buy_1
execute as @a at @s run execute as @e[type=minecraft:villager,tag=player_shop,distance=0..5] at @s if score @p ps_owner = @s ps_id run execute as @p at @s[scores={ps_buy_2=1..}] run function player_shop:commands/buy_2


########################################################################################
# Shop Functions #
########################################################################################
execute as @a at @s run execute as @e[type=minecraft:villager,tag=player_shop,distance=0..5] at @s run function player_shop:shop/gui_update
execute as @a at @s run execute as @e[type=minecraft:villager,tag=player_shop,distance=0..5] at @s run function player_shop:shop/uses
execute as @a at @s run execute as @e[type=minecraft:villager,tag=player_shop,distance=0..5] at @s run function player_shop:shop/nbt
execute as @a at @s run execute as @e[type=minecraft:villager,tag=player_shop,distance=0..5] at @s run function player_shop:shop/trade

# Display Shop Name:
execute as @a at @s if entity @e[type=minecraft:villager,tag=player_shop,distance=0..5] run function player_shop:shop/message

# Gamemode Functionallity:
function player_shop:security/gamemode
function player_shop:security/lock

# Reset Scoreboards:
execute as @a at @s[scores={ps_trade_success=1..}] run scoreboard players set @s ps_trade_success 0
execute as @a at @s[scores={ps_gui=1..}] run scoreboard players set @s ps_gui 0
