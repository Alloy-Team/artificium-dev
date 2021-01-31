function alloycore:main/assign
scoreboard players operation @e[type=minecraft:armor_stand,tag=art.sandstone_golem,tag=art.unlinked,sort=nearest,limit=1] art_owner_id = @s ac_entity_id
tag @e[type=minecraft:armor_stand,tag=art.sandstone_golem,tag=art.unlinked,sort=nearest,limit=1] remove art.unlinked

execute as @e[type=minecraft:iron_golem,tag=art.sandstone_golem] at @s anchored eyes run summon minecraft:strider ^ ^.4 ^.5 {NoAI:1b,Tags:["art.sandstone_golem"],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:999999,ShowParticles:0b}]}
