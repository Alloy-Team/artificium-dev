## Load Message
tellraw @a[tag=ac_debug] [{"text":"> ","color":"#0000CC"},{"text":"Artificium has reloaded!","color":"gray"}]
tellraw @a[tag=ac_debug] [{"text":"> ","color":"#0000FF"},{"text":"To remove this message, remove the ac_debug tag from yourself.","color":"gray"}]
execute as @a at @s run playsound minecraft:item.lodestone_compass.lock master @s ~ ~ ~ 1 0 1

## Scoreboards
scoreboard objectives add art_owner_id dummy

scoreboard objectives add art_health dummy
scoreboard objectives add art_bossbar dummy

scoreboard objectives add art_RHeart dummy

scoreboard objectives add art_exposedtimer dummy

## Bossbars
# The Coven
bossbar add art_coven "The Coven"
bossbar set art_coven color purple
bossbar set art_coven max 130
bossbar set art_coven value 130
bossbar set art_coven style progress

# Sandstone Golem
bossbar add art_sandstonegolem "Sandstone Golem"
bossbar set art_sandstonegolem color red
bossbar set art_sandstonegolem max 200
bossbar set art_sandstonegolem value 200
bossbar set art_sandstonegolem style progress
