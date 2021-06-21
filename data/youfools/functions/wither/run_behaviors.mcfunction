# Check state of wither, run behaviors

execute if score @s yf_behaviors matches 0 run function youfools:wither/behaviors/idle

# 1: Approach target
execute if score @s yf_behaviors matches 1 run function youfools:wither/behaviors/moveto