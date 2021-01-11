## PLayer Tick
execute as @a at @s run function artificium:main/player


## Artifacts
# Codex Animus Projectile
execute as @e[type=minecraft:armor_stand,tag=art.codex_projectile] at @s run tp @s ^ ^ ^.25
execute as @e[type=minecraft:armor_stand,tag=art.codex_projectile] run scoreboard players remove @s ac_temp 1
execute as @e[type=minecraft:armor_stand,tag=art.codex_projectile,scores={ac_temp=0}] at @s run function artificium:artifacts/codex_animus/end
execute as @e[type=minecraft:armor_stand,tag=art.codex_projectile] at @s unless block ~ ~ ~ #alloycore:voids run function artificium:artifacts/codex_animus/end
execute as @e[type=minecraft:armor_stand,tag=art.codex_projectile] at @s if entity @e[type=!#alloycore:nonliving,dx=0,dy=0,dz=0] run function artificium:artifacts/codex_animus/end
