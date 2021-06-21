execute store result score Count Calc if entity @a[gamemode=!spectator,distance=..100]

execute as @a[gamemode=!spectator,distance=..100] store result score @s Calc run data get entity @s Pos[0] 10
scoreboard players set X Calc 0
execute as @a[gamemode=!spectator,distance=..100] run scoreboard players operation X Calc += @s Calc
scoreboard players operation X Calc /= Count Calc
execute store result entity @s Pos[0] double 0.1 run scoreboard players get X Calc

execute as @a[gamemode=!spectator,distance=..100] store result score @s Calc run data get entity @s Pos[1] 10
scoreboard players set Y Calc 0
execute as @a[gamemode=!spectator,distance=..100] run scoreboard players operation Y Calc += @s Calc
scoreboard players operation Y Calc /= Count Calc
scoreboard players add Y Calc 10
execute store result entity @s Pos[1] double 0.1 run scoreboard players get Y Calc

execute as @a[gamemode=!spectator,distance=..100] store result score @s Calc run data get entity @s Pos[2] 10
scoreboard players set Z Calc 0
execute as @a[gamemode=!spectator,distance=..100] run scoreboard players operation Z Calc += @s Calc
scoreboard players operation Z Calc /= Count Calc
execute store result entity @s Pos[2] double 0.1 run scoreboard players get Z Calc

execute at @s run tp @s ~ ~ ~ ~-1 ~

scoreboard players add @s YouFools 1

function youfools:fx/storm_wing
execute rotated ~60 ~ run function youfools:fx/storm_wing
execute rotated ~120 ~ run function youfools:fx/storm_wing
execute rotated ~180 ~ run function youfools:fx/storm_wing
execute rotated ~-120 ~ run function youfools:fx/storm_wing
execute rotated ~-60 ~ run function youfools:fx/storm_wing

execute if score @s YouFools matches ..600 at @s run particle lava ^ ^ ^ 10 1 10 0 1 force
kill @s[scores={YouFools=600..}]
