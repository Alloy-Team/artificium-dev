tag @s remove art.ActiveOrb
playsound minecraft:entity.evoker.cast_spell player @a ~ ~ ~ 1 0 0

execute as @e[type=minecraft:armor_stand,tag=art.orb_hands,sort=nearest,distance=..6] if score @p ac_entity_id = @s art_owner_id positioned ~ ~1.25 ~ run kill @s
