summon area_effect_cloud ~ ~1.8 ~ {Duration:2147483647,Tags:["yf_center"]}
tp @e[type=area_effect_cloud,tag=yf_center] @p[gamemode=!spectator]
execute as @e[type=area_effect_cloud,tag=yf_center] at @s run tp @s ~ ~ ~ ~ 0
scoreboard players set $State YouFools 1
scoreboard players set @e[type=area_effect_cloud,tag=yf_center] YouFools -300
kill @e[type=wither,distance=..10,limit=5]
kill @e[type=item,distance=..10,limit=5,nbt={Item:{id:"minecraft:nether_star"}}]
