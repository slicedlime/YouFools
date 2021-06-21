tag @e[type=wither,tag=yf_lord] remove yf_special_attack
tag @e[type=wither,tag=yf_lord,limit=1,sort=random] add yf_special_attack

scoreboard players set @e[type=wither,tag=yf_speial_attack] yf_behaviors 1
execute as @e[type=wither,tag=yf_special_attack] at @s run summon area_effect_cloud ~ ~10 ~ {Duration:2147483647,Tags:["yf_target","yf_temp_target"]}
