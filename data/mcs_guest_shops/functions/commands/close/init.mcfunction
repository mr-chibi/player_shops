# Allow Command [Lock Shop]:
execute as @e[type=minecraft:marker,distance=0..5,sort=nearest,tag=mcs_shops] at @s if score @s mcs_ids = @p mcs_ids run function mcs_guest_shops:commands/close/lock

# Reset Command:
scoreboard players set @s[scores={mcs_close=1..}] mcs_close 0