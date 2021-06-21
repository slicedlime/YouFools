scoreboard players add @s YouFools 1
execute if score @s YouFools matches -100 run advancement grant @a[distance=..50,gamemode=!spectator] only youfools:combat/you_fools

execute if score @s YouFools matches 180..539 run function youfools:spawn
execute if score @s YouFools matches ..5 run kill @e[type=item,distance=..10,nbt={Item:{id:"minecraft:nether_star"}}]

execute if score @s YouFools matches 140 run effect give @a[distance=..100] blindness 3 0 true
execute if score @s YouFools matches 136 run playsound legacy.youfools.boom master @a[distance=..100] ~ ~ ~ 1 1 1 
execute if score @s YouFools matches 140 run time set night

execute if score @s YouFools matches 300 run playsound legacy.youfools.ambience master @a ~ ~ ~ 0.15

execute if score @s YouFools matches 560 as @e[type=wither,tag=yf_ares,sort=random,limit=1] at @s run function youfools:vo1

execute if score @s YouFools matches 680 as @e[type=wither,tag=yf_archlys,tag=yf_lord,sort=random,limit=1] at @s run function youfools:vo2

execute if score @s YouFools matches 780 as @e[type=wither,tag=yf_hades,tag=yf_lord,sort=random,limit=1] at @s run function youfools:vo3

execute if score @s YouFools matches 900 as @e[type=wither,tag=yf_perses,tag=yf_lord,sort=random,limit=1] at @s run function youfools:vo4

execute if score @s YouFools matches 1000 as @e[type=wither,tag=yf_lord] at @s positioned ^ ^ ^-5 run summon lightning_bolt ~ ~-4 ~
