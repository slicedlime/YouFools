execute at @e[type=wither,tag=yf_lord,distance=..100,limit=1] run summon wither_skeleton ~ ~ ~ {Tags:["yf_clone","yf_new_clone"],HandItems:[{id:"diamond_sword",Count:1}],HandDropChances:[0.0f, 0.0f],ArmorDropChances:[0.0f, 0.0f, 0.0f, 0.0f], CustomNameVisible:1b}
execute as @e[type=wither_skeleton,tag=yf_new_clone,limit=1] at @s run spreadplayers ~ ~ 0 1 false @s
loot replace entity @e[type=wither_skeleton,tag=yf_new_clone,limit=1] armor.head fish youfools:head ~ ~ ~ mainhand
data modify entity @e[type=wither_skeleton,tag=yf_new_clone,limit=1] ArmorItems[0] set from entity @s Inventory[{Slot:100b}]
data modify entity @e[type=wither_skeleton,tag=yf_new_clone,limit=1] ArmorItems[1] set from entity @s Inventory[{Slot:101b}]
data modify entity @e[type=wither_skeleton,tag=yf_new_clone,limit=1] ArmorItems[2] set from entity @s Inventory[{Slot:102b}]
data modify entity @e[type=wither_skeleton,tag=yf_new_clone,limit=1] CustomName set from entity @e[type=wither_skeleton,tag=yf_new_clone,limit=1] ArmorItems[3].tag.display.Lore[0]
tag @e[type=wither_skeleton,tag=yf_new_clone] remove yf_new_clone
