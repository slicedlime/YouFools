scoreboard players add @s YouFools 1

execute as @s[scores={YouFools=1}] at @s run summon armor_stand ~ ~ ~ {Invisible:1b,Tags:["yf_arrival_marker"]}
execute as @s[scores={YouFools=1}] run spreadplayers ~ ~ 0 1 false @e[type=armor_stand,tag=yf_arrival_marker,limit=1,sort=nearest]
execute as @s[scores={YouFools=12}] at @s run summon area_effect_cloud ~ ~2.5 ~ {Duration:2147483647,Tags:["yf_arrival_fx"]}
execute as @s[scores={YouFools=2}] at @s run playsound legacy.house.arrival player @a ~ ~ ~ 0.5 1
tp @s[scores={YouFools=..70}] @e[type=armor_stand,tag=yf_arrival_marker,limit=1,sort=nearest]
execute as @s[scores={YouFools=70}] at @s run kill @e[type=armor_stand,tag=yf_arrival_marker,limit=1,sort=nearest]
gamemode survival @s[scores={YouFools=70}]

execute at @s[scores={YouFools=10..50}] run particle portal ~ ~1 ~ 0 0 0 1 20 force

execute as @s[scores={YouFools=70}] run tag @s remove yf_arrival
execute as @s[scores={YouFools=70}] run scoreboard players reset @s YouFools
