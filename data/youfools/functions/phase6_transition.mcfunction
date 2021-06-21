scoreboard players add @s YouFools 1

execute if score @s YouFools matches 200 at @p[gamemode=survival] positioned ^ ^ ^5 run summon wither ~ ~5 ~ {Tags:["yf_lord","yf_perses"], CustomName:'"Perses"', CustomNameVisible:true, NoAI:1, Silent:1, Health: 150.0f}
execute if score @s YouFools matches 200 at @e[type=wither,tag=yf_perses] run playsound legacy.youfools.wither master @a[distance=..100] ~ ~1 ~ 2 1 1
execute if score @s YouFools matches 200 at @e[type=wither,tag=yf_perses] run particle large_smoke ~ ~ ~ 0.1 0.1 0.1 0.1 250

execute if score @s YouFools matches 220 at @e[type=wither,tag=yf_perses] run summon wither ~5 ~ ~ {Tags:["yf_lord","yf_ares"], CustomName:'"Ares"', CustomNameVisible:true, NoAI:1, Silent:1, Health: 150.0f}
execute if score @s YouFools matches 220 at @e[type=wither,tag=yf_ares] run playsound legacy.youfools.wither master @a[distance=..100] ~ ~1 ~ 2 1 1
execute if score @s YouFools matches 220 at @e[type=wither,tag=yf_ares] run particle large_smoke ~ ~ ~ 0.1 0.1 0.1 0.1 250

execute if score @s YouFools matches 240 at @e[type=wither,tag=yf_perses] run summon wither ~-5 ~ ~ {Tags:["yf_lord","yf_hades"], CustomName:'"Hades"', CustomNameVisible:true, NoAI:1, Silent:1, Health: 150.0f}
execute if score @s YouFools matches 240 at @e[type=wither,tag=yf_hades] run playsound legacy.youfools.wither master @a[distance=..100] ~ ~1 ~ 2 1 1
execute if score @s YouFools matches 240 at @e[type=wither,tag=yf_hades] run particle large_smoke ~ ~ ~ 0.1 0.1 0.1 0.1 250

execute if score @s YouFools matches 250 if score $Event YouFools matches 2 at @e[type=wither,tag=yf_hades] run playsound legacy.house.hades.poststorm master @a[distance=..100] ~ ~1 ~ 2 1 1

execute if score @s YouFools matches 260 at @e[type=wither,tag=yf_perses] run summon wither ~ ~ ~5 {Tags:["yf_lord","yf_archlys"], CustomName:'"Achlys"', CustomNameVisible:true, NoAI:1, Silent:1, Health: 150.0f}
execute if score @s YouFools matches 260 at @e[type=wither,tag=yf_archlys] run playsound legacy.youfools.wither master @a[distance=..100] ~ ~1 ~ 2 1 1
execute if score @s YouFools matches 260 at @e[type=wither,tag=yf_archlys] run particle large_smoke ~ ~ ~ 0.1 0.1 0.1 0.1 250

execute if score @s YouFools matches 280 at @e[type=wither,tag=yf_perses] run summon wither ~ ~ ~-5 {Tags:["yf_lord","yf_erebus"], CustomName:'"Erebus"', CustomNameVisible:true, NoAI:1, Silent:1, Health: 150.0f}
execute if score @s YouFools matches 280 at @e[type=wither,tag=yf_erebus] run playsound legacy.youfools.wither master @a[distance=..100] ~ ~1 ~ 2 1 1
execute if score @s YouFools matches 280 at @e[type=wither,tag=yf_erebus] run particle large_smoke ~ ~ ~ 0.1 0.1 0.1 0.1 250

execute if score @s YouFools matches 300 run scoreboard players set $State YouFools 13
execute if score @s YouFools matches 300 as @e[type=wither,tag=yf_lord] run data merge entity @s {NoAI:0}
execute if score @s YouFools matches 300 run scoreboard players set @s YouFools 301
