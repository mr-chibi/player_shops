# Allow Command [Unlock Shop]:
execute as @e[type=minecraft:marker,distance=0..5,sort=nearest,tag=mcs_shops] at @s if score @s mcs_ids = @p mcs_ids run function mcs_guest_shops:commands/open/unlock

# Reset Command:
scoreboard players set @s[scores={mcs_open=1..}] mcs_open 0