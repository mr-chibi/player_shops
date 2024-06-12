# Shop Greeting: [Open/Closed]
execute as @e[type=minecraft:marker,distance=0..5,sort=nearest,tag=mcs_shops,nbt={data:{"shop_status":"open"}}] at @s run title @a[distance=0..5] actionbar [{"text": "Shop: ", "color": "white"}, {"entity": "@s", "nbt": "data.shop_owner", "interpret":true, "color": "green"}, {"text": "'s", "color": "green"}, {"text": " | ", "color": "white"}, {"text": "Status: ", "color": "white", "bold":false}, {"text": "Open", "color": "green"}]
execute as @e[type=minecraft:marker,distance=0..5,sort=nearest,tag=mcs_shops,nbt={data:{"shop_status":"closed"}}] at @s run title @a[distance=0..5] actionbar [{"text": "Shop: ", "color": "white"}, {"entity": "@s", "nbt": "data.shop_owner", "interpret":true, "color": "green"}, {"text": "'s", "color": "green"}, {"text": " | ", "color": "white"}, {"text": "Status: ", "color": "white", "bold":false}, {"text": "Closed", "color": "red"}]