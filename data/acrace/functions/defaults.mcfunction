# ACRACE defaults


# general timings
scoreboard players set period internal -1

# extras
scoreboard players set cut_clean global 1
scoreboard players set speed_uhc global 1

# world
worldborder set 10
gamerule announceAdvancements false
gamerule playersSleepingPercentage 25
effect clear @a
gamemode adventure @a[gamemode=!spectator]


# hide point gain
scoreboard players set hide_point_gain global 0
# win time
## 2400 = 40 min
scoreboard players set end_time global 2400


# initialise achievements
function acrace:load_achievements


scoreboard players set defaults internal 1