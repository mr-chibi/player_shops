########################################################################################
# Commands #
########################################################################################

# Enable Commands:
execute as @a at @s run scoreboard players enable @s ps_create
execute as @a at @s run scoreboard players enable @s ps_remove

# Create Shop:
execute as @a at @s[scores={ps_create=1}] run function player_shop:commands/create_shop
execute as @a at @s[scores={ps_remove=1}] run function player_shop:commands/remove_shop

# Add UUID to scoreboard:
execute as @a at @s store result score @s ps_owner run data get entity @s UUID[0]


########################################################################################
# Functions #
########################################################################################

# Shop Functions:
execute as @a at @s run execute as @e[type=minecraft:villager,tag=player_shop,distance=0..5] at @s run function player_shop:shop/gui_update
execute as @a at @s run execute as @e[type=minecraft:villager,tag=player_shop,distance=0..5] at @s run function player_shop:shop/uses
execute as @a at @s run execute as @e[type=minecraft:villager,tag=player_shop,distance=0..5] at @s run function player_shop:shop/nbt

# Display Shop Name:
execute as @a at @s if entity @e[type=minecraft:villager,tag=player_shop,distance=0..5] run function player_shop:shop/message


# Gamemode Functionallity:
function player_shop:security/gamemode


# Display GUI for shop Owners:
execute as @a at @s run execute as @e[type=minecraft:villager,tag=player_shop,distance=0..2] at @s if score @p ps_owner = @s ps_id run data modify block ~ ~-1 ~ Lock set value ""
execute as @a at @s run execute as @e[type=minecraft:villager,tag=player_shop,distance=0..2] at @s if score @p ps_owner = @s ps_id run data modify block ~ ~-2 ~ Lock set value ""
execute as @a at @s run execute as @e[type=minecraft:villager,tag=player_shop,distance=0..5] at @s unless score @p ps_owner = @s ps_id run data modify block ~ ~-1 ~ Lock set value "ps_key"
execute as @a at @s run execute as @e[type=minecraft:villager,tag=player_shop,distance=0..5] at @s unless score @p ps_owner = @s ps_id run data modify block ~ ~-2 ~ Lock set value "ps_key"


# Reset Scoreboards:
execute as @a at @s[scores={ps_trade_success=1..}] run scoreboard players set @s ps_trade_success 0
execute as @a at @s[scores={ps_gui=1..}] run scoreboard players set @s ps_gui 0

