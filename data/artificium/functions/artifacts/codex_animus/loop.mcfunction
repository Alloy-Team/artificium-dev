tp @s ^ ^ ^.25
particle minecraft:soul_fire_flame ~ ~ ~ 0 0 0 .01 1 force
scoreboard players remove @s ac_temp 1
execute if entity @s[scores={ac_temp=0}] run function artificium:artifacts/codex_animus/end
execute unless block ~ ~ ~ #alloycore:voids run function artificium:artifacts/codex_animus/end
execute if entity @e[type=!#alloycore:nonliving,dx=0,dy=0,dz=0] run function artificium:artifacts/codex_animus/end
