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
## forceload to ensure achievements are always loaded
forceload add 0 0


# hide point gain
scoreboard players set hide_point_gain global 0
# show scoreboard
scoreboard players set show_scoreboard global 1
# show score on actionbar
scoreboard players set show_score_actionbar global 1
# allow draw
## in the event that multiple players get the same score
## if disabled, one player is picked randomly
scoreboard players set allow_draw global 1
# win time
## 2700 = 45 min
scoreboard players set end_time global 2700

# lock achievements
## the first person to get an achievement is the ONLY
## person who can get the achievement, loosely similar
## to achievement hunt in a way
scoreboard players set lock_achievements global 0

# multipliers
## if enabled
scoreboard players set multipliers global 1
## base multiplier (2x)
scoreboard players set multiplier global 2
## multiplied achievement count
scoreboard players set multiplied_achievements global 6


# initialise achievements
## create scoreboards
function acrace:load/scores
## create stands
function acrace:load/create


scoreboard players set defaults internal 1