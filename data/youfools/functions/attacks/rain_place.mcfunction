setblock ~ ~-1 ~ obsidian
summon minecraft:area_effect_cloud ~ ~ ~ {Duration:1, Tags: ["yf_random", "yf_true"]}
summon minecraft:area_effect_cloud ~ ~ ~ {Duration:1, Tags: ["yf_random"]}
execute as @e[type=area_effect_cloud,tag=yf_random,limit=1,sort=random] if entity @s[tag=yf_true] run setblock ~-1 ~-1 ~ nether_bricks
execute as @e[type=area_effect_cloud,tag=yf_random,limit=1,sort=random] if entity @s[tag=yf_true] run setblock ~-1 ~-1 ~ netherrack
execute as @e[type=area_effect_cloud,tag=yf_random,limit=1,sort=random] if entity @s[tag=yf_true] run setblock ~1 ~-1 ~ magma_block
execute as @e[type=area_effect_cloud,tag=yf_random,limit=1,sort=random] if entity @s[tag=yf_true] run setblock ~1 ~-1 ~1 obsidian
execute as @e[type=area_effect_cloud,tag=yf_random,limit=1,sort=random] if entity @s[tag=yf_true] run setblock ~1 ~-1 ~1 netherrack
execute as @e[type=area_effect_cloud,tag=yf_random,limit=1,sort=random] if entity @s[tag=yf_true] run setblock ~1 ~-1 ~-1 magma_block
execute as @e[type=area_effect_cloud,tag=yf_random,limit=1,sort=random] if entity @s[tag=yf_true] run setblock ~-1 ~-1 ~-1 netherrack
execute as @e[type=area_effect_cloud,tag=yf_random,limit=1,sort=random] if entity @s[tag=yf_true] run setblock ~ ~-1 ~-1 netherrack

setblock ~-1 ~ ~ air
setblock ~-1 ~ ~ air
setblock ~1 ~ ~ air
setblock ~1 ~ ~1 air
setblock ~1 ~ ~1 air
setblock ~1 ~ ~-1 air
setblock ~-1 ~ ~-1 air
setblock ~ ~ ~-1 air

execute as @e[type=area_effect_cloud,tag=yf_random,limit=1,sort=random] if entity @s[tag=yf_true] run setblock ~-1 ~ ~ fire
execute as @e[type=area_effect_cloud,tag=yf_random,limit=1,sort=random] if entity @s[tag=yf_true] run setblock ~-1 ~ ~ fire
execute as @e[type=area_effect_cloud,tag=yf_random,limit=1,sort=random] if entity @s[tag=yf_true] run setblock ~1 ~ ~ fire
execute as @e[type=area_effect_cloud,tag=yf_random,limit=1,sort=random] if entity @s[tag=yf_true] run setblock ~1 ~ ~1 fire
execute as @e[type=area_effect_cloud,tag=yf_random,limit=1,sort=random] if entity @s[tag=yf_true] run setblock ~1 ~ ~1 fire
execute as @e[type=area_effect_cloud,tag=yf_random,limit=1,sort=random] if entity @s[tag=yf_true] run setblock ~1 ~ ~-1 fire
execute as @e[type=area_effect_cloud,tag=yf_random,limit=1,sort=random] if entity @s[tag=yf_true] run setblock ~-1 ~ ~-1 fire
execute as @e[type=area_effect_cloud,tag=yf_random,limit=1,sort=random] if entity @s[tag=yf_true] run setblock ~ ~ ~-1 fire

setblock ~ ~ ~ fire
kill @e[type=area_effect_cloud,tag=yf_random]
