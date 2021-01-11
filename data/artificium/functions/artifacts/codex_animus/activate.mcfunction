# Summon Projectile
summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["art.codex_projectile"],ArmorItems:[{},{},{},{id:"minecraft:melon_seeds",Count:1b,tag:{CustomModelData:170101}}]}

data modify entity @e[type=minecraft:armor_stand,tag=art.codex_projectile,sort=nearest,limit=1] Rotation set from entity @s Rotation
scoreboard players set @e[type=minecraft:armor_stand,tag=art.codex_projectile,sort=nearest,limit=1] ac_temp 300
