scoreboard players add @s YouFools 1

team join noattack @a[gamemode=survival,distance=..100]
execute if score @s YouFools matches 1 run tag @p[gamemode=survival] add yf_target

execute if score @s YouFools matches 1 run data merge entity @e[type=wither,tag=yf_perses,limit=1] {NoAI:0}
execute if score @s YouFools matches 1 run scoreboard players set @e[type=wither,tag=yf_perses,limit=1] yf_behaviors 1
execute if score @s YouFools matches 1 run scoreboard players set limit Calc 4096
execute if score @s YouFools matches 1 run scoreboard players set speed Calc 96

execute if score @s YouFools matches 40 run data merge entity @e[type=wither,tag=yf_perses,limit=1] {NoAI:1}
execute if score @s YouFools matches 40 run scoreboard players set @e[type=wither,tag=yf_perses,limit=1] yf_behaviors 0
execute if score @s YouFools matches 40 as @e[type=wither,tag=yf_perses,limit=1] at @s run playsound legacy.house.intro master @a ~ ~ ~ 10 1 1
execute if score @s YouFools matches 40 run title @a[distance=..100] actionbar "Ahh... so the cowards return"
execute if score @s YouFools matches 40 run tag @a remove yf_target
execute if score @s YouFools matches 40 run scoreboard players set limit Calc 512
execute if score @s YouFools matches 40 run scoreboard players set @e[type=wither,tag=yf_archlys,limit=1] yf_behaviors 1
execute if score @s YouFools matches 40 run data merge entity @e[type=wither,tag=yf_archlys,limit=1] {NoAI:0}
execute if score @s YouFools matches 40 as @e[type=wither,tag=yf_perses,limit=1] at @s facing entity @p[gamemode=survival] eyes run summon area_effect_cloud ^4 ^ ^ {Duration:2147483647,Tags:["yf_target","yf_temp_target"]}

execute if score @s YouFools matches 100 run scoreboard players set speed Calc 128
execute if score @s YouFools matches 100 run data merge entity @e[type=wither,tag=yf_archlys,limit=1] {NoAI:1}
execute if score @s YouFools matches 100 run scoreboard players set @e[type=wither,tag=yf_archlys,limit=1] yf_behaviors 0
execute if score @s YouFools matches 100 run kill @e[type=area_effect_cloud,tag=yf_temp_target]
execute if score @s YouFools matches 100 run scoreboard players set @e[type=wither,tag=yf_erebus,limit=1] yf_behaviors 1
execute if score @s YouFools matches 100 run data merge entity @e[type=wither,tag=yf_erebus,limit=1] {NoAI:0}
execute if score @s YouFools matches 100 as @e[type=wither,tag=yf_perses,limit=1] at @s facing entity @p[gamemode=survival] eyes run summon area_effect_cloud ^-4 ^ ^ {Duration:2147483647,Tags:["yf_target","yf_temp_target"]}

execute if score @s YouFools matches 120 run title @a[distance=..100] actionbar "Feeble creatures!"

execute if score @s YouFools matches 160 run title @a[distance=..100] actionbar "Your meddling with the rift only gave us more power"

execute if score @s YouFools matches 160 run data merge entity @e[type=wither,tag=yf_erebus,limit=1] {NoAI:1}
execute if score @s YouFools matches 160 run scoreboard players set @e[type=wither,tag=yf_erebus,limit=1] yf_behaviors 0
execute if score @s YouFools matches 160 run kill @e[type=area_effect_cloud,tag=yf_temp_target]
execute if score @s YouFools matches 160 run scoreboard players set @e[type=wither,tag=yf_hades,limit=1] yf_behaviors 1
execute if score @s YouFools matches 160 run data merge entity @e[type=wither,tag=yf_hades,limit=1] {NoAI:0}
execute if score @s YouFools matches 160 as @e[type=wither,tag=yf_perses,limit=1] at @s facing entity @p[gamemode=survival] eyes run summon area_effect_cloud ^8 ^ ^ {Duration:2147483647,Tags:["yf_target","yf_temp_target"]}

execute if score @s YouFools matches 220 run data merge entity @e[type=wither,tag=yf_hades,limit=1] {NoAI:1}
execute if score @s YouFools matches 220 run scoreboard players set @e[type=wither,tag=yf_hades,limit=1] yf_behaviors 0
execute if score @s YouFools matches 220 run kill @e[type=area_effect_cloud,tag=yf_temp_target]
execute if score @s YouFools matches 220 run scoreboard players set @e[type=wither,tag=yf_ares,limit=1] yf_behaviors 1
execute if score @s YouFools matches 220 run data merge entity @e[type=wither,tag=yf_ares,limit=1] {NoAI:0}
execute if score @s YouFools matches 220 as @e[type=wither,tag=yf_perses,limit=1] at @s facing entity @p[gamemode=survival] eyes run summon area_effect_cloud ^-8 ^ ^ {Duration:2147483647,Tags:["yf_target","yf_temp_target"]}

execute if score @s YouFools matches 250 run title @a[distance=..100] actionbar "No one hears your cries for help"

execute if score @s YouFools matches 280 run data merge entity @e[type=wither,tag=yf_ares,limit=1] {NoAI:1}
execute if score @s YouFools matches 280 run scoreboard players set @e[type=wither,tag=yf_ares,limit=1] yf_behaviors 0
execute if score @s YouFools matches 280 run kill @e[type=area_effect_cloud,tag=yf_temp_target]

execute if score @s YouFools matches 290 as @e[type=wither,tag=yf_perses,limit=1] at @s run summon area_effect_cloud ~ ~10 ~ {Duration:2147483647,Tags:["yf_target","yf_temp_target"]}
execute if score @s YouFools matches 290 run data merge entity @e[type=wither,tag=yf_perses,limit=1] {NoAI:0}
execute if score @s YouFools matches 290 run scoreboard players set @e[type=wither,tag=yf_perses,limit=1] yf_behaviors 1
execute if score @s YouFools matches 290 run scoreboard players set limit Calc 256
execute if score @s YouFools matches 290 run scoreboard players set speed Calc 48

execute if score @s YouFools matches 300 as @e[type=wither,tag=yf_erebus] run function youfools:wither/vanish
execute if score @s YouFools matches 330 run title @a[distance=..100] actionbar "Time... to die!"

execute if score @s YouFools matches 340 run time set 12500

execute if score @s YouFools matches 320 as @e[type=wither,tag=yf_archlys] run function youfools:wither/vanish
execute if score @s YouFools matches 340 as @e[type=wither,tag=yf_ares] run function youfools:wither/vanish
execute if score @s YouFools matches 360 as @e[type=wither,tag=yf_hades] run function youfools:wither/vanish

execute if score @s YouFools matches 380 run scoreboard players set @e[type=wither,tag=yf_perses,limit=1] yf_behaviors 2
execute if score @s YouFools matches 380 run kill @e[type=area_effect_cloud,tag=yf_temp_target]
execute if score @s YouFools matches 380 run scoreboard players set $State YouFools 3
execute if score @s YouFools matches 380 run scoreboard players set @s YouFools 0
