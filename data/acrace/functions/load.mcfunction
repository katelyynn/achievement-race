# ACRACE /reload


# scoreboards
scoreboard objectives add global dummy
scoreboard objectives add internal dummy
scoreboard objectives add last_login dummy

# track score
scoreboard objectives add score dummy ["",{"text":"[","color":"dark_gray"},{"text":"⭐","color":"green"},{"text":"]","color":"dark_gray"}]
scoreboard objectives setdisplay sidebar score
# temp scoreboard for calculations
scoreboard objectives add score.temp dummy
# scoreboard to track points to be earned
## as achievements have seperate points, the value
## is temporarily stored here for calculations
scoreboard objectives add achievement.claiming_points dummy
# scoreboard to track achievement values
## used to apply multipliers
scoreboard objectives add achievement.values dummy

# bossbar
bossbar add acrace:main ""
bossbar set acrace:main color green

# defaults
execute unless score defaults internal matches 1.. run function acrace:defaults