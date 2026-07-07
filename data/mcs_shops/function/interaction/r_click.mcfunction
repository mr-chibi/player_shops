#
execute as @e[type=minecraft:interaction,tag=mcs_shop,distance=0..5] at @s if data entity @s interaction.player as @p at @s run scoreboard players add @s mcs_rclick 1

# Right Click:
execute as @e[type=minecraft:interaction,tag=mcs_shop,distance=0..5] at @s if data entity @s interaction.player store result score @s mcs_rclick run data get entity @s interaction.player[0]
execute as @e[type=minecraft:interaction,tag=mcs_shop,distance=0..5] at @s if data entity @s interaction.player run data remove entity @s interaction

#
tellraw @s[scores={mcs_rclick=1..}] [{"text":"[Click to Purchase x Amount]","color":"green", "click_event":{"action":"suggest_command","command":"/trigger mcs_buy set "}}]

# Reset Right Click
scoreboard players set @s[scores={mcs_rclick=1..}] mcs_rclick 0