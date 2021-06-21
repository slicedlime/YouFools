scoreboard players add @s YouFools 1

execute as @s[scores={YouFools=1}] run tp @s @e[type=wither,limit=1,distance=..1]
execute as @s[scores={YouFools=1}] run playsound legacy.house.wither_vanish master @a ~ ~ ~ 10 1 1

tp @s ~ ~0.2 ~
particle large_smoke ^ ^ ^ 0.4 0.1 0.4 0.05 20
execute as @s[scores={YouFools=10..}] run particle large_smoke ^-2 ^ ^ 0.4 0.1 0.4 0.05 20
execute as @s[scores={YouFools=10..}] run particle large_smoke ^2 ^ ^ 0.4 0.1 0.4 0.05 20

execute as @s[scores={YouFools=17}] run tp @e[type=wither,tag=yf_lord,limit=1,sort=nearest] ~ -10 ~

execute as @s[scores={YouFools=20}] positioned ~ -10 ~ run kill @e[type=wither,tag=yf_lord,limit=1,sort=nearest,distance=..30]
kill @s[scores={YouFools=20}]
