# Deny Command:
execute as @e[type=minecraft:marker,distance=0..5,sort=nearest,tag=mcs_shops] at @s unless score @s mcs_ids = @p mcs_ids run function mcs_guest_shops:commands/remove/deny

# Allow Command:
execute as @e[type=minecraft:marker,distance=0..5,sort=nearest,tag=mcs_shops] at @s if score @s mcs_ids = @p mcs_ids run function mcs_guest_shops:commands/remove/allow

# Reset Command:
scoreboard players set @s[scores={mcs_remove=1..}] mcs_remove 0