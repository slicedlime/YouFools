execute if score $State YouFools matches 1 as @e[type=area_effect_cloud,tag=yf_center,scores={YouFools=2000..}] at @s if entity @p[gamemode=survival,distance=..40] run function youfools:start_fight
execute if score $State YouFools matches 1 as @e[type=area_effect_cloud,tag=yf_center,scores={YouFools=1100..}] at @s run function youfools:check_fight_trigger
execute if score $State YouFools matches 1 as @e[type=area_effect_cloud,tag=yf_center] at @s run function youfools:active
execute if score $State YouFools matches 2 as @e[type=area_effect_cloud,tag=yf_center] at @s run function youfools:intro
execute if score $State YouFools matches 3 as @e[type=area_effect_cloud,tag=yf_center] at @s run function youfools:phase1
execute if score $State YouFools matches 4 as @e[type=area_effect_cloud,tag=yf_center] at @s run function youfools:phase2_transition
execute if score $State YouFools matches 5 as @e[type=area_effect_cloud,tag=yf_center] at @s run function youfools:phase2
execute if score $State YouFools matches 6 as @e[type=area_effect_cloud,tag=yf_center] at @s run function youfools:phase3_transition
execute if score $State YouFools matches 7 as @e[type=area_effect_cloud,tag=yf_center] at @s run function youfools:phase3
execute if score $State YouFools matches 8 as @e[type=area_effect_cloud,tag=yf_center] at @s run function youfools:phase4_transition
execute if score $State YouFools matches 9 as @e[type=area_effect_cloud,tag=yf_center] at @s run function youfools:phase4
execute if score $State YouFools matches 10 as @e[type=area_effect_cloud,tag=yf_center] at @s run function youfools:phase5_transition
execute if score $State YouFools matches 11 as @e[type=area_effect_cloud,tag=yf_center] at @s run function youfools:phase5
execute if score $State YouFools matches 12 as @e[type=area_effect_cloud,tag=yf_center] at @s run function youfools:phase6_transition
execute if score $State YouFools matches 13 as @e[type=area_effect_cloud,tag=yf_center] at @s run function youfools:phase6
execute if score $State YouFools matches 14 as @e[type=area_effect_cloud,tag=yf_center] at @s run function youfools:phase7

execute if score $State YouFools matches 3..13 run function youfools:wither/target_selection

execute if score $State YouFools matches 2..14 run function youfools:time_check
