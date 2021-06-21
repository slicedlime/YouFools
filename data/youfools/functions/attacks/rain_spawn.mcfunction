summon area_effect_cloud ~ ~ ~ {Duration:1,Tags:["yf_random_spot"]}
summon area_effect_cloud ~ ~ ~ {Duration:1,Tags:["yf_random_spot"]}
summon area_effect_cloud ~ ~ ~ {Duration:1,Tags:["yf_random_spot"]}
summon area_effect_cloud ~ ~ ~ {Duration:1,Tags:["yf_random_spot"]}
summon area_effect_cloud ~ ~ ~ {Duration:1,Tags:["yf_random_spot"]}
summon area_effect_cloud ~ ~ ~ {Duration:1,Tags:["yf_random_spot"]}
summon area_effect_cloud ~ ~ ~ {Duration:1,Tags:["yf_random_spot"]}
summon area_effect_cloud ~ ~ ~ {Duration:1,Tags:["yf_random_spot"]}
summon area_effect_cloud ~ ~ ~ {Duration:1,Tags:["yf_random_spot"]}
spreadplayers ~ ~ 0 30 false @e[type=area_effect_cloud,tag=yf_random_spot]

execute as @e[type=area_effect_cloud,tag=yf_random_spot] at @s run summon small_fireball ~ ~20 ~ {Motion:[0.0,-0.5,0.0],Tags:["yf_corruption"]}
kill @e[type=area_effect_cloud,tag=yf_random_spot]
