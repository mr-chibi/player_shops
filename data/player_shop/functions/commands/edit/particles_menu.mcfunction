###########################################################################################
# Particles [Menu]:
###########################################################################################
execute as @p at @s run tellraw @s [{"text": "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=", "color": "#FFFFFF"}]
execute as @p at @s run tellraw @s [{"selector": "@p", "color": "#FF2682"}, {"text": "'s, ", "color": "#FF2682"}, {"text": "Shop Customization:", "color": "#FFDB26"}]
execute as @p at @s run tellraw @s [{"text": "=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=", "color": "#FFFFFF"}]
execute as @p at @s run tellraw @s [{"text": ""}]


###########################################################################################
# Shop Active Particles:
###########################################################################################
execute as @s[nbt={data:{particles:"end_rod"}}] run tellraw @p [{"text": "[Active Particle]:", "color": "green", "bold":true}, {"text":" "}, {"text":"End Rod", "color":"#BF82FF", "bold":false}]
execute as @s[nbt={data:{particles:"firework"}}] run tellraw @p [{"text": "[Active Particle]:", "color": "green", "bold":true}, {"text":" "}, {"text":"Firework", "color":"#BF82FF", "bold":false}]
execute as @s[nbt={data:{particles:"happy_villager"}}] run tellraw @p [{"text": "[Active Particle]:", "color": "green", "bold":true}, {"text":" "}, {"text":"Happy Villager", "color":"#BF82FF", "bold":false}]
execute as @s[nbt={data:{particles:"portal"}}] run tellraw @p [{"text": "[Active Particle]:", "color": "green", "bold":true}, {"text":" "}, {"text":"Portal", "color":"#BF82FF", "bold":false}]
execute as @s[nbt={data:{particles:"snowflake"}}] run tellraw @p [{"text": "[Active Particle]:", "color": "green", "bold":true}, {"text":" "}, {"text":"Snowflake", "color":"#BF82FF", "bold":false}]


###########################################################################################
# Shop Customization Options:
###########################################################################################
execute as @s[nbt=!{data:{particles:"end_rod"}}] run tellraw @p [{"text":"[End Rod]", "color":"aqua", "clickEvent":{"action":"run_command","value":"/trigger ps_particles set 2"}}]
execute as @s[nbt=!{data:{particles:"firework"}}] run tellraw @p [{"text":"[Firework]", "color":"aqua", "clickEvent":{"action":"run_command","value":"/trigger ps_particles set 3"}}]
execute as @s[nbt=!{data:{particles:"happy_villager"}}] run tellraw @p [{"text":"[Happy Villager]", "color":"aqua", "clickEvent":{"action":"run_command","value":"/trigger ps_particles set 4"}}]
execute as @s[nbt=!{data:{particles:"portal"}}] run tellraw @p [{"text":"[Portal]", "color":"aqua", "clickEvent":{"action":"run_command","value":"/trigger ps_particles set 5"}}]
execute as @s[nbt=!{data:{particles:"snowflake"}}] run tellraw @p [{"text":"[Snowflake]", "color":"aqua", "clickEvent":{"action":"run_command","value":"/trigger ps_particles set 6"}}]


###########################################################################################
# Shop [Disable] / [Save & Reload]:
###########################################################################################
tellraw @p [{"text":"\n\n[Disable Particles]", "color":"red", "clickEvent":{"action":"run_command","value":"/trigger ps_particles set 1"}}, {"text": " | ", "color": "#FFFFFF"}, {"text":"[Save & Reload]", "color":"green", "clickEvent":{"action":"run_command","value":"/trigger ps_edit"}}]