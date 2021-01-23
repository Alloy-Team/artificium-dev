execute as @e[type=minecraft:witch,tag=art.coven_boss] store result score @s art_health run data get entity @s Health
execute at @e[type=minecraft:witch,tag=art.coven_boss,distance=..4,limit=5] if score @e[type=minecraft:witch,tag=art.coven_boss,sort=nearest,limit=1] art_owner_id = @s ac_entity_id run function artificium:bosses/coven/bossbar

execute at @e[type=minecraft:witch,tag=art.coven_boss,distance=..4,limit=5] if score @e[type=minecraft:witch,tag=art.coven_boss,sort=nearest,limit=1] art_owner_id = @s ac_entity_id run function artificium:bosses/coven/bossbar

execute unless entity @e[type=minecraft:witch,tag=art.coven_boss,distance=..4,limit=1] run kill @s
