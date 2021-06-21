effect give @s slowness 20 5 true
execute at @s run summon area_effect_cloud ~ ~ ~ {Duration:2147483647,Tags:["yf_banish_fx"]}
execute at @s run playsound legacy.house.banish player @a[distance=..100] ~ ~ ~ 10 1 1
tag @s add yf_banished
scoreboard players reset @s YouFools
tag @s add yf_target
scoreboard players set limit Calc 4096
scoreboard players set speed Calc 64
scoreboard players set @e[type=wither,tag=yf_lord] yf_behaviors 1
scoreboard players set $State YouFools 14
scoreboard players set @e[type=area_effect_cloud,tag=yf_center] YouFools 1
team join noattack @a[gamemode=survival,distance=..100]
