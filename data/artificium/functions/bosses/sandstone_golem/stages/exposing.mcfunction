data modify entity @e[type=minecraft:armor_stand,tag=art.sandstone_golem,sort=nearest,limit=1] ArmorItems[3].tag.CustomModelData set value 170102
effect clear @s minecraft:resistance
data merge entity @s {NoAI:1b}
scoreboard players set @s art_exposedtimer 200
tag @s add art.exposed
