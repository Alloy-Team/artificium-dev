function alloycore:main/assign

summon witch ^-4 ^ ^ {DeathLootTable:"empty",NoAI:1b,Health:26f,PatrolLeader:0b,Patrolling:0b,HasRaidGoal:0b,CanJoinRaid:0b,Tags:["art.coven_boss","art.inactive_boss"],Attributes:[{Name:generic.max_health,Base:26}],CustomName:'{"text":"Glinda"}'}
summon witch ^-2 ^ ^-2 {DeathLootTable:"empty",NoAI:1b,Health:26f,PatrolLeader:0b,Patrolling:0b,HasRaidGoal:0b,CanJoinRaid:0b,Tags:["art.coven_boss","art.inactive_boss"],Attributes:[{Name:generic.max_health,Base:26}],CustomName:'{"text":"Agnes"}'}
summon witch ^ ^ ^-4 {DeathLootTable:"empty",NoAI:1b,Health:26f,PatrolLeader:0b,Patrolling:0b,HasRaidGoal:0b,CanJoinRaid:0b,Tags:["art.coven_boss","art.inactive_boss"],Attributes:[{Name:generic.max_health,Base:26}],CustomName:'{"text":"Gruntilda"}'}
summon witch ^2 ^ ^-2 {DeathLootTable:"empty",NoAI:1b,Health:26f,PatrolLeader:0b,Patrolling:0b,HasRaidGoal:0b,CanJoinRaid:0b,Tags:["art.coven_boss","art.inactive_boss"],Attributes:[{Name:generic.max_health,Base:26}],CustomName:'{"text":"Fidelia"}'}
summon witch ^4 ^ ^ {DeathLootTable:"empty",NoAI:1b,Health:26f,PatrolLeader:0b,Patrolling:0b,HasRaidGoal:0b,CanJoinRaid:0b,Tags:["art.coven_boss","art.inactive_boss"],Attributes:[{Name:generic.max_health,Base:26}],CustomName:'{"text":"Hilda"}'}

execute as @e[type=minecraft:witch,tag=art.coven_boss,tag=art.inactive_boss,distance=..4,limit=5] run scoreboard players operation @s art_owner_id = @e[type=minecraft:area_effect_cloud,tag=art.coven_summon,tag=art.inactive_boss,sort=nearest,limit=1,tag=art.coven_boss] ac_entity_id
tag @s remove art.coven_summon

# execute as @e[type=minecraft:witch,tag=art.coven_boss,tag=art.inactive_boss,distance=..4,limit=5] facing ~ ~ ~ run tp @s ~ ~ ~ ~ ~
