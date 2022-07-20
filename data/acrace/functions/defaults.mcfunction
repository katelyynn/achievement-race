# ACRACE defaults


# general timings
scoreboard players set period internal -1

# extras
scoreboard players set cut_clean global 1
scoreboard players set speed_uhc global 1

# world
worldborder set 10
gamerule doImmediateRespawn true
gamerule keepInventory false
effect clear @a
gamemode adventure @a[gamemode=!spectator]


# score
scoreboard players set score_increase global 10
# win time
## 2400 = 40 min
scoreboard players set end_time global 2400


scoreboard players set defaults internal 1