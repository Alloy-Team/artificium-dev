#Bossbar
function artificium:bosses/sandstone_golem/bossbar

# Activate
execute if entity @s[tag=art.inactive_boss] run data merge entity @s {NoAI:0b}
execute if entity @s[tag=art.inactive_boss] run scoreboard players set @s art_gpound 150
execute if entity @s[tag=art.inactive_boss] run say Activated
execute if entity @s[tag=art.inactive_boss] run bossbar set minecraft:art_sandstonegolem visible true

execute if entity @s[tag=art.inactive_boss] run tag @s remove art.inactive_boss


#       Angry
execute if entity @p[distance=..30] run data modify entity @s AngryAt set from entity @p[distance=..30] UUID

#Armor stand rotation
execute as @e[type=minecraft:armor_stand,tag=art.sandstone_golem,sort=nearest,limit=1] if score @s art_owner_id = @e[type=minecraft:iron_golem,tag=art.sandstone_golem,sort=nearest,limit=1] ac_entity_id store result entity @s Rotation[0] float 1 run data get entity @e[type=minecraft:iron_golem,tag=art.sandstone_golem,sort=nearest,limit=1] Rotation[0] 1

### Head Hitbox
#Placement
execute anchored eyes rotated ~ 0 positioned ^ ^.4 ^.5 run tp @e[type=strider,tag=art.sandstone_golem,sort=nearest,limit=1] ~ ~ ~
#Head Hitbox death
execute unless entity @e[type=strider,tag=art.sandstone_golem] unless entity @s[tag=art.exposed] run function artificium:bosses/sandstone_golem/stages/exposing

#Reactivate
execute if score @s[tag=art.exposed] art_exposedtimer matches 0 run function artificium:bosses/sandstone_golem/stages/reactivate
execute if score @s[tag=art.exposed] art_exposedtimer matches 1..20 run say reactivating

#Ground Pound
execute if score @s art_gpound matches 0 run function artificium:bosses/sandstone_golem/stages/ground_pound/start
execute if score @s art_gpoundAnim matches 1.. run function artificium:bosses/sandstone_golem/stages/ground_pound/attack

#End of Tick
scoreboard players remove @s[scores={art_exposedtimer=1..}] art_exposedtimer 1

scoreboard players remove @s[scores={art_gpoundAnim=1..},tag=!art.exposed] art_gpoundAnim 1
execute if entity @p[distance=..5] run scoreboard players remove @s[scores={art_gpound=1..},tag=!art.exposed] art_gpound 1
