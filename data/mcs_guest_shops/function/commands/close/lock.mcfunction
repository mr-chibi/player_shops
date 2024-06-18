#
data modify block ~ ~ ~ Lock set value ""

#
data modify entity @s data.shop_status set value "closed"

# Error Msg:
tellraw @p [{"text": "Lock shop!", "color": "red"}]