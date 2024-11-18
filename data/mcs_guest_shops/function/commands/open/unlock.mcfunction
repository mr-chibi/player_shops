#
data modify block ~ ~ ~ lock set value {components:{"minecraft:custom_name": '"123"'}}

#
data modify entity @s data.shop_status set value "open"

# Error Msg:
tellraw @p [{"text": "Unlocked shop!", "color": "green"}]