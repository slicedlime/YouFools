time set day
kill @e[type=wither,tag=yf_lord]
kill @e[type=area_effect_cloud,tag=yf_center]
kill @e[type=item]
scoreboard players set $State YouFools 0
reload
advancement revoke @a only youfools:combat/you_fools
