## Load Message
tellraw @a [{"text":">","color":"#8C0000"},{"text":">","color":"#C20000"},{"text":">","color":"#FF0000"},{"text":" Artificium Loaded! ","color":"gray"},{"text":"<","color":"#0000FF"},{"text":"<","color":"#0000CC"},{"text":"<","color":"#0000A3"}]
execute as @a at @s run playsound minecraft:item.lodestone_compass.lock master @s ~ ~ ~ 1 0 1

## Scoreboards
scoreboard objectives add art_owner_id dummy

scoreboard objectives add art_health dummy
scoreboard objectives add art_bossbar dummy

## Bossbars
bossbar add art_coven "The Coven"
bossbar set art_coven color purple
bossbar set art_coven max 130
bossbar set art_coven value 130
bossbar set art_coven style progress
bossbar set art_coven visible true
