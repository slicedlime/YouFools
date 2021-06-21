scoreboard players operation diff Calc = x1 Calc
scoreboard players operation diff Calc -= x2 Calc
execute if score diff Calc matches ..0 run scoreboard players operation diff Calc *= -1 Calc
