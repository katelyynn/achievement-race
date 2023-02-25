# ACRACE /reload


# scoreboards
scoreboard objectives add global dummy
scoreboard objectives add internal dummy
scoreboard objectives add last_login dummy

# open setup
scoreboard objectives add setup trigger
## pages
scoreboard objectives add setup.page dummy
scoreboard objectives add setup.page_display dummy

# track score
scoreboard objectives add score dummy ["",{"text":"[","color":"dark_gray"},{"text":"⭐","color":"green"},{"text":"]","color":"dark_gray"}]
scoreboard objectives setdisplay sidebar score

# temp scoreboard for calculations
scoreboard objectives add score.temp dummy

# scoreboard to track points to be earned
## as achievements have seperate points, the value
## is temporarily stored here for calculations
scoreboard objectives add achievement.claiming_points dummy

# scoreboard to track achievement claim count
scoreboard objectives add achievement.claims dummy
scoreboard objectives add achievement.taken dummy

# scoreboard to track achievement values
## used to apply multipliers
scoreboard objectives add achievement.values dummy

# trigger to display multipliers
scoreboard objectives add multipliers trigger

# bossbar
bossbar add acrace:main ""
bossbar set acrace:main color green

# teams
## admin, excludes gamemode-lock
team add admin

# defaults
execute unless score defaults internal matches 1.. run function acrace:defaults