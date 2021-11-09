#
tellraw @s [{"text": "[", "color": "white"}, {"text": "Mr_Chibi's Player Shop", "color": "aqua"}, {"text": "] ", "color": "white"}, {"text": "Error, you may not buy from your own shop!", "color": "red"}]

#
scoreboard players set @s[scores={ps_buy_0=1..}] ps_buy_0 0
scoreboard players set @s[scores={ps_buy_1=1..}] ps_buy_1 0
scoreboard players set @s[scores={ps_buy_2=1..}] ps_buy_2 0