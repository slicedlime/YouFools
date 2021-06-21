scoreboard players add @s YouFools 1

team join noattack @a[gamemode=survival]
tag @a remove yf_priority_target

execute if score @s YouFools matches 40.. run effect clear @a wither

execute if score @s YouFools matches 100 as @e[type=wither,tag=yf_lord] run data merge entity @s {NoAI:1}
execute if score @s YouFools matches 300 as @e[type=wither,tag=yf_erebus] at @s run playsound legacy.house.erebus.storm master @a[distance=..100] ~ ~ ~ 3 1 1
execute if score @s YouFools matches 420 as @e[type=wither,tag=yf_hades] at @s run playsound legacy.house.hades.storm master @a[distance=..100] ~ ~ ~ 3 1 1

execute if score @s YouFools matches 300 as @e[type=wither,tag=yf_perses] at @s run function youfools:wither/vanish
execute if score @s YouFools matches 340 as @e[type=wither,tag=yf_ares] at @s run function youfools:wither/vanish
execute if score @s YouFools matches 380 as @e[type=wither,tag=yf_archlys] at @s run function youfools:wither/vanish
execute if score @s YouFools matches 420 as @e[type=wither,tag=yf_erebus] at @s run function youfools:wither/vanish
execute if score @s YouFools matches 460 as @e[type=wither,tag=yf_hades] at @s run function youfools:wither/vanish

execute if score @s YouFools matches 500.. as @a[gamemode=spectator,tag=!yf_banish_target] at @s unless block ~ ~ ~ air run tag @s add yf_arrival
execute if score @s YouFools matches 500.. as @a[gamemode=spectator,tag=yf_arrival] at @s run function youfools:fx/arrival
execute if score @s YouFools matches 550 if entity @a[gamemode=spectator,tag=!yf_banish_target] run scoreboard players remove @s YouFools 1

execute if score @s YouFools matches 850 run scoreboard players set $Event YouFools 2
execute if score @s YouFools matches 850 run function youfools:phase6_start

