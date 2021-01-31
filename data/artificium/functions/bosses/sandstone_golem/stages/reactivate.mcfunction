tag @s remove art.exposed
data modify entity @e[type=minecraft:armor_stand,tag=art.sandstone_golem,sort=nearest,limit=1] ArmorItems[3].tag.CustomModelData set value 170101
execute as @e[type=minecraft:iron_golem,tag=art.sandstone_golem] at @s anchored eyes run summon minecraft:strider ^ ^.4 ^.5 {NoAI:1b,Tags:["art.sandstone_golem"],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:999999,ShowParticles:0b}]}
effect give @s minecraft:resistance 999999 4 true
data merge entity @s {NoAI:0b}
