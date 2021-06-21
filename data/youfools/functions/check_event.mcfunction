scoreboard players set Totems Calc 0
execute as @a[gamemode=survival] store result score @s Calc run clear @s totem_of_undying 0
execute as @a[gamemode=survival] run scoreboard players operation Totems Calc += @s Calc
execute if score Totems Calc matches 0 as @a[tag=yf_banish_target,limit=1] at @s run function youfools:wither/banish
