playsound minecraft:block.conduit.deactivate player @a ~ ~ ~ 1 1 0
tag @s remove art.RedstoneHeart

attribute @s minecraft:generic.movement_speed modifier remove 1-7-0-1-1
attribute @s minecraft:generic.attack_damage modifier remove 1-7-0-1-1
effect clear @s minecraft:jump_boost

function artificium:artifacts/redstone_heart/summon
