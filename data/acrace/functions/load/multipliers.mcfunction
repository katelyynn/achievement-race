# ACRACE load multipliers


#> TODO: hardcode different values (eg. if amount = 8, run with limit=8)

# pick random
tag @e[tag=achievement] remove multiplied
tag @e[tag=achievement,sort=random,limit=6] add multiplied

# multiply values
execute as @e[tag=achievement,tag=multiplied] run scoreboard players operation @s achievement.values *= multiplier global

execute as @a at @s run function acrace:load/multipliers_show