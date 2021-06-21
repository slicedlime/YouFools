# On load

scoreboard objectives add yf_behaviors dummy "Wither Behavior"

scoreboard objectives add YouFools dummy "You Fools Status"
scoreboard players add $State YouFools 0
scoreboard players set 72 YouFools 72
scoreboard objectives add Calc dummy "Calculations"
scoreboard objectives add Health dummy "Health"

scoreboard players set 2 Calc 2
scoreboard players set 256 Calc 256

team add noattack "Not Attacked"
team modify noattack collisionRule pushOtherTeams
team modify noattack friendlyFire false
