scoreboard players operation @s art_bossbar += @e[type=minecraft:witch,tag=art.coven_boss,tag=art.inactive_boss,sort=nearest,limit=5] art_health

execute store result bossbar minecraft:art_coven value run scoreboard players get @s art_bossbar
scoreboard players set @s art_bossbar 0
