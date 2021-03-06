## Load Message
tellraw @a[tag=ac_debug] [{"text":"> ","color":"#0000CC"},{"text":"Artificium has reloaded!","color":"gray"}]
execute as @a at @s run playsound minecraft:item.lodestone_compass.lock master @s ~ ~ ~ 1 0 1

## Scoreboards ##
scoreboard objectives add art_owner_id dummy
scoreboard objectives add art_health dummy
scoreboard objectives add art_bossbar dummy

#Artifacts
scoreboard objectives add art_RHeart dummy

scoreboard objectives add art_punchtime dummy


#Sandstone Golem
scoreboard objectives add art_exposedtimer dummy
scoreboard objectives add art_gpound dummy
scoreboard objectives add art_gpoundAnim dummy


## Bossbars
# The Coven
bossbar add art_coven "The Coven"
bossbar set art_coven color purple
bossbar set art_coven max 130
bossbar set art_coven style progress

# Sandstone Golem
bossbar add art_sandstonegolem "Sandstone Golem"
bossbar set art_sandstonegolem color red
bossbar set art_sandstonegolem max 300
bossbar set art_sandstonegolem style progress
