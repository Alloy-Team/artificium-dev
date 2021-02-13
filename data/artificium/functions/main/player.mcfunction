## Artifacts
#Codex Animus
execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Artificium:{CodexAnimus:1b}}}}] if score @s ac_click_cs matches 1.. anchored eyes positioned ^ ^ ^1.5 run function artificium:artifacts/codex_animus/activate

#Redstone Heart
execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Artificium:{RedstoneHeart:1b}}}}] if score @s ac_click_cs matches 1.. if score @s art_RHeart matches 0 run function artificium:artifacts/redstone_heart/infuse
execute if entity @s[tag=art.RedstoneHeart] run particle minecraft:dust 1 0 0 1 ~ ~.95 ~ .15 .45 .15 0 1 force @a[distance=.01..]
execute if entity @s[tag=art.RedstoneHeart] if score @s ac_death matches 1.. run function artificium:artifacts/redstone_heart/death

#Mystic Orb
execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Artificium:{MysticOrb:1b}}}},tag=!art.ActiveOrb] run function artificium:artifacts/mystic_orb/activate
execute unless entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Artificium:{MysticOrb:1b}}}}] if entity @s[tag=art.ActiveOrb] run function artificium:artifacts/mystic_orb/deactivate
execute as @e[type=minecraft:armor_stand,tag=art.orb_hands,sort=nearest,distance=..6] if score @p ac_entity_id = @s art_owner_id positioned ~ ~1.25 ~ run tp @s ^ ^ ^-1.25 facing ~ ~ ~

#End of Tick
scoreboard players remove @s art_RHeart 0
execute if score @s art_RHeart matches 1.. run scoreboard players remove @s art_RHeart 1
