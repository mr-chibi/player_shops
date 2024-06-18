# Detect If there's "IS" Shop in distance of "5" then, Deny shop creation:
execute if entity @e[type=minecraft:marker,distance=..5,sort=nearest,tag=mcs_shops] run function mcs_guest_shops:commands/create/deny

# Detect If there's "NOT" Shop in distance of "5" then, Allow shop creation:
execute unless entity @e[type=minecraft:marker,distance=..5,sort=nearest,tag=mcs_shops] run function mcs_guest_shops:commands/create/allow

# Reset Command:
scoreboard players set @s[scores={mcs_create=1..}] mcs_create 0