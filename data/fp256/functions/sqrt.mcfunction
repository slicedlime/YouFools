# Fixed point factor 256
# input x, output x

scoreboard players set -1 Calc -1
scoreboard players set 2 Calc 2
scoreboard players set 256 Calc 256

scoreboard players operation x1 Calc = x Calc
scoreboard players operation x1 Calc /= 2 Calc
function fp256:impl/sqrt_x2
function fp256:impl/sqrt_diff

# Diff is now difference in fixed point
execute if score diff Calc matches 2.. run function fp256:impl/sqrt_loop

scoreboard players operation x Calc = x2 Calc