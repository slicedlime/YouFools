function youfools:wither_phase

execute if score $Event YouFools matches 1 run function youfools:check_event

execute unless entity @e[type=wither,tag=yf_lord] run function youfools:won
