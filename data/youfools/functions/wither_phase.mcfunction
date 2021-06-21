scoreboard players add @s YouFools 1

execute if score @s YouFools matches 300 run function youfools:random_vo
execute if score @s YouFools matches 580 run function youfools:special_prepare
execute if score @s YouFools matches 600 run function youfools:special_vo
execute if score @s YouFools matches 640 run function youfools:special_activate
execute if score @s YouFools matches 650 run function youfools:special_end
execute if score @s YouFools matches 650.. run scoreboard players set @s YouFools 0

execute store result score Health Calc run data get entity @e[type=wither,tag=yf_lord,limit=1] Health
