# Give Player Purchased Item:
$give @p[tag=mcs_has_block] $(id) $(sell)

# Purchase Successful!
$tellraw @p[tag=mcs_has_block] [{"text": "Successfully purchased, ", "color": "green"}, {"text": "\"$(sell)\" ", "color": "yellow"}, {"text": "$(id)", "color": "aqua"}, {"text": "s!", "color": "aqua"}]