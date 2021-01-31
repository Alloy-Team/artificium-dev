## PLayer Tick
execute as @a at @s run function artificium:main/player



## Bosses
# Sandstone Golem
execute as @e[type=minecraft:iron_golem,tag=art.sandstone_golem] at @s run function artificium:bosses/sandstone_golem/loop
execute as @e[type=minecraft:armor_stand,tag=art.sandstone_golem] at @s unless entity @e[type=minecraft:iron_golem,tag=art.sandstone_golem,sort=nearest,limit=1,distance=..3] run kill @s

# The Coven
#Summon
#execute as @e[type=minecraft:area_effect_cloud,tag=art.coven_summon,tag=art.inactive_boss,tag=art.coven_boss] at @s run function artificium:bosses/coven/summon
#execute as @e[type=minecraft:area_effect_cloud,tag=art.inactive_boss,tag=art.coven_boss] at @s run function artificium:bosses/coven/loop



## Artifacts
# Codex Animus Projectile
execute as @e[type=minecraft:armor_stand,tag=art.codex_projectile] at @s run function artificium:artifacts/codex_animus/loop
