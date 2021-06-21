execute store result score targetX Calc run data get entity @e[tag=yf_target,limit=1] Pos[0] 256
execute store result score targetY Calc run data get entity @e[tag=yf_target,limit=1] Pos[1] 256
execute store result score targetZ Calc run data get entity @e[tag=yf_target,limit=1] Pos[2] 256

execute store result score witherX Calc run data get entity @s Pos[0] 256
execute store result score witherY Calc run data get entity @s Pos[1] 256
execute store result score witherZ Calc run data get entity @s Pos[2] 256

scoreboard players operation directionX Calc = targetX Calc
scoreboard players operation directionX Calc -= witherX Calc
scoreboard players operation directionY Calc = targetY Calc
scoreboard players operation directionY Calc -= witherY Calc
scoreboard players operation directionZ Calc = targetZ Calc
scoreboard players operation directionZ Calc -= witherZ Calc

scoreboard players operation x Calc = directionX Calc
scoreboard players operation y Calc = directionY Calc
scoreboard players operation z Calc = directionZ Calc

scoreboard players operation x Calc *= x Calc
scoreboard players operation x Calc /= 256 Calc
scoreboard players operation y Calc *= y Calc
scoreboard players operation y Calc /= 256 Calc
scoreboard players operation z Calc *= z Calc
scoreboard players operation z Calc /= 256 Calc

scoreboard players operation x Calc += y Calc
scoreboard players operation x Calc += z Calc

function fp256:sqrt

scoreboard players operation x Calc *= 256 Calc
scoreboard players operation x Calc /= speed Calc

scoreboard players operation directionX Calc *= 256 Calc
scoreboard players operation directionX Calc /= x Calc
scoreboard players operation directionY Calc *= 256 Calc
scoreboard players operation directionY Calc /= x Calc
scoreboard players operation directionZ Calc *= 256 Calc
scoreboard players operation directionZ Calc /= x Calc

execute if score x Calc > limit Calc store result entity @s Motion[0] double 0.00390625 run scoreboard players get directionX Calc
execute if score x Calc > limit Calc store result entity @s Motion[1] double 0.00390625 run scoreboard players get directionY Calc
execute if score x Calc > limit Calc store result entity @s Motion[2] double 0.00390625 run scoreboard players get directionZ Calc
execute if score x Calc <= limit Calc run data modify entity @s Motion set value [0.0, 0.0, 0.0]
