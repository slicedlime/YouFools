scoreboard players set $State YouFools 6
scoreboard players set @s YouFools 0
execute as @e[type=wither,tag=yf_archlys] at @s run function youfools:wither/vanish
data merge entity @e[type=wither,tag=yf_archlys,limit=1] {NoAI:1}
kill @e[type=area_effect_cloud,tag=yf_target]
