function artificium:bosses/sandstone_golem/bossbar

# Activate
execute if entity @s[tag=art.inactive_boss] run data merge entity @s {NoAI:1b}
execute if entity @s[tag=art.inactive_boss] run tag @s remove art.inactive_boss

#Armor stand rotation
execute as @e[type=minecraft:armor_stand,tag=art.sandstone_golem,sort=nearest,limit=1] if score @s art_owner_id = @e[type=minecraft:iron_golem,tag=art.sandstone_golem,sort=nearest,limit=1] ac_entity_id store result entity @s Rotation[0] float 1 run data get entity @e[type=minecraft:iron_golem,tag=art.sandstone_golem,sort=nearest,limit=1] Rotation[0] 1

#Head Hitbox
execute anchored eyes rotated ~ 0 positioned ^ ^.4 ^.5 run tp @e[type=strider,tag=art.sandstone_golem,sort=nearest,limit=1] ~ ~ ~

#Head Hitbox death
execute unless entity @e[type=strider,tag=art.sandstone_golem] unless entity @s[tag=art.exposed] run function artificium:bosses/sandstone_golem/stages/exposing

#Reactivate
execute if score @s[tag=art.exposed] art_exposedtimer matches 0 run function artificium:bosses/sandstone_golem/stages/reactivate


#End of Tick
scoreboard players remove @s art_exposedtimer 1
