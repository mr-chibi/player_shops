###########################################################################################
# Player Shop "Greeting" Message for, "Admins" When Visiting "Guests Shop":
###########################################################################################
execute if entity @e[type=minecraft:marker,tag=ps_shop,sort=nearest,distance=0..3,nbt={data:{ps_status:"unlock"}}] run title @s[scores={ps_distance=0..3},tag=ps_guest,team=ps_admin] actionbar [{"text": "[Admin] Shop ", "color": "#FF2682", "bold":true}, {"text": "Mode", "color": "white", "bold":false}]
execute if entity @e[type=minecraft:marker,tag=ps_shop,sort=nearest,distance=0..3,nbt={data:{ps_status:"lock"}}] run title @s[scores={ps_distance=0..3},tag=ps_guest,team=ps_admin] actionbar [{"text": "[Admin] Shop ", "color": "#FF2682", "bold":true}, {"text": "Mode", "color": "white", "bold":false}]

###########################################################################################
# Player Shop "Greeting" Message for, "Admins" When Visiting "Their Own Shop":
###########################################################################################
execute if entity @e[type=minecraft:marker,tag=ps_shop,sort=nearest,distance=0..3,nbt={data:{ps_status:"unlock"}}] run title @s[scores={ps_distance=0..3},tag=ps_owner,team=ps_admin] actionbar [{"text": "[Admin] Shop ", "color": "#FF2682", "bold":true}, {"text": "Mode", "color": "white", "bold":false}]
execute if entity @e[type=minecraft:marker,tag=ps_shop,sort=nearest,distance=0..3,nbt={data:{ps_status:"lock"}}] run title @s[scores={ps_distance=0..3},tag=ps_owner,team=ps_admin] actionbar [{"text": "[Admin] Shop ", "color": "#FF2682", "bold":true}, {"text": "Mode", "color": "white", "bold":false}]


###########################################################################################
# Player Shop "Greeting" Message for, "Owner" When chest is "Locked":
###########################################################################################
execute if entity @e[type=minecraft:marker,tag=ps_shop,sort=nearest,distance=0..3,nbt={data:{ps_status:"lock"}}] run title @s[scores={ps_distance=0..3},tag=ps_owner,team=!ps_admin] actionbar [{"text": "[Open] ", "color": "green", "bold":true}, {"selector": "@s", "color": "green", "bold":true}, {"text": "'s "}, {"text": "Shop", "color": "white", "bold":false}]

###########################################################################################
# Player Shop "Closed" Message for, "Guest" When chest is "Unlocked" for maintenace:
###########################################################################################
execute if entity @e[type=minecraft:marker,tag=ps_shop,sort=nearest,distance=0..8,nbt={data:{ps_status:"unlock"}}] run title @s[scores={ps_distance=0..8},tag=ps_owner,team=!ps_admin] actionbar [{"text": "[Closed] ", "color": "red", "bold":true}, {"text": "Shop Maintenace Mode", "color": "gray", "bold":false}]


###########################################################################################
# Player Shop "Greeting" Message for, "Guest" When chest is "Locked":
###########################################################################################
execute if entity @e[type=minecraft:marker,tag=ps_shop,sort=nearest,distance=0..3,nbt={data:{ps_status:"lock"}}] run title @s[scores={ps_distance=0..3},tag=ps_guest,team=!ps_admin] actionbar [{"text": "Welcome to our shop!", "color": "white"}]

###########################################################################################
# Player Shop "Farewell" Message for, "Guest" When chest is "Locked":
###########################################################################################
execute if entity @e[type=minecraft:marker,tag=ps_shop,sort=nearest,distance=3..5,nbt={data:{ps_status:"lock"}}] run title @s[scores={ps_distance=3..5},tag=ps_guest,team=!ps_admin] actionbar [{"text": "Thank, you for visiting!", "color": "green"}]

###########################################################################################
# Player Shop "Closed" Message for, "Guest" When chest is "Unlocked" for maintenace:
###########################################################################################
execute if entity @e[type=minecraft:marker,tag=ps_shop,sort=nearest,distance=0..8,nbt={data:{ps_status:"unlock"}}] run title @s[scores={ps_distance=0..8},tag=ps_guest,team=!ps_admin] actionbar [{"text": "[Closed] ", "color": "red", "bold":true}, {"text": "Shop is in Maintenace!", "color": "gray", "bold":false}]