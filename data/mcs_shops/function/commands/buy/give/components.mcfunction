#
playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 3 0.75

#
$execute as @e[type=minecraft:interaction,tag=mcs_shop,distance=0..5,limit=1] at @s run summon minecraft:item ~ ~ ~ {Item:{id:"$(id)",components:{}}}