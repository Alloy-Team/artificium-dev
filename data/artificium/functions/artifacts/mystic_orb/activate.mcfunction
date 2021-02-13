tag @s add art.ActiveOrb
playsound minecraft:entity.evoker.cast_spell player @a ~ ~ ~ 1 1 0

summon armor_stand ~ ~ ~ {Marker:1b,Invisible:0b,Tags:["art.orb_hands"],ArmorItems:[{},{},{},{id:"minecraft:melon_seeds",Count:1b,tag:{CustomModelData:170102}}]}
scoreboard players operation @e[type=minecraft:armor_stand,tag=art.orb_hands,sort=nearest,limit=1] art_owner_id = @s ac_entity_id
