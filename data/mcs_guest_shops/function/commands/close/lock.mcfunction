#
data modify block ~ ~ ~ lock set value {components:{"minecraft:custom_name": ""}}

#
data modify entity @s data.shop_status set value "closed"

# Error Msg:
tellraw @p [{"text": "Lock shop!", "color": "red"}]