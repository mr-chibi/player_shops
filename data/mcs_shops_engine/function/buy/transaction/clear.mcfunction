# Check if Player's Wallet is bigger than total cost:
execute if score @p mcs_wallet > @p mcs_total run tag @p[tag=!mcs_has_amount] add mcs_has_amount

# If player, doesn't have Required [Item] Refuse:
$execute unless data entity @p[tag=mcs_has_amount] Inventory[{id:"$(id)"}] run tellraw @p [{"text": "Error, you don't have the item, ", "color": "red"}, {"text": "$(id)", "color": "aqua"}, {"text": " for purchasing!", "color": "red"}]

# Check if [Player] has, [buy] Item:
$execute if data entity @p[tag=mcs_has_amount] Inventory[{id:"$(id)"}] run tag @p[tag=!mcs_has_block] add mcs_has_block

# Clear Items:
$clear @p[tag=mcs_has_block] $(id) $(buy)