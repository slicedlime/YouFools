scoreboard players operation $Test YouFools = @s YouFools
scoreboard players operation $Test YouFools %= 72 YouFools
execute if score $Test YouFools matches 0 run function youfools:summon
execute if score $Test YouFools matches 20 run data merge entity @e[type=wither,tag=yf_lord,nbt=!{Silent:1b},limit=1] {Silent:1b}
execute as @e[type=wither,tag=yf_lord] at @s run tp @s ~ ~ ~ facing entity @e[type=area_effect_cloud,tag=yf_center,limit=1]
tp @s ~ ~ ~ ~1 ~
