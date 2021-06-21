execute if score @s YouFools matches 2000.. if entity @p[gamemode=survival,distance=..40] run function youfools:start_fight
execute if score $State YouFools matches 1 if entity @p[gamemode=survival,distance=..10] run function youfools:start_fight_quick
scoreboard players set @e[type=wither,tag=yf_lord] Health 0
execute as @e[type=wither,tag=yf_lord] store result score @s Health run data get entity @s Health
execute if score $State YouFools matches 1 if entity @e[type=wither,tag=yf_lord,scores={Health=..299}] run function youfools:start_fight
