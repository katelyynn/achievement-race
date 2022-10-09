# ACRACE load multipliers


# pick random
tag @e[tag=achievement] remove multiplied

# based on value
execute if score multiplied_achievements global matches ..1 run tag @e[tag=achievement,sort=random,limit=1] add multiplied
execute if score multiplied_achievements global matches 2 run tag @e[tag=achievement,sort=random,limit=2] add multiplied
execute if score multiplied_achievements global matches 3 run tag @e[tag=achievement,sort=random,limit=3] add multiplied
execute if score multiplied_achievements global matches 4 run tag @e[tag=achievement,sort=random,limit=4] add multiplied
execute if score multiplied_achievements global matches 5 run tag @e[tag=achievement,sort=random,limit=5] add multiplied
execute if score multiplied_achievements global matches 6 run tag @e[tag=achievement,sort=random,limit=6] add multiplied
execute if score multiplied_achievements global matches 7 run tag @e[tag=achievement,sort=random,limit=7] add multiplied
execute if score multiplied_achievements global matches 8 run tag @e[tag=achievement,sort=random,limit=8] add multiplied
execute if score multiplied_achievements global matches 9 run tag @e[tag=achievement,sort=random,limit=9] add multiplied
execute if score multiplied_achievements global matches 10 run tag @e[tag=achievement,sort=random,limit=10] add multiplied
execute if score multiplied_achievements global matches 11.. run tag @e[tag=achievement,sort=random,limit=11] add multiplied

# multiply values
execute as @e[tag=achievement,tag=multiplied] run scoreboard players operation @s achievement.values *= multiplier global

execute as @a at @s run function acrace:load/multipliers_show