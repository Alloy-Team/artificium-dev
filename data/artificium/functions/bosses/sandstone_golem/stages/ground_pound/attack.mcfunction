execute if score @s art_gpoundAnim matches 160 run data merge entity @s {NoAI:1b}

execute if score @s art_gpoundAnim matches 80..160 run say charging up
execute if score @s art_gpoundAnim matches 20..80 run say going to hit
execute if score @s art_gpoundAnim matches 01..20 run say hitting

execute if score @s art_gpoundAnim matches 3 run gamerule mobGriefing false
execute if score @s art_gpoundAnim matches 3 run summon creeper ^ ^.5 ^2.25 {Silent:1b,Invulnerable:1b,NoAI:1b,ExplosionRadius:2b,Fuse:0,ignited:1b}
execute if score @s art_gpoundAnim matches 2 run gamerule mobGriefing true
execute if score @s art_gpoundAnim matches 2 run particle minecraft:falling_dust sand ~ ~.25 ~ 1 .25 1 0 200 normal
execute if score @s art_gpoundAnim matches 1 run data merge entity @s {NoAI:0b}
