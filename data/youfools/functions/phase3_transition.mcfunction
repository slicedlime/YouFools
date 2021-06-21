scoreboard players add @s YouFools 1

execute if score @s YouFools matches 200 at @p[gamemode=survival] positioned ^ ^ ^5 run summon wither ~ ~5 ~ {Tags:["yf_lord","yf_ares"], CustomName:'"Ares"', CustomNameVisible:true, NoAI:1, Silent:1}
execute if score @s YouFools matches 200 at @e[type=wither,tag=yf_lord] run playsound legacy.youfools.wither master @a[distance=..100] ~ ~1 ~ 2 1 1
execute if score @s YouFools matches 200 at @e[type=wither,tag=yf_lord] run particle large_smoke ~ ~ ~ 0.1 0.1 0.1 0.1 250
execute if score @s YouFools matches 220 at @e[type=wither,tag=yf_lord] run playsound legacy.house.ares.intro master @a[distance=..100] ~ ~1 ~ 2 1 1
execute if score @s YouFools matches 220 run scoreboard players set $State YouFools 7
execute if score @s YouFools matches 220 run data merge entity @e[type=wither,tag=yf_lord,limit=1] {NoAI:0}
execute if score @s YouFools matches 220 run scoreboard players set @s YouFools 301
