tag @s add yf_this
tag @p[distance=..10,tag=!yf_this,gamemode=survival] add yf_that

execute if entity @p[tag=yf_that] run function youfools:attacks/proximity_spawn

tag @a[tag=yf_that] remove yf_that
tag @a[tag=yf_this] remove yf_this
