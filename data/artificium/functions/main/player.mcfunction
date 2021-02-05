## Artifacts
#Codex Animus
execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Artificium:{CodexAnimus:1b}}}}] if score @s ac_click_cs matches 1.. anchored eyes positioned ^ ^ ^1.5 run function artificium:artifacts/codex_animus/activate

#RedstoneHeart
execute if entity @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{Artificium:{RedstoneHeart:1b}}}}] if score @s ac_click_cs matches 1.. if score @s art_RHeart matches 0 run function artificium:artifacts/redstone_heart/infuse
execute if entity @s[tag=art.RedstoneHeart] at @s run particle minecraft:dust 1 0 0 1 ~ ~.95 ~ .15 .45 .15 0 1 force @a[distance=.01..]




#End of Tick
scoreboard players remove @s art_RHeart 0
execute if score @s art_RHeart matches 1.. run scoreboard players remove @s art_RHeart 1
