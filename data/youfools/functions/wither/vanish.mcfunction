execute at @s run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:2147483647,Tags:["yf_wither_effect","yf_vanish_new"]}
tp @e[type=area_effect_cloud,tag=yf_vanish_new,limit=1] @s
tag @e[type=area_effect_cloud,tag=yf_vanish_new,limit=1] remove yf_vanish_new
