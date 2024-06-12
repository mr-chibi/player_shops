#
data modify block ~ ~ ~ Lock set value "123"

#
data modify entity @s data.shop_status set value "open"

# Error Msg:
tellraw @p [{"text": "Unlocked shop!", "color": "green"}]