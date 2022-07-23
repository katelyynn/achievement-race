# ACRACE load multipliers


#> TODO: hardcode different values (eg. if amount = 8, run with limit=8)

# pick random
tag @e[tag=achievement] remove multiplied
tag @e[tag=achievement,sort=random,limit=6] add multiplied

# multiply values
execute as @e[tag=achievement,tag=multiplied] run scoreboard players operation @s achievement.values *= multiplier global

# announce
tellraw @a ["",{"text":"[","color":"dark_gray"},{"text":"⭐","color":"light_purple"},{"text":"] ","color":"dark_gray"},{"text":"The following achievements have been ","color":"yellow"},{"text":"x2 multiplied","color":"light_purple"},{"text":":","color":"yellow"},{"text":"\n- ","color":"gold"},{"selector":"@e[tag=achievement,tag=multiplied]","separator":"\n- ","color":"gold"}]