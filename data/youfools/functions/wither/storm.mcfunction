execute as @a[distance=..100] at @s run playsound minecraft:legacy.youfools.ambience master @s ~ ~ ~ 0.2
summon area_effect_cloud ~ ~ ~ {Duration:2147483647,Tags:["yf_storm"]}
gamerule doDaylightCycle true
gamerule doMobSpawning false
