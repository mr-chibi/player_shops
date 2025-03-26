# Enable Commands Permissions:
function mcs_guest_shops:scoreboards/commands/enable

# Shop Related [Help/Create/Buy] Commands:
execute if score @s mcs_help matches 1.. run function mcs_guest_shops:commands/help/init
execute if score @s mcs_create matches 1.. run function mcs_guest_shops:commands/create/init
execute if score @s mcs_buy matches 1.. run function mcs_shops_engine:buy/init

# Chests [Greeting/Particles]:
execute as @e[type=minecraft:marker,distance=0..5,sort=nearest,limit=1,tag=mcs_shops] at @s run function mcs_shops_engine:inventory/sell/slots
execute as @e[type=minecraft:marker,distance=0..5,sort=nearest,limit=1,tag=mcs_shops] at @s run function mcs_shops_engine:inventory/buy/slots
execute as @e[type=minecraft:marker,distance=0..5,sort=nearest,limit=1,tag=mcs_shops] at @s run function mcs_shops_engine:inventory/payments/slots

# Chests [Greeting/Particles/Clearing/Gamemodes]:
function mcs_shops_engine:tags/greeting
function mcs_shops_engine:tags/particles
function mcs_shops_engine:tags/clear
function mcs_shops_engine:tags/gamemodes
function mcs_shops_engine:tags/closed

# Chests [GUI] Pages:
function mcs_shops_engine:tags/pages

# Chests [Interactions/Pages] "Open":
execute if score @s mcs_pages_prev matches 1.. if entity @e[type=minecraft:marker,distance=0..5,sort=nearest,tag=mcs_shops,nbt={data:{"shop_status":"open"}},limit=1] run function mcs_shops_engine:tags/interaction
execute if score @s mcs_pages_next matches 1.. if entity @e[type=minecraft:marker,distance=0..5,sort=nearest,tag=mcs_shops,nbt={data:{"shop_status":"open"}},limit=1] run function mcs_shops_engine:tags/interaction
execute if score @s mcs_chest_interaction matches 1.. if entity @e[type=minecraft:marker,distance=0..5,sort=nearest,tag=mcs_shops,nbt={data:{"shop_status":"open"}},limit=1] run function mcs_shops_engine:tags/interaction

# Chests [Interactions/Pages] "Closed":
execute if score @s mcs_chest_interaction matches 1.. if entity @e[type=minecraft:marker,distance=0..5,sort=nearest,tag=mcs_shops,nbt={data:{"shop_status":"closed"}},limit=1] run scoreboard players set @s mcs_chest_interaction 0

# Admin Shop [Unlimited]:
execute as @e[type=minecraft:marker,distance=0..5,sort=nearest,tag=mcs_shops,tag=mcs_unlimited,limit=1] at @s run function mcs_admin_shops:tags/unlimited