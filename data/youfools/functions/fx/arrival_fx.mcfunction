tp @s ~ ~-0.1 ~ ~10 ~

execute at @s rotated ~ ~ run particle witch ^0.6 ^ ^ 0 0 0 0 10 force
execute at @s rotated ~45 ~ run particle witch ^0.6 ^ ^ 0 0 0 0 10 force
execute at @s rotated ~90 ~ run particle witch ^0.6 ^ ^ 0 0 0 0 10 force
execute at @s rotated ~135 ~ run particle witch ^0.6 ^ ^ 0 0 0 0 10 force
execute at @s rotated ~180 ~ run particle witch ^0.6 ^ ^ 0 0 0 0 10 force
execute at @s rotated ~-45 ~ run particle witch ^0.6 ^ ^ 0 0 0 0 10 force
execute at @s rotated ~-90 ~ run particle witch ^0.6 ^ ^ 0 0 0 0 10 force
execute at @s rotated ~-135 ~ run particle witch ^0.6 ^ ^ 0 0 0 0 10 force
scoreboard players add @s YouFools 1
kill @s[scores={YouFools=40}]
