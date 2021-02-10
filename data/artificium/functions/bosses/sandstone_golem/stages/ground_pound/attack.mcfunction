execute if score @s art_gpoundAnim matches 60 run data merge entity @s {NoAI:1b}

execute if score @s art_gpoundAnim matches 46..60 run title @a actionbar "charging up"
execute if score @s art_gpoundAnim matches 27..46 run title @a actionbar "going to hit"
execute if score @s art_gpoundAnim matches 20..27 run title @a actionbar "hitting"

execute if score @s art_gpoundAnim matches 22 run gamerule mobGriefing false
execute if score @s art_gpoundAnim matches 22 run summon creeper ^ ^.5 ^2.25 {Silent:1b,Invulnerable:1b,NoAI:1b,ExplosionRadius:2b,Fuse:0,ignited:1b}
execute if score @s art_gpoundAnim matches 21 run gamerule mobGriefing true
execute if score @s art_gpoundAnim matches 21 run particle minecraft:falling_dust sand ~ ~.25 ~ 1 .25 1 0 200 normal
execute if score @s art_gpoundAnim matches 20 run data merge entity @s {NoAI:0b}
