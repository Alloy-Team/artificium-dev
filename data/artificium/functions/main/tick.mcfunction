## PLayer Tick
execute as @a at @s run function artificium:main/player

## Bosses
# The Coven
execute as @e[type=minecraft:area_effect_cloud,tag=art.coven_summon] at @s run function artificium:bosses/coven/summon

## Artifacts
# Codex Animus Projectile
execute as @e[type=minecraft:armor_stand,tag=art.codex_projectile] at @s run function artificium:artifacts/codex_animus/tick
