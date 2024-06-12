# Store Players [UUID] into scoreboard if Less than 6 blocks away:
execute if entity @e[type=minecraft:marker,distance=..6,sort=nearest,tag=mcs_shops,limit=1] store result score @s mcs_ids run data get entity @s UUID[0]

# Execute if player does "NOT" own shop set their gamemode to [Survival] if there in [Adventure]:
execute unless score @s mcs_ids = @e[type=minecraft:marker,distance=5..,sort=nearest,tag=mcs_shops,limit=1] mcs_ids run tag @s[tag=!mcs_gamemode_preventions] add mcs_gamemode_preventions
execute unless score @s mcs_ids = @e[type=minecraft:marker,distance=5..,sort=nearest,tag=mcs_shops,limit=1] mcs_ids run gamemode survival @s[gamemode=adventure]
execute unless score @s mcs_ids = @e[type=minecraft:marker,distance=5..,sort=nearest,tag=mcs_shops,limit=1] mcs_ids run tag @s[tag=mcs_gamemode_preventions] remove mcs_gamemode_preventions

# Execute if player does "NOT" own shop set their gamemode to [Adventure] if there in [Survival]:
execute unless score @s mcs_ids = @e[type=minecraft:marker,distance=..5,sort=nearest,tag=mcs_shops,limit=1] mcs_ids run gamemode adventure @s[gamemode=survival]