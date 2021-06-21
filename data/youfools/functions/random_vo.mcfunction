tag @e[type=wither,tag=yf_lord] remove yf_vo
tag @e[type=wither,tag=yf_lord,limit=1,sort=random] add yf_vo

execute as @e[type=wither,tag=yf_vo,tag=yf_perses,limit=1] at @s run playsound legacy.house.perses.random master @a[distance=..100] ~ ~ ~ 3 1 1
execute as @e[type=wither,tag=yf_vo,tag=yf_archlys,limit=1] at @s run playsound legacy.house.archlys.random master @a[distance=..100] ~ ~ ~ 3 1 1
execute as @e[type=wither,tag=yf_vo,tag=yf_ares,limit=1] at @s run playsound legacy.house.ares.random master @a[distance=..100] ~ ~ ~ 3 1 1
execute as @e[type=wither,tag=yf_vo,tag=yf_erebus,limit=1] at @s run playsound legacy.house.erebus.random master @a[distance=..100] ~ ~ ~ 3 1 1
execute as @e[type=wither,tag=yf_vo,tag=yf_hades,limit=1] at @s run playsound legacy.house.hades.random master @a[distance=..100] ~ ~ ~ 3 1 1

tag @e[type=wither,tag=yf_vo] remove yf_vo
