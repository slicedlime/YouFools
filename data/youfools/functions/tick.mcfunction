# Tick

execute if score $State YouFools matches 0 as @e[type=wither] at @s run function youfools:check_activation
execute if score $State YouFools matches 0 as @e[type=wither,tag=yf_shouldtrigger,limit=1] at @s run function youfools:start

function youfools:teams
function youfools:dispatch

execute as @e[type=area_effect_cloud,tag=yf_wither_effect] at @s run function youfools:fx/wither
execute as @e[type=area_effect_cloud,tag=yf_storm] at @s run function youfools:fx/storm

execute as @a[tag=yf_arrival] at @s run function youfools:fx/arrival
execute as @e[type=area_effect_cloud,tag=yf_arrival_fx] at @s run function youfools:fx/arrival_fx

execute as @a[tag=yf_banished] at @s run function youfools:fx/banish

execute as @e[type=small_fireball,tag=yf_corruption] at @s unless block ~ ~-1 ~ #youfools:nonsolid run function youfools:attacks/rain_place
execute as @e[type=small_fireball,tag=yf_corruption] run data modify entity @s Motion[1] set value -0.5

execute as @e[type=wither,tag=yf_lord] at @s run function youfools:wither/run_behaviors
