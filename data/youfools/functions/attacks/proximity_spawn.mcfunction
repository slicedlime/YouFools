execute store result score X1 Calc run data get entity @p[tag=yf_this] Pos[0] 10
execute store result score X2 Calc run data get entity @p[tag=yf_that] Pos[0] 10
scoreboard players operation X1 Calc += X2 Calc
scoreboard players operation X1 Calc /= 2 Calc

execute store result score Y1 Calc run data get entity @p[tag=yf_this] Pos[1] 10
execute store result score Y2 Calc run data get entity @p[tag=yf_that] Pos[1] 10
scoreboard players operation Y1 Calc += Y2 Calc
scoreboard players operation Y1 Calc /= 2 Calc

execute store result score Z1 Calc run data get entity @p[tag=yf_this] Pos[2] 10
execute store result score Z2 Calc run data get entity @p[tag=yf_that] Pos[2] 10
scoreboard players operation Z1 Calc += Z2 Calc
scoreboard players operation Z1 Calc /= 2 Calc

summon area_effect_cloud ~ ~ ~ {Duration:1,Tags:["yf_midpoint"]}
execute store result entity @e[type=area_effect_cloud,tag=yf_midpoint,limit=1] Pos[0] double 0.1 run scoreboard players get X1 Calc
execute store result entity @e[type=area_effect_cloud,tag=yf_midpoint,limit=1] Pos[1] double 0.1 run scoreboard players get Y1 Calc
execute store result entity @e[type=area_effect_cloud,tag=yf_midpoint,limit=1] Pos[2] double 0.1 run scoreboard players get Z1 Calc

execute as @e[type=area_effect_cloud,tag=yf_midpoint,limit=1] at @s positioned ~ ~30 ~ unless entity @e[type=fireball,distance=..1] run summon fireball ~ ~ ~ {ExplosionPower:2,Motion:[0.0,-2.0,0.0]}
kill @e[type=area_effect_cloud,tag=yf_midpoint]
