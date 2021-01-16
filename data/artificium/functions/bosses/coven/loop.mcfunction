execute as @e[type=minecraft:witch,tag=art.coven_boss] store result score @s art_health run data get entity @s Health
execute at @e[type=minecraft:witch,tag=art.coven_boss,tag=art.inactive_boss,distance=..4,limit=5] if score @e[type=minecraft:witch,tag=art.coven_boss,tag=art.inactive_boss,sort=nearest,limit=1] art_owner_id = @s ac_entity_id run function artificium:bosses/coven/bossbar
