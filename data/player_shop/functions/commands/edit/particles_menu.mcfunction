###########################################################################################
# Particles [Menu]:
###########################################################################################
tellraw @s [{"text": "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=", "color": "#FFFFFF"}]
tellraw @s [{"selector": "@s", "color": "#FF2682"}, {"text": "'s, ", "color": "#FF2682"}, {"text": "Shop Customization:", "color": "#FFDB26"}]
tellraw @s [{"text": "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=", "color": "#FFFFFF"}]
tellraw @s [{"text": ""}]


###########################################################################################
# Shop Active Particles:
###########################################################################################
execute if data entity @e[type=minecraft:marker,tag=ps_shop,sort=nearest,limit=1,distance=0..2] {data:{particles:"end_rod"}} run tellraw @s [{"text": "[Active Particle]:", "color": "green", "bold":true}, {"text":" "}, {"text":"End Rod", "color":"#BF82FF", "bold":false}]
execute if data entity @e[type=minecraft:marker,tag=ps_shop,sort=nearest,limit=1,distance=0..2] {data:{particles:"firework"}} run tellraw @s [{"text": "[Active Particle]:", "color": "green", "bold":true}, {"text":" "}, {"text":"Firework", "color":"#BF82FF", "bold":false}]
execute if data entity @e[type=minecraft:marker,tag=ps_shop,sort=nearest,limit=1,distance=0..2] {data:{particles:"happy_villager"}} run tellraw @s [{"text": "[Active Particle]:", "color": "green", "bold":true}, {"text":" "}, {"text":"Happy Villager", "color":"#BF82FF", "bold":false}]
execute if data entity @e[type=minecraft:marker,tag=ps_shop,sort=nearest,limit=1,distance=0..2] {data:{particles:"portal"}} run tellraw @s [{"text": "[Active Particle]:", "color": "green", "bold":true}, {"text":" "}, {"text":"Portal", "color":"#BF82FF", "bold":false}]
execute if data entity @e[type=minecraft:marker,tag=ps_shop,sort=nearest,limit=1,distance=0..2] {data:{particles:"snowflake"}} run tellraw @s [{"text": "[Active Particle]:", "color": "green", "bold":true}, {"text":" "}, {"text":"Snowflake", "color":"#BF82FF", "bold":false}]


###########################################################################################
# Shop Customization Options:
###########################################################################################
execute unless data entity @e[type=minecraft:marker,tag=ps_shop,sort=nearest,limit=1,distance=0..2] {data:{particles:"end_rod"}} run tellraw @s [{"text":"[End Rod]", "color":"aqua", "clickEvent":{"action":"run_command","value":"/trigger ps_particles set 2"}}]
execute unless data entity @e[type=minecraft:marker,tag=ps_shop,sort=nearest,limit=1,distance=0..2] {data:{particles:"firework"}} run tellraw @s [{"text":"[Firework]", "color":"aqua", "clickEvent":{"action":"run_command","value":"/trigger ps_particles set 3"}}]
execute unless data entity @e[type=minecraft:marker,tag=ps_shop,sort=nearest,limit=1,distance=0..2] {data:{particles:"happy_villager"}} run tellraw @s [{"text":"[Happy Villager]", "color":"aqua", "clickEvent":{"action":"run_command","value":"/trigger ps_particles set 4"}}]
execute unless data entity @e[type=minecraft:marker,tag=ps_shop,sort=nearest,limit=1,distance=0..2] {data:{particles:"portal"}} run tellraw @s [{"text":"[Portal]", "color":"aqua", "clickEvent":{"action":"run_command","value":"/trigger ps_particles set 5"}}]
execute unless data entity @e[type=minecraft:marker,tag=ps_shop,sort=nearest,limit=1,distance=0..2] {data:{particles:"snowflake"}} run tellraw @s [{"text":"[Snowflake]", "color":"aqua", "clickEvent":{"action":"run_command","value":"/trigger ps_particles set 6"}}]


###########################################################################################
# Shop [Disable] / [Save & Reload]:
###########################################################################################
tellraw @s [{"text":"\n\n[Disable Particles]", "color":"red", "clickEvent":{"action":"run_command","value":"/trigger ps_particles set 1"}}, {"text": " | ", "color": "#FFFFFF"}, {"text":"[Save & Reload]", "color":"green", "clickEvent":{"action":"run_command","value":"/trigger ps_edit"}}]