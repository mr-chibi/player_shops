# Toggle Msg for particles [Disabled/Enabled]:
execute if score shop_particles mcs_particles matches 0 run tellraw @s [{"text": "Shop Particles Enabled.", "color": "green"}]
execute if score shop_particles mcs_particles matches 3.. run tellraw @s [{"text": "Shop Particles Disabled.", "color": "red"}]

# Toggle particles [Disabled/Enabled]:
execute if score shop_particles mcs_particles matches 0..1 run scoreboard players add shop_particles mcs_particles 1
execute if score shop_particles mcs_particles matches 2.. run scoreboard players set shop_particles mcs_particles 0

# Reset [Command]:
scoreboard players set @s[scores={mcs_particles=1..}] mcs_particles 0