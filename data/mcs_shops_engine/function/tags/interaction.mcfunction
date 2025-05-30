# Toggle GUI:
function mcs_shops_engine:gui/init with entity @e[type=minecraft:marker,distance=0..5,sort=nearest,tag=mcs_shops,nbt={data:{"shop_status":"open"}},limit=1] data

# Pages Toggle:
scoreboard players add @s mcs_pages 0

# [Button] for suggested commands in chat:
tellraw @s [{"text":"\n[buy x1]","color":"#a3a3a3","click_event":{"action":"run_command","command":"/trigger mcs_buy set 1"}}, {"text": " | ", "color": "white"}, {"text":"[buy x3]","color":"#a3a3a3", "click_event":{"action":"run_command","command":"/trigger mcs_buy set 3"}}, {"text": " | ", "color": "white"}, {"text":"[buy x5]","color":"#a3a3a3", "click_event":{"action":"run_command","command":"/trigger mcs_buy set 5"}}, {"text": " | ", "color": "white"}, {"text":"[buy amount]","color":"#a3a3a3", "click_event":{"action":"suggest_command","command":"/trigger mcs_buy set "}}]

# Fetch Player's Viewing Page [Interactive GUI]:
function mcs_shops_engine:gui/page with entity @e[type=minecraft:marker,distance=0..5,sort=nearest,tag=mcs_shops,nbt={data:{"shop_status":"open"}},limit=1] data

# Player [Interactive GUI]:
tellraw @s [{"text":"[Previous]","color":"yellow","click_event":{"action":"run_command","command":"/trigger mcs_pages_prev"}}, {"text": " | ", "color": "white"}, {"text":"[Next]","color":"green", "click_event":{"action":"run_command","command":"/trigger mcs_pages_next"}}]

# Reset Command:
scoreboard players set @s[scores={mcs_chest_shift=1..}] mcs_chest_shift 0
scoreboard players set @s[scores={mcs_chest_interaction=1..}] mcs_chest_interaction 0
scoreboard players set @s[scores={mcs_pages_prev=1..}] mcs_pages_prev 0
scoreboard players set @s[scores={mcs_pages_next=1..}] mcs_pages_next 0