## Artifacts
#Codex Animus
execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Artificium:{CodexAnimus:1b}}}}] if score @s ac_click_cs matches 1.. anchored eyes positioned ^ ^ ^1.5 run function artificium:artifacts/codex_animus/activate

#RedstoneHeart
execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Artificium:{RedstoneHeart:1b}}}}] if score @s ac_click_cs matches 1.. if score @s art_RHeart matches 0 run function artificium:artifacts/redstone_heart/activate





#End of Tick
scoreboard players remove @s art_RHeart 0
execute if score @s art_RHeart matches 1.. run scoreboard players remove @s art_RHeart 1
