######################################################
# "Tag" Shop Owner Rules:
######################################################

# Change "Player's" Gamemode to "survival", If "Player" Distance is "0-2" Near "Their Shop" & Remove their "Guest" Tag:
gamemode survival @s[scores={ps_distance=0..2},tag=ps_owner,team=!ps_admin]
execute if score @s ps_id = @e[type=minecraft:marker,tag=ps_shop,sort=nearest,limit=1] ps_id run tag @s[tag=ps_guest,scores={ps_distance=0..2}] remove ps_guest


# Change "Player's" Gamemode to "adventure", If "Player" Distance is "3-8" Near Another "Player's Shop" & Remove their "Owner" Tag:
gamemode adventure @s[scores={ps_distance=3..8},tag=ps_owner,team=!ps_admin]
execute unless score @s ps_id = @e[type=minecraft:marker,tag=ps_shop,sort=nearest,limit=1] ps_id run tag @s[tag=ps_owner,scores={ps_distance=2..6}] remove ps_owner

######################################################
# "DEFAULT" Tag Rules:
# Change "Player's" Gamemode back to adventure, If "Player's" Distance is "0-8":
######################################################
gamemode adventure @s[scores={ps_distance=0..8},tag=ps_guest,team=!ps_admin]

# Change "Player's" Gamemode back to survival, If "Player's" Distance is "9":
gamemode survival @s[scores={ps_distance=9},tag=!ps_owner]
scoreboard players reset @s[scores={ps_distance=9},tag=!ps_owner,tag=!ps_guest] ps_distance