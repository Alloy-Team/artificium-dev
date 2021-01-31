#Effects
effect give @s minecraft:speed 5 1 true
effect give @s minecraft:jump_boost 5 1 true
effect give @s minecraft:strength 5 0 true
effect give @s minecraft:instant_health 1 0 true

#FX
particle minecraft:dust 1 0 0 2 ~ ~ ~ 1.25 .5 1.25 100 50 force
playsound minecraft:block.conduit.activate player @a ~ ~ ~ 1 1 0

#Cooldown
scoreboard players set @s art_RHeart 300
