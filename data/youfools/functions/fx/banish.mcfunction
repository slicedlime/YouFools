scoreboard players add @s YouFools 1

effect give @s[scores={YouFools=4}] levitation 3 1 true
effect give @s[scores={YouFools=45..}] levitation 3 255 true

execute if score @s YouFools matches 10..220 run particle end_rod ~ ~1 ~ 0 0 0 0.04 16 force
execute if score @s YouFools matches 221..240 run particle squid_ink ~ ~1 ~ 0 0 0 0.04 64 force

# TODO: Match wither with voice
execute if score @s YouFools matches 180 as @e[type=wither,tag=yf_lord,limit=1] at @s run playsound legacy.house.banish_vo master @a[distance=..100] ~ ~ ~ 10 1 1

execute if score @s YouFools matches 240 run particle flash ~ ~1 ~ 0 0 0 0 1 force

gamemode spectator @s[scores={YouFools=240..}]

tag @s[scores={YouFools=270..}] remove yf_banished
execute if score @s YouFools matches 270 run function youfools:wither/storm
